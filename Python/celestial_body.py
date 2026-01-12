import numpy as np
from scipy.optimize import minimize_scalar

class CelestialBody:
    def __init__(self, terrain_fun, gravity:float, offset=np.array([0., 0.])):
        self.terrain = terrain_fun # y(x)
        self.gravity = np.array([0., -gravity])
        self.offset = offset
    
    def get_point(self, x):
        # x -= self.offset[0]
        # return x, self.terrain(x)-self.offset[1]
        return x, self.terrain(x)

    def curve(self):
        x_arr = np.arange(self.terrain.min_x, self.terrain.max_x, 1.)
        return self.get_point(x_arr)

    def get_flat_spot(self, x_min, x_max):
        def slope_cost(x):
            dx = 0.1
            y1 = self.terrain(x - dx)
            y2 = self.terrain(x + dx)
            slope = (y2 - y1) / (2*dx)
            return np.abs(slope)

        res = minimize_scalar(slope_cost, bounds=(x_min, x_max), method='bounded')
        x_best = res.x
        y_best = self.terrain(x_best)

        return np.array([x_best, y_best])
