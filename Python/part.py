class Part:
    def __init__(self, shape, has_collision=True, max_safe_impact_energy=15e3, collision_func=lambda: None) -> None:
        self.shape = shape
        self.has_collision = has_collision
        self.max_safe_impact_energy = max_safe_impact_energy
        self.collision_func = collision_func
    
    def draw(self):
        self.shape.draw()
    
    def apply_collision_energy(self, energy:float):
        if energy > self.max_safe_impact_energy: self.shape.disable()