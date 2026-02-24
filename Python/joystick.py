from serial import Serial
import struct

class Joystick:
    def __init__(self, port="/dev/ttyUSB0", baud_rate=9600):
        self.enabled = True
        try:
            self.serial_port = Serial(port, baud_rate, timeout=0.5)
        except Exception as err:
            print("Joystick ERR:", err)
            self.enabled = False

    def serial_write_to_esp(self, value):
        if isinstance(value, float):
            self.serial_port.write(struct.pack('<f', value))
        elif isinstance(value, int):
            self.serial_port.write(bytes([value]))

    def request_package(self):
        data = []
        
        self.serial_write_to_esp(0)
        raw_bytes = self.serial_port.read(4)
        if len(raw_bytes) == 4: data.append(struct.unpack('<f', raw_bytes)[0])
        else:
            data = [float(0.)]
            self.enabled = False
            print("Joystick: Timeouted!")

        self.serial_write_to_esp(1)
        raw_bytes = self.serial_port.read(4)
        if len(raw_bytes) == 4: data.append(struct.unpack('<f', raw_bytes)[0])
        else:
            data = [float(0.)]
            self.enabled = False
            print("Joystick: Timeouted!")

        print(data)

        return data
    
    def send_interval(self, interval):
        self.serial_write_to_esp(3)
        self.serial_write_to_esp(interval)