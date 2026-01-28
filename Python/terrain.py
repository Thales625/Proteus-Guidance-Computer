import numpy as np

class ProceduralTerrain:
    def __init__(self, seed=1, n_harmonics=5):
        self.harmonics = []
        
        rng = np.random.RandomState(seed)
        
        for _ in range(n_harmonics):
            A = rng.uniform(1., 1.05)      # Amplitude (Height)
            B = rng.uniform(0.05, 0.5)     # Frequency
            C = rng.uniform(0.0, 2*np.pi)  # Phase
            
            self.harmonics.append((A, B, C))

    def __call__(self, x):
        v = 0
        for A, B, C in self.harmonics:
            v += A * (np.sin(B * x + C) + 1)
        return v

    def get_deriv(self, x):
        v = 0
        for A, B, C in self.harmonics:
            v += A * B * np.cos(B * x + C)
        return v
