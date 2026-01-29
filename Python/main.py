import numpy as np

from universe import Universe
from celestial_body import CelestialBody
from vessel import Vessel
from engine import Engine
from rcs import RCSEngine
from part import Part

from utils import rotate_vec2, text_bar

### ENVIRONMENT

celestial_body = CelestialBody(
    gravity=1.62,
    terrain_seed=1,
    terrain_harmonics=2,
)

universe = Universe(celestial_body)

### VESSEL

MAX_SAFE_IMPACT_ENERGY_GEARS = 10e3

lunar_module = Vessel(
    position=np.array([11.0, 10.0]),
    velocity=np.array([0., -1.]),
    dry_mass=400.0,
    fuel_mass=1500.0,
    celestial_body=celestial_body,
    size=np.array([2.0, 3.5]),
    color="orange"
)

# engines
lunar_module.add_engine(0.,
    Engine(
        vessel_reference_frame=lunar_module.reference_frame,
        size=np.array([.4, .8]),
        max_thrust=5000.,
        isp=290,
        max_angle=np.radians(30.)
    )
)
lunar_module.add_engine(.55,
    Engine(
        vessel_reference_frame=lunar_module.reference_frame,
        size=np.array([.4, .7]),
        max_thrust=1000.0,
        isp=290,
        max_angle=np.radians(20.)
    )
)
lunar_module.add_engine(-.55,
    Engine(
        vessel_reference_frame=lunar_module.reference_frame,
        size=np.array([.4, .7]),
        max_thrust=1000.0,
        isp=290,
        max_angle=np.radians(20.)
    )
)

# rcs
lunar_module.add_rcs_engine(-1.3,
    RCSEngine(
        vessel_reference_frame=lunar_module.reference_frame,
        rotation=np.radians(0.),
        size=np.array([.3, .4]),
        max_thrust=2000.,
        isp=260,
    ),
    left=False
)
lunar_module.add_rcs_engine(-1.3,
    RCSEngine(
        vessel_reference_frame=lunar_module.reference_frame,
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
lunar_module.parts.append(Part(
    position=lunar_module.size*0.5,
    vertices=rotate_vec2([
        np.array([-w, -h1]),
        np.array([w, -h1]),
        np.array([w, h2]),
        np.array([-w, h2]),
    ], -angle),
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_GEARS,
    color=c,
    zorder=6,
    reference_frame=lunar_module.reference_frame
))

lunar_module.parts.append(Part(
    position=lunar_module.size*np.array([-0.5, 0.5]),
    vertices=rotate_vec2([
        np.array([-w, -h1]),
        np.array([w, -h1]),
        np.array([w, h2]),
        np.array([-w, h2]),
    ], angle),
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_GEARS,
    color=c,
    zorder=6,
    reference_frame=lunar_module.reference_frame
))

universe.vessels.append(lunar_module)

### CONTROL

time_to_ground = (-lunar_module.velocity[1] - np.sqrt(lunar_module.velocity[1]**2 - 2*celestial_body.gravity[1]*lunar_module.position[1])) / celestial_body.gravity[1]
search_spot = lunar_module.position[0] + lunar_module.velocity[0]*time_to_ground
search_radius = lunar_module.position[1]

# target_position = celestial_body.get_flat_spot(0, 1000)
target_position = celestial_body.get_flat_spot(search_spot-search_radius, search_spot+search_radius)

# find minimum Tgo
# from PDG import minimize_tgo
# Tgo = minimize_tgo(blue_ghost.position, target_position, blue_ghost.velocity, np.array([0, 0]), np.array([0, 0]), np.array([0, 0]), celestial_body.gravity, blue_ghost.available_thrust/blue_ghost.mass)
# print(f"COMPUTED TGO: {Tgo:.2f}")

### UI

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

    ax.scatter(*target_position, marker="x", color="red", label="Target landing")

def loop_func(ut):
    global text_ut

    text_ut.set_text(f"ut = {ut:.2f} s")
    text_fuel.set_text(f"fuel = [{text_bar(lunar_module.fuel_mass, lunar_module.fuel_capacity)}] | {lunar_module.fuel_mass:.2f} kg")

    return [text_ut, text_fuel]

universe.Simulate(setup_func, loop_func, dt=0.025)