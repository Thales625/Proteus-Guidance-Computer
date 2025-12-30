import numpy as np

from universe import Universe
from celestial_body import CelestialBody
from terrain import Terrain
from vessel import Vessel
from engine import Engine
from rcs import RCSEngine
from part import Part

from utils import rotate_vec2, text_bar

celestial_body = CelestialBody(
    terrain_fun=Terrain.from_sine_wave(seed=42, n_harmonics=5),
    #terrain_fun=Terrain.from_file("terrain.npz"),
    gravity=1.62
)

universe = Universe(celestial_body)

# vessel
blue_ghost = Vessel(
    position=np.array([90.0, 300.0]),
    velocity=np.array([-6.0, -10.0]),
    # velocity=np.array([0.0, 0.0]),
    dry_mass=400.0,
    fuel_mass=1500.0,
    celestial_body=celestial_body,
    size=np.array([2.0, 3.5]),
    color="orange"
)

# engines
blue_ghost.add_engine(0.,
    Engine(
        vessel_reference_frame=blue_ghost.reference_frame,
        size=np.array([.4, .8]),
        max_thrust=5000.,
        isp=290,
        max_angle=np.radians(30.)
    )
)
blue_ghost.add_engine(.55,
    Engine(
        vessel_reference_frame=blue_ghost.reference_frame,
        size=np.array([.4, .7]),
        max_thrust=1000.0,
        isp=290,
        max_angle=np.radians(20.)
    )
)
blue_ghost.add_engine(-.55,
    Engine(
        vessel_reference_frame=blue_ghost.reference_frame,
        size=np.array([.4, .7]),
        max_thrust=1000.0,
        isp=290,
        max_angle=np.radians(20.)
    )
)

# rcs
blue_ghost.add_rcs_engine(-1.3,
    RCSEngine(
        vessel_reference_frame=blue_ghost.reference_frame,
        rotation=np.radians(0.),
        size=np.array([.3, .4]),
        max_thrust=2000.,
        isp=260,
    ),
    left=False
)
blue_ghost.add_rcs_engine(-1.3,
    RCSEngine(
        vessel_reference_frame=blue_ghost.reference_frame,
        rotation=np.radians(0.),
        size=np.array([.3, .4]),
        max_thrust=2000.,
        isp=260,
    ),
    left=True
)

# landing legs
w = 0.05
h1 = 0.05
h2 = 1.0
c = "yellow"
angle = np.pi/5
blue_ghost.parts.append(Part(
    position=blue_ghost.size*0.5,
    vertices=rotate_vec2([
        np.array([-w, -h1]),
        np.array([w, -h1]),
        np.array([w, h2]),
        np.array([-w, h2]),
    ], -angle),
    color=c,
    zorder=6,
    reference_frame=blue_ghost.reference_frame
))

blue_ghost.parts.append(Part(
    position=blue_ghost.size*np.array([-0.5, 0.5]),
    vertices=rotate_vec2([
        np.array([-w, -h1]),
        np.array([w, -h1]),
        np.array([w, h2]),
        np.array([-w, h2]),
    ], angle),
    color=c,
    zorder=6,
    reference_frame=blue_ghost.reference_frame
))

universe.vessels.append(blue_ghost)

### CONTROL

target_position = celestial_body.get_flat_spot(celestial_body.terrain.min_x, celestial_body.terrain.max_x)
# target_position = celestial_body.get_spot(blue_ghost.position[0] + blue_ghost.velocity[0]*10.)

celestial_body.offset = target_position

# find minimum Tgo
from PDG import minimize_tgo
Tgo = minimize_tgo(blue_ghost.position, np.array([0., 0.]), blue_ghost.velocity, np.array([0, 0]), np.array([0, 0]), np.array([0, 0]), celestial_body.gravity, blue_ghost.available_thrust/blue_ghost.mass)
# Tgo = minimize_tgo(blue_ghost.position, target_position, blue_ghost.velocity, np.array([0, 0]), np.array([0, 0]), np.array([0, 0]), celestial_body.gravity, blue_ghost.available_thrust/blue_ghost.mass)

print(f"COMPUTED TGO: {Tgo:.2f}")

text_ut = None
text_fuel = None

def setup_func(ax):
    global text_ut, text_fuel

    text_ut = ax.text(
        0.01, 0.99, "", transform=ax.transAxes,
        ha="left", va="top", fontweight="bold"
    )

    text_fuel = ax.text(
        0.01, 0.95, "", transform=ax.transAxes,
        ha="left", va="top", fontweight="bold"
    )

def loop_func(ut):
    global text_ut

    text_ut.set_text(f"ut = {ut:.2f} s")
    text_fuel.set_text(f"fuel = [{text_bar(blue_ghost.fuel_mass, blue_ghost.fuel_capacity)}] | {blue_ghost.fuel_mass:.2f} kg")

    return [text_ut, text_fuel]

universe.Simulate(setup_func, loop_func, blue_ghost.position, dt=0.01)
