import numpy as np
from random import random

from reference_frame import ReferenceFrame
from shapes import Polygon
from plume import Plume

from utils import vec2_from_angle, get_torque

class RCSEngine:
    def __init__(self, vessel_reference_frame, position, rotation, size:float, max_thrust, isp, color="white") -> None:
        self.reference_frame = ReferenceFrame(rotation, position)

        self.shape = Polygon(
            vertices=[
                size*np.array([1.0, 1.0]),
                size*np.array([0.0, 0]),
                size*np.array([-1.0, 1.0]),
            ],
            color=color,
            zorder=6
        )
        self.shape.reference_frame = vessel_reference_frame

        self.has_fuel = True
        self.isp = isp
        self.exhaust_velocity = isp * 9.80665
        
        self.max_thrust = max_thrust
        self.max_torque = -get_torque(max_thrust*self.direction, self.position)
        
        # plume
        self.plume = Plume(
            vessel_reference_frame=vessel_reference_frame,
            nozzle_size=size,
            flame_length=3.5,
            color="gray"
        )
    
    def throttle(self, gimbal):
        if np.sign(self.max_torque) == np.sign(gimbal): return abs(gimbal)
        return 0

    def update(self, gimbal):
        # update plume
        throttle = self.throttle(gimbal)
        self.plume.set_scale(throttle + ((random()*0.1) if throttle > 0. else 0.))
    
    def draw(self):
        self.shape.draw(self.reference_frame())

        if self.has_fuel:
            self.plume.shape.enable()
            self.plume.draw(self.reference_frame())
        else:
            self.plume.shape.disable()

    @property
    def direction(self):
        return vec2_from_angle(self.reference_frame.rotation)
    
    @property
    def angle(self):
        return self.reference_frame.rotation

    @property
    def position(self):
        return self.reference_frame.translation
