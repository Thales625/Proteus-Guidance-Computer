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

    def serial_write(self, value):
        if isinstance(value, float):
            self.serial_port.write(struct.pack('<f', value))
        elif isinstance(value, int):
            self.serial_port.write(bytes([value]))

    def request(self, noun:int):
        data = []
        
        if noun == 0:
            self.serial_write(0)
            raw_bytes = self.serial_port.read(4)
            if len(raw_bytes) == 4: data.append(struct.unpack('<f', raw_bytes)[0])
            else:
                data = [float(0.)]
                print("Joystick: Timeouted!")

            self.serial_write(1)
            raw_bytes = self.serial_port.read(4)
            if len(raw_bytes) == 4: data.append(struct.unpack('<f', raw_bytes)[0])
            else:
                data = [float(0.)]
                print("Joystick: Timeouted!")
        else:
            data = [float(0.)]
            print("Joystick: Invalid noun!")
        
        print(data)

        return data