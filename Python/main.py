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

MAX_SAFE_IMPACT_ENERGY_CAPSULE = 2e3
MAX_SAFE_IMPACT_ENERGY_TANK = 5e3
MAX_SAFE_IMPACT_ENERGY_GEARS = 10e3

scale = 0.01

# tank
lunar_module = Vessel(
    position=np.array([0.0, 300.0]),
    velocity=np.array([10., 0.]),
    dry_mass=400.0,
    fuel_mass=2500.0,
    celestial_body=celestial_body,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_TANK,
    size=scale*np.array([410., 170.]),
    color="orange"
)

# capsule
lunar_module.parts.append(Part(
    position=np.array([0., 0.072]),
    vertices=[
        scale*np.array([80., -90.]),
        scale*np.array([152., -180.]),
        scale*np.array([152., -268.]),
        scale*np.array([135., -327.]),
        scale*np.array([83., -365.]),

        scale*np.array([-83., -365.]),
        scale*np.array([-135., -327.]),
        scale*np.array([-152., -268.]),
        scale*np.array([-152., -180.]),
        scale*np.array([-80., -90.]),

    ],
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_CAPSULE,
    color="gray",
    zorder=3,
    reference_frame=lunar_module.reference_frame
))

lunar_module.parts.append(Part(
    position=np.array([0., 0.]),
    vertices=[
        scale*np.array([-160., -225.]),
        scale*np.array([-200., -227.]),
        scale*np.array([-240., -188]),
        scale*np.array([-200., -92]),
    ],
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_CAPSULE,
    color=(0.75, 0.76, 0.72),
    zorder=3,
    reference_frame=lunar_module.reference_frame,
))
lunar_module.parts.append(Part(
    position=np.array([0., 0.]),
    vertices=[
        scale*np.array([35., -326.]),
        scale*np.array([65., -60.]),
        scale*np.array([-65., -60]),
        scale*np.array([-35., -326]),
    ],
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_CAPSULE,
    color=(0.75, 0.76, 0.72),
    zorder=3,
    reference_frame=lunar_module.reference_frame,
    has_collision=False
))

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
    zorder=8,
    reference_frame=lunar_module.reference_frame,
    collision_func=lambda: setattr(lunar_module.situation, "contact", True)
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
    zorder=8,
    reference_frame=lunar_module.reference_frame,
    collision_func=lambda: setattr(lunar_module.situation, "contact", True)
))

# engines
lunar_module.add_engine(0.,
    Engine(
        vessel_reference_frame=lunar_module.reference_frame,
        size=scale*np.array([64., 50.]),
        max_thrust=5000.,
        isp=290,
        # max_angle=np.radians(30.)
        max_angle=np.radians(6.)
    )
)

# rcs
rcs_pos_left = scale*np.array([162., -220.])
rcs_pos_right = scale*np.array([-162., -220.])
rcs_size = scale*np.array([10., 30.])
rcs_max_thrust = 2000.
rcs_isp = 260
lunar_module.add_rcs(
    RCSEngine(
        vessel_reference_frame=lunar_module.reference_frame,
        rotation=np.radians(0.),
        position=rcs_pos_right,
        size=rcs_size,
        max_thrust=rcs_max_thrust,
        isp=rcs_isp,
    )
)
lunar_module.add_rcs(
    RCSEngine(
        vessel_reference_frame=lunar_module.reference_frame,
        rotation=np.radians(90.),
        position=rcs_pos_right,
        size=rcs_size,
        max_thrust=rcs_max_thrust,
        isp=rcs_isp,
    )
)

lunar_module.add_rcs(
    RCSEngine(
        vessel_reference_frame=lunar_module.reference_frame,
        rotation=np.radians(180.),
        position=rcs_pos_right,
        size=rcs_size,
        max_thrust=rcs_max_thrust,
        isp=rcs_isp,
    )
)

lunar_module.add_rcs(
    RCSEngine(
        vessel_reference_frame=lunar_module.reference_frame,
        rotation=np.radians(0.),
        position=rcs_pos_left,
        size=rcs_size,
        max_thrust=rcs_max_thrust,
        isp=rcs_isp,
    )
)
lunar_module.add_rcs(
    RCSEngine(
        vessel_reference_frame=lunar_module.reference_frame,
        rotation=np.radians(-90.),
        position=rcs_pos_left,
        size=rcs_size,
        max_thrust=rcs_max_thrust,
        isp=rcs_isp,
    )
)

lunar_module.add_rcs(
    RCSEngine(
        vessel_reference_frame=lunar_module.reference_frame,
        rotation=np.radians(-180.),
        position=rcs_pos_left,
        size=rcs_size,
        max_thrust=rcs_max_thrust,
        isp=rcs_isp,
    )
)

# rcs cover
lunar_module.parts.append(Part(
    position=np.array([0., 0.]),
    vertices=[
        scale*np.array([-147., -240.]),
        scale*np.array([-171., -232.]),
        scale*np.array([-171., -208.]),
        scale*np.array([-147., -200.]),
    ],
    color="gray",
    zorder=7,
    reference_frame=lunar_module.reference_frame,
    has_collision=False
))
lunar_module.parts.append(Part(
    position=np.array([0., 0.]),
    vertices=[
        scale*np.array([147., -240.]),
        scale*np.array([171., -232.]),
        scale*np.array([171., -208.]),
        scale*np.array([147., -200.]),
    ],
    color="gray",
    zorder=7,
    reference_frame=lunar_module.reference_frame,
    has_collision=False
))

# rcs guide
lunar_module.parts.append(Part(
    position=np.array([0., 0.]),
    vertices=[
        scale*np.array([150., -188.]),
        scale*np.array([150., -70.]),
        scale*np.array([200., -71.]),
        scale*np.array([173., -188.]),
    ],
    color=(0.42, 0.42, 0.42),
    zorder=4,
    reference_frame=lunar_module.reference_frame,
    has_collision=False
))
lunar_module.parts.append(Part(
    position=np.array([0., 0.]),
    vertices=[
        scale*np.array([-150., -188.]),
        scale*np.array([-150., -70.]),
        scale*np.array([-200., -71.]),
        scale*np.array([-173., -188.]),
    ],
    color=(0.42, 0.42, 0.42),
    zorder=4,
    reference_frame=lunar_module.reference_frame,
    has_collision=False
))

universe.vessels.append(lunar_module)

### CONTROL

time_to_ground = (-lunar_module.velocity[1] - np.sqrt(lunar_module.velocity[1]**2 - 2*celestial_body.gravity[1]*lunar_module.position[1])) / celestial_body.gravity[1]
search_spot_x = lunar_module.position[0] + lunar_module.velocity[0]*time_to_ground
search_radius = max(100, abs(lunar_module.position[1]))

lunar_module.target_position = celestial_body.get_flat_spot(search_spot_x-search_radius, search_spot_x+search_radius)

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

    # ax.scatter(*lunar_module.target_position, marker="x", color="red", label="Planned landing site")

    ax.annotate(
        "Planned landing site",
        xy=lunar_module.target_position,
        xytext=(10, -50),
        ha="center",
        textcoords="offset points",
        arrowprops=dict(
            arrowstyle="->",
            color="red",
            linestyle="dashed"
        ),
        color="red"
    )

def loop_func(ut):
    global text_ut

    text_ut.set_text(f"ut = {ut:.2f} s")
    text_fuel.set_text(f"fuel = [{text_bar(lunar_module.fuel_mass, lunar_module.fuel_capacity)}] | {lunar_module.fuel_mass:.2f} kg")

    # lunar_module.control.gimbal = 1.0
    # lunar_module.control.throttle = 1.0

    return [text_ut, text_fuel]

universe.Simulate(setup_func, loop_func, dt=0.05)
