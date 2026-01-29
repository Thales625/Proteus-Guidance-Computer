from shapes import Polygon

class Part:
    def __init__(self, position, vertices, color, max_safe_impact_energy=15e3, zorder=6, reference_frame=None) -> None:
        self.shape = Polygon(
            vertices=vertices+position,
            color=color,
            zorder=zorder,
            reference_frame=reference_frame
        )

        self.max_safe_impact_energy = max_safe_impact_energy
    
    def draw(self):
        self.shape.draw()
    
    def apply_collision_energy(self, energy:float):
        print(f"ENERGY: {energy:.2f}")

        if energy > self.max_safe_impact_energy: self.shape.disable()