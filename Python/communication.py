import serial
import threading
import queue
from time import sleep

def serial_reader(ser_port, data_queue):
    while True:
        if ser_port.in_waiting > 0:
            data = ser_port.read(ser_port.in_waiting)
            data_queue.put(data)
        sleep(0.01)

ser = serial.Serial('/dev/tnt1', 9600, timeout=0.1)
data_queue = queue.Queue()

reader_thread = threading.Thread(target=serial_reader, args=(ser, data_queue))
reader_thread.daemon = True
reader_thread.start()

try:
    while True:
        if not data_queue.empty():
            received_data = data_queue.get()
            print(f"Main program received: {received_data.decode()}")

        sleep(0.1)
except KeyboardInterrupt:
    print("Main program exiting...")
finally:
    ser.close()
