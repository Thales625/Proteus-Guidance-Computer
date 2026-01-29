import numpy as np

from threading import Lock
from enum import IntEnum

from control import Control
from reference_frame import ReferenceFrame
from shapes import Polygon
from solver import RK4
from communication import Communication

from utils import vec2_from_angle, rotate_vec2

RESTITUTION = 0.2
FRICTION_COEF = 0.9

class Situation(IntEnum):
    FLYING = 0
    LANDED = 1
    SPLASHED = 2
  
def get_torque(force, position): return force[0] * position[1] - force[1] * position[0]

class Vessel:
    def __init__(self, position, velocity, dry_mass, fuel_mass, celestial_body, max_safe_impact_energy=10e3, moi=None, size=np.array([20., 80.]), color="gray", port="/dev/tnt1", baud_rate=9600) -> None:
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

        self.max_safe_impact_energy = max_safe_impact_energy
        self.target_position = np.array([0., 0.])

        # Serial communication
        self.state_lock = Lock()
        self.control_lock = Lock()
        self.communication = Communication(self, port, baud_rate)

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

        self.communication.start()

    def check_ground_collision(self):
        for part in [self, *self.parts]:
            if not part.shape.artist.get_visible(): continue

            for local_vertex in part.shape.local_vertices:
                vertex = self.reference_frame.transform_position_to_global(local_vertex)
                ground_height = self.body.terrain(vertex[0])

                if vertex[1] <= ground_height:
                    dy = self.body.terrain.get_deriv(vertex[0])
                    tangent = np.array([1, dy])*(1/np.sqrt(1+dy**2))

                    yield {
                        "part": part,
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

    def apply_collision_energy(self, energy:float):
        if energy > self.max_safe_impact_energy:
            print("CRITICAL DAMAGE!")

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
        # linear velocity
        self.velocity += impulse / self.mass
            
        # angular velocity
        r = point_global - self.position
        torque_impulse = r[0] * impulse[1] - r[1] * impulse[0]
        self.angular_velocity += torque_impulse / self.moment_of_inertia

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
                m_eff_n = 1. / (inv_mass + inv_moi * r_cross_n**2)
                jn_elastic = -vel_normal * m_eff_n
                jn_mag = (1.-RESTITUTION) * jn_elastic
                impulse_n = jn_mag * normal
                absorbed_energy = (1. - RESTITUTION**2) * (jn_elastic**2 / (2. * m_eff_n))
                
                # tangent
                r_cross_t = r_vec[0] * tangent[1] - r_vec[1] * tangent[0]
                jt_mag = -vel_tangent / (inv_mass + inv_moi*r_cross_t**2)

                max_friction = jn_mag * FRICTION_COEF
                jt_mag = np.clip(jt_mag, -max_friction, max_friction)
  
                impulse_t = jt_mag * tangent

                self.add_impulse_at(impulse_n + impulse_t, info["point_global"])

                info["part"].apply_collision_energy(absorbed_energy)

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
