import numpy as np

from serial import Serial
from threading import Thread, Lock
import struct
from enum import IntEnum

from control import Control
from reference_frame import ReferenceFrame
from shapes import Polygon
from solver import RK4

from utils import vec2_from_angle, rotate_vec2

RESTITUION = 1.2
FRICTION_COEF = 0.9

class Situation(IntEnum):
    FLYING = 0
    LANDED = 1
    SPLASHED = 2
  
def get_torque(force, position): return force[0] * position[1] - force[1] * position[0]

class Vessel:
    def __init__(self, position, velocity, dry_mass, fuel_mass, celestial_body, moi=None, size=np.array([20., 80.]), color="gray", port="/dev/tnt1", baud_rate=9600) -> None:
        self.situation = Situation.FLYING

        self.state = np.array([
            *position, # position
            *velocity, # velocity
            np.pi,     # angle
            0.,        # angular velocity
        ])

        self.ut = 0.0

        self.force = np.array([0., 0.])
        self.torque = 0.

        self.dry_mass = dry_mass
        self.fuel_mass = fuel_mass
        self.fuel_capacity = fuel_mass

        self.moment_of_inertia = moi or (.25 * self.mass * size.dot(size)) # moi approximation

        self.available_thrust = 0.
        self.available_torque = 0.

        self.body = celestial_body

        # Serial communication
        self.serial_port = Serial(port, baud_rate)

        self.state_lock = Lock()
        self.control_lock = Lock()

        def serial_reader(): # Thread function
            print("Starting serial communication...")
            while True:
                try:
                    if self.serial_port.in_waiting > 0:
                        cmd_byte = self.serial_port.read(1)

                        if len(cmd_byte) == 0: continue

                        data = cmd_byte[0]
                        
                        if data == 0xFE: # DEBUG Byte
                            print(f"DEBUG Byte = {self.serial_port.read(1)[0]}")
                            continue
                        elif data == 0xFD: # DEBUG Float
                            float_value = struct.unpack('<f', self.serial_port.read(4))[0]
                            print(f"DEBUG Float = {float_value:.4f}")
                            continue

                        verb = (data & 0xF0) >> 4
                        noun =  data & 0x0F

                        # print(f"\n-----====| RECEIVE [{hex(data)}] VERB: {verb} | NOUN: {noun} |====-----")

                        if verb == 0: # MCU request data
                            data_to_send = None

                            with self.state_lock:
                                if 0 <= noun < len(self.state):
                                    data_to_send = self.state[noun]
                                else:
                                    i = noun - len(self.state)
                                    if i==0: # av accel
                                        data_to_send = self.available_thrust / self.mass
                                    elif i==1: # av accel ang
                                        data_to_send = self.available_torque / self.moment_of_inertia
                                    elif i==2: # ut
                                        data_to_send = self.ut
                                    elif i==3: # gravity y
                                        data_to_send = celestial_body.gravity[1]
                                    elif i==4: # fuel level
                                        data_to_send = (self.fuel_mass / self.fuel_capacity) * 100
                                    elif i==5: # situation
                                        data_to_send = self.situation.value
                                    else:
                                        print(f"ERROR: MCU request invalid noun({noun})")

                            self.SerialWrite(data_to_send)

                            continue

                        if verb == 1: # MCU send data
                            raw_bytes = self.serial_port.read(4)
                            if len(raw_bytes) == 4:
                                float_value = struct.unpack('<f', raw_bytes)[0]
                                
                                if 0 <= noun < len(self.control.state):
                                    with self.control_lock:
                                        self.control[noun] = float_value
                                        # print(f"\t MCU SEND DATA: Idx {noun} = {float_value:.4f}")
                                        print(f"Control[{noun}] = {float_value:.4f}")
                                else:
                                    print(f"ERROR: MCU write invalid noun({noun})")
                            else:
                                print("ERROR: Insuficient byte for float operation")
                            continue

                        if verb == 2: # MCU request/send PACKAGE
                            if noun == 0: # request
                                with self.control_lock:
                                    for data_to_send in [self.ut] + list(self.state) + [self.available_thrust/self.mass, self.available_torque/self.moment_of_inertia, self.situation.value]:
                                        self.SerialWrite(data_to_send)
                                continue

                            if noun == 1: # send
                                with self.control_lock:
                                    for i in range(2):
                                        raw_bytes = self.serial_port.read(4)
                                        if len(raw_bytes) == 4:
                                            float_value = struct.unpack('<f', raw_bytes)[0]
                                            self.control[i] = float_value
                                            # print(f"Control[{i}] = {float_value:.4f}")
                                        else:
                                            print("ERROR: Insuficient byte for float operation")
                                continue
                            print(f"ERROR: MCU write invalid noun({noun})")
                            continue
                                        

                except Exception as err:
                    print(f"CRITIAL ERROR: {err}")
                    self.serial_port.reset_input_buffer() # clear buffer

        self.serial_thread = Thread(target=serial_reader)
        self.serial_thread.daemon = True
        self.serial_thread.start()

        self.reference_frame = ReferenceFrame(self.angle, self.position)

        # shape
        self.size = size
        self.shape = Polygon(
            vertices=[
                self.size*np.array([.5, .5]),
                self.size*np.array([-.5, .5]),
                self.size*np.array([-.5, -.5]),
                self.size*np.array([.5, -.5])
            ],
            color=color,
            zorder=5
        )

        self.engines = []
        self.rcs_engines = []
        self.parts = []

        self.control = Control()

        # solver
        def dSdt(S, t):
            x, y, vx, vy, theta, omega = S

            # angular
            accel_ang = self.torque / self.moment_of_inertia
            
            # linear
            accel_x, accel_y = self.force / self.mass + self.body.gravity
            
            return np.array([
                vx,        # dx/dt
                vy,        # dy/dt
                accel_x,   # dvx/dt
                accel_y,   # dvy/dt
                omega,     # dθ/dt
                accel_ang  # dω/dt
            ])

        self.solver = RK4(dSdt)
    
    def SerialWrite(self, value):
        if isinstance(value, float):
            self.serial_port.write(struct.pack('<f', value))
        elif isinstance(value, int):
            self.serial_port.write(bytes([value]))

    def check_ground_collision(self):
        vertices = list(self.shape.local_vertices)
        # for e in self.engines: vertices += list(e.shape.local_vertices)
        # for e in self.rcs_engines: vertices += list(e.shape.local_vertices)
        for p in self.parts: vertices += list(p.shape.local_vertices)

        for local_vertex in vertices:
            vertex = self.reference_frame.transform_position_to_global(local_vertex)
            ground_height = self.body.terrain(vertex[0])

            if vertex[1] <= ground_height:
                dy = self.body.terrain.get_deriv(vertex[0])
                tangent = np.array([1, dy])*(1/np.sqrt(1+dy**2))

                yield {
                    "normal": np.array([-tangent[1], tangent[0]]),
                    "tangent": tangent,
                    "point_global": vertex,
                    "ground_height": ground_height
                }

    @property
    def position(self):
        with self.state_lock:
            return np.copy(self.state[0:2])
    @position.setter
    def position(self, value):
        with self.state_lock:
            self.state[0] = value[0]
            self.state[1] = value[1]

    @property
    def velocity(self):
        with self.state_lock:
            return np.copy(self.state[2:4])
    @velocity.setter
    def velocity(self, value):
        with self.state_lock:
            self.state[2] = value[0]
            self.state[3] = value[1]

    @property
    def angle(self):
        with self.state_lock:
            return self.state[4]
    @angle.setter
    def angle(self, value):
        with self.state_lock:
            self.state[4] = value

    @property
    def angular_velocity(self):
        with self.state_lock:
            return self.state[5]
    @angular_velocity.setter
    def angular_velocity(self, value):
        with self.state_lock:
            self.state[5] = value

    @property
    def mass(self):
        return self.dry_mass + self.fuel_mass

    def add_engine(self, x_offset, engine):
        engine.position = self.size*np.array([0., .5]) + np.array([x_offset, 0.])
        self.engines.append(engine)

        self.update_forces()

    def add_rcs_engine(self, y_offset, rcs, left=True):
        rcs.reference_frame.translation = self.size*np.array([.5 if left else -.5, 0.]) + np.array([0., y_offset])

        rcs.reference_frame.rotation += np.radians(90.)
        if left: rcs.reference_frame.rotation += np.pi

        rcs.direction = vec2_from_angle(rcs.reference_frame.rotation)

        self.rcs_engines.append(rcs)

        self.update_forces()

    def add_impulse_at(self, impulse, point_global):
        with self.state_lock:
            # linear velocity
            delta_v = impulse / self.mass
            self.state[2] += delta_v[0] # vx
            self.state[3] += delta_v[1] # vy
            
        # torque
        r = point_global - self.position
        torque_impulse = r[0] * impulse[1] - r[1] * impulse[0]

        with self.state_lock: self.state[5] += torque_impulse / self.moment_of_inertia

    def get_velocity_at(self, point_global):
        v_com = self.velocity
        omega = self.angular_velocity
        r = point_global - self.position

        # tangencial velocity at point
        v_tan = np.array([-omega * r[1], omega * r[0]])
        
        return v_com + v_tan

    def update_forces(self):
        self.available_thrust = 0.
        self.available_torque = 0.
        for engine in self.engines:
            self.available_thrust += engine.max_thrust
            self.available_torque += get_torque(vec2_from_angle(engine.max_angle) * engine.max_thrust, engine.position)

        for rcs_engine in self.rcs_engines:
            force = rcs_engine.direction * rcs_engine.max_thrust

            self.available_thrust += force[1]
            self.available_torque += get_torque(force, rcs_engine.reference_frame.translation)

        self.available_torque = abs(self.available_torque)

    def update(self, dt, ut):
        with self.state_lock: self.ut = ut

        with self.control_lock:
            gimbal = self.control.gimbal
            throttle = self.control.throttle

        # update engines
        for engine in self.engines:
            # control 
            engine.angle = 0.9*engine.angle + 0.1*gimbal * engine.max_angle # smooth
            # engine.angle = gimbal * engine.max_angle

            engine.direction = -vec2_from_angle(self.angle + engine.angle)
            engine.update(throttle)
        
        # update rcs
        for rcs in self.rcs_engines:
            rcs.update(gimbal)

        # update vessel
        self.force = np.array([0., 0.])
        self.torque = 0.

        if self.fuel_mass > 0:
            for engine in self.engines:
                f = engine.max_thrust * self.control.throttle
                self.force += f * engine.direction
                self.torque += get_torque(f * vec2_from_angle(engine.angle), engine.position)

                self.fuel_mass -= f/engine.exhaust_velocity
                engine.has_fuel = True

            for rcs_engine in self.rcs_engines:
                f = rcs_engine.max_thrust * rcs_engine.throttle(self.control.gimbal)
                self.force -= f * rotate_vec2(rcs_engine.direction, self.angle)
                self.torque += get_torque(f*rcs_engine.direction, rcs_engine.reference_frame.translation)

                self.fuel_mass -= f/engine.exhaust_velocity
                rcs_engine.has_fuel = True

            if self.fuel_mass < 0:
                for engine in self.engines + self.rcs_engines: engine.has_fuel = False

                self.fuel_mass = 0

        # step ivp
        with self.state_lock: new_state = self.state.copy()
        new_state += self.solver.step(new_state, ut, dt)
        with self.state_lock: self.state = new_state.copy()

        # check ground collision
        hits = self.check_ground_collision()

        for info in hits:

            r_vec = info["point_global"] - self.position
            point_vel = self.get_velocity_at(info["point_global"])
            normal = info["normal"]
            tangent = info["tangent"]

            vel_normal = np.dot(point_vel, normal)
            vel_tangent = np.dot(point_vel, tangent)

            if vel_normal < 0.:
                inv_mass = 1. / self.mass
                inv_moi = 1. / self.moment_of_inertia
                
                # normal
                r_cross_n = r_vec[0] * normal[1] - r_vec[1] * normal[0]
                jn_mag = (-RESTITUION * vel_normal) / (inv_mass + inv_moi*r_cross_n**2)
                impulse_n = jn_mag * normal
                
                # tangent
                r_cross_t = r_vec[0] * tangent[1] - r_vec[1] * tangent[0]
                jt_mag = -vel_tangent / (inv_mass + inv_moi*r_cross_t**2)

                max_friction = jn_mag * FRICTION_COEF
                jt_mag = np.clip(jt_mag, -max_friction, max_friction)
  
                impulse_t = jt_mag * tangent

                self.add_impulse_at(impulse_n + impulse_t, info["point_global"])

                # prevent ground stuck
                penetration_depth = info["ground_height"] - info["point_global"][1]

                self.position += (0.8*penetration_depth/normal[1]) * normal
                    
        # update reference frame
        self.reference_frame.rotation = self.angle
        self.reference_frame.translation = self.position

		# clamp
        self.angle = (self.angle + np.pi) % (2*np.pi) - np.pi

    def draw(self):
        transform = self.reference_frame()

        self.shape.draw(transform)

        for engine in self.engines:
            engine.draw()

        for rcs_engine in self.rcs_engines:
            rcs_engine.draw()

        for part in self.parts:
            part.draw()
