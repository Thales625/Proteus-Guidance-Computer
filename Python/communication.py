from serial import Serial
from threading import Thread
import struct

from pdg import PDG
from joystick import Joystick

class Communication:
    def __init__(self, vessel, port="/dev/tnt1", baud_rate=9600):
        self._vessel = vessel
        self.serial_port = Serial(port, baud_rate)
        self.joystick = Joystick()

    def serial_write(self, value):
        if isinstance(value, float):
            self.serial_port.write(struct.pack('<f', value))
        elif isinstance(value, int):
            self.serial_port.write(bytes([value]))

    def serial_reader(self): # Thread function
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

                    # print(f"-----====| RECEIVE [{hex(data)}] VERB: {verb} | NOUN: {noun} |====-----")

                    if verb == 0: # MCU request data
                        data_to_send = None

                        with self.state_lock:
                            if noun < 2:
                                data_to_send = self.state[noun] - self.target_position[noun]
                            elif 2 <= noun < len(self.state):
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
                                    data_to_send = self.body.gravity[1]
                                elif i==4: # fuel level
                                    data_to_send = (self.fuel_mass / self.fuel_capacity) * 100.
                                elif i==5: # situation
                                    data_to_send = self.situation()
                                elif i==6: # Tgo
                                    data_to_send = PDG.minimize_tgo(self.state[0:2] - self.target_position, self.state[2:4], self.body.gravity, self.available_thrust / self.mass)
                                    print(f"REQUESTED TGO: {data_to_send:.2f}")
                                else:
                                    print(f"ERROR: MCU request invalid noun({noun})")

                        self.serial_write(data_to_send)
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
                            with self.state_lock:
                                self.situation.uplink = not self.situation.uplink
                                for data_to_send in [self.state[0]-self.target_position[0], self.state[1]-self.target_position[1]] + list(self.state[2:]) + [self.available_thrust/self.mass, self.available_torque/self.moment_of_inertia, self.ut, self.situation()]:
                                    self.serial_write(data_to_send)
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

                    if verb == 3: # MCU communicate to JOYSTICK
                        if not self.joystick.enabled:
                            print(f"ERROR: Joystick is unavailable!")

                        if noun == 0: # request package
                            if self.joystick.enabled:
                                for joystick_data in self.joystick.request_package():
                                    self.serial_write(joystick_data)
                            else:
                                self.serial_write(0.0)
                                self.serial_write(0.0)
                        elif noun == 1: # send buzzer interval
                            if self.joystick.enabled:
                                interval = self.serial_port.read(1)
                                if len(interval) == 0:
                                    print("ERROR: MCU write invalid interval")
                                    continue
                                self.joystick.send_interval(interval[0])
                        continue

                    if verb == 4: # MCU trigger event
                        if noun == 0: # update landing target
                            self.update_landing_target()
                            continue
                        print(f"ERROR: MCU write invalid noun({noun})")
                        continue

            except Exception as err:
                print(f"CRITIAL ERROR: {err}")
                self.serial_port.reset_input_buffer() # clear buffer

    def start(self):
        self.serial_thread = Thread(target=self.serial_reader)
        self.serial_thread.daemon = True
        self.serial_thread.start()

    def __getattr__(self, name):
        return getattr(self._vessel, name)    