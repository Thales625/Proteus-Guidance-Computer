from utils import clamp

class Control:
    def __init__(self) -> None:
        self.state = [
            0.0, # throttle
            0.0  # gimbal
        ]
    
    @property
    def throttle(self):
        return self.state[0]

    @throttle.setter
    def throttle(self, throttle):
        self.state[0] = clamp(throttle, 1., 0.)

    @property
    def gimbal(self):
        return self.state[1]

    @gimbal.setter
    def gimbal(self, gimbal):
        self.state[1] = clamp(gimbal, 1., -1.)

    def __setitem__(self, index, value):
        self.state[index] = clamp(value, 1., -index)
        # self.state[index] = clamp(value, 1., 0. if index==0 else -1.)

    def __str__(self):
        print(f"Throttle: {self.throttle:.2f} | Gimbal: {self.gimbal:.2f}")
