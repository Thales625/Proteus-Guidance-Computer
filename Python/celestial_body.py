import numpy as np
from scipy.optimize import minimize_scalar

from terrain import ProceduralTerrain

class CelestialBody:
    def __init__(self, gravity:float, terrain_seed=1, terrain_harmonics=5):
        self.gravity = np.array([0., -gravity])
        self.terrain = ProceduralTerrain(terrain_seed, terrain_harmonics)

    def get_flat_spot(self, x_min, x_max):
        def slope_cost(x): return np.abs(self.terrain.get_deriv(x))

        res = minimize_scalar(slope_cost, bounds=(x_min, x_max), method='bounded')
        x_best = res.x
        y_best = self.terrain(x_best)

        return np.array([x_best, y_best])
