import numpy as np

from universe import Universe
from celestial_body import CelestialBody
from vessel import Vessel
from engine import Engine
from rcs import RCSEngine
from part import Part
from shapes import Polygon, Line

from utils import rotate_vec2, text_bar

### ENVIRONMENT

celestial_body = CelestialBody(
    gravity=1.62,
    terrain_seed=1,
    terrain_harmonics=4,
)

universe = Universe(celestial_body)

### VESSEL

MAX_SAFE_IMPACT_ENERGY_CAPSULE = 2e3
MAX_SAFE_IMPACT_ENERGY_TANK = 5e3
MAX_SAFE_IMPACT_ENERGY_GEARS = 10e3
MAX_SAFE_IMPACT_ENERGY_STRUCTURE = 1e3

scale = 0.01

# tank
lunar_module = Vessel(
    # position=np.array([0.0, 30.0]),
    # velocity=np.array([5., 0.]),

    position=np.array([0.0, 5000.0]),
    velocity=np.array([100., -50.]),

    dry_mass=4_200.,
    fuel_mass=10_500.,
    celestial_body=celestial_body,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_TANK,
    size=scale*np.array([410., 170.]),
    color="orange"
)

# capsule
lunar_module.add_part(Part(
    shape=Polygon(
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
        ] + np.array([0., 0.072]),
        color="gray",
        zorder=3,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=True,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_CAPSULE,
))
lunar_module.add_part(Part(
    shape=Polygon(
        vertices=[
            scale*np.array([-160., -225.]),
            scale*np.array([-200., -227.]),
            scale*np.array([-240., -188]),
            scale*np.array([-200., -92]),
        ],
        color=(0.75, 0.76, 0.72),
        zorder=3,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=False
))
lunar_module.add_part(Part(
    shape=Polygon(
        vertices=[
            scale*np.array([35., -326.]),
            scale*np.array([65., -60.]),
            scale*np.array([-65., -60]),
            scale*np.array([-35., -326]),
        ],
        color=(0.75, 0.76, 0.72),
        zorder=3,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=False
))

# landing legs
w = 0.07
h1 = 0.05
h2 = 2.5
c = "yellow"
angle = np.pi/12.
lunar_module.add_part(Part(
    shape=Polygon(
        vertices=rotate_vec2([
            np.array([-w, -h1]),
            np.array([w, -h1]),
            np.array([w, h2]),
            np.array([-w, h2]),
        ], -angle) + lunar_module.size*np.array([0.65, -0.2]),
        color=c,
        zorder=8,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=True,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_GEARS,
    collision_func=lambda: setattr(lunar_module.situation, "contact", True)
))
lunar_module.add_part(Part(
    shape=Polygon(
        vertices=rotate_vec2([
            np.array([-w, -h1]),
            np.array([w, -h1]),
            np.array([w, h2]),
            np.array([-w, h2]),
        ], angle) + lunar_module.size*np.array([-0.65, -0.2]),
        color=c,
        zorder=8,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=True,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_GEARS,
    collision_func=lambda: setattr(lunar_module.situation, "contact", True)
))

# landing legs support
lunar_module.add_part(Part(
    shape=Line(
        start=lunar_module.size*np.array([-0.5, -0.5]),
        end=lunar_module.size*np.array([-0.65, -0.2]),
        color="black",
        linewidth=1.5,
        zorder=2,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=True,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_STRUCTURE
))
lunar_module.add_part(Part(
    shape=Line(
        start=lunar_module.size*np.array([0.5, -0.5]),
        end=lunar_module.size*np.array([0.65, -0.2]),
        color="black",
        linewidth=1.5,
        zorder=2,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=True,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_STRUCTURE
))

lunar_module.add_part(Part(
    shape=Line(
        start=lunar_module.size*np.array([-0.5, 0.1]),
        end=lunar_module.size*np.array([-0.65, -0.2]),
        color="black",
        linewidth=1.5,
        zorder=2,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=True,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_STRUCTURE
))
lunar_module.add_part(Part(
    shape=Line(
        start=lunar_module.size*np.array([0.5, 0.1]),
        end=lunar_module.size*np.array([0.65, -0.2]),
        color="black",
        linewidth=1.5,
        zorder=2,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=True,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_STRUCTURE
))

lunar_module.add_part(Part(
    shape=Line(
        start=lunar_module.size*np.array([0.5, 0.5]),
        end=rotate_vec2(np.array([0., h2*0.8]), -angle) + lunar_module.size*np.array([0.65, -0.2]),
        color="black",
        linewidth=1.5,
        zorder=2,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=True,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_STRUCTURE
))
lunar_module.add_part(Part(
    shape=Line(
        start=lunar_module.size*np.array([-0.5, 0.5]),
        end=rotate_vec2(np.array([0., h2*0.8]), angle) + lunar_module.size*np.array([-0.65, -0.2]),
        color="black",
        linewidth=1.5,
        zorder=2,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=True,
    max_safe_impact_energy=MAX_SAFE_IMPACT_ENERGY_STRUCTURE
))

# engines
lunar_module.add_engine(0.,
    Engine(
        vessel_reference_frame=lunar_module.reference_frame,
        size=scale*np.array([64., 50.]),
        max_thrust=43_900.,
        isp=311,
        # max_angle=np.radians(45.)
        max_angle=np.radians(6.)
    )
)

# rcs
rcs_pos_left = scale*np.array([162., -220.])
rcs_pos_right = scale*np.array([-162., -220.])
rcs_size = scale*np.array([10., 30.])
rcs_max_thrust = 500.
rcs_isp = 290
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
lunar_module.add_part(Part(
    shape=Polygon(
        vertices=[
            scale*np.array([147., -240.]),
            scale*np.array([171., -232.]),
            scale*np.array([171., -208.]),
            scale*np.array([147., -200.]),
        ],
        color="gray",
        zorder=7,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=False
))
lunar_module.add_part(Part(
    shape=Polygon(
        vertices=[
            scale*np.array([-147., -240.]),
            scale*np.array([-171., -232.]),
            scale*np.array([-171., -208.]),
            scale*np.array([-147., -200.]),
        ],
        color="gray",
        zorder=7,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=False
))

# rcs guide
lunar_module.add_part(Part(
    shape=Polygon(
        vertices=[
            scale*np.array([150., -188.]),
            scale*np.array([150., -70.]),
            scale*np.array([200., -71.]),
            scale*np.array([173., -188.]),
        ],
        color=(0.42, 0.42, 0.42),
        zorder=4,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=False
))
lunar_module.add_part(Part(
    shape=Polygon(
        vertices=[
            scale*np.array([-150., -188.]),
            scale*np.array([-150., -70.]),
            scale*np.array([-200., -71.]),
            scale*np.array([-173., -188.]),
        ],
        color=(0.42, 0.42, 0.42),
        zorder=4,
        reference_frame=lunar_module.reference_frame
    ),
    has_collision=False
))

universe.vessels.append(lunar_module)

### TARGET DESIGNATION

time_to_ground = (-lunar_module.velocity[1] - np.sqrt(lunar_module.velocity[1]**2 - 2*celestial_body.gravity[1]*lunar_module.position[1])) / celestial_body.gravity[1]
search_spot_x = lunar_module.position[0] + lunar_module.velocity[0]*time_to_ground
search_radius = 50
# search_radius = max(100, abs(lunar_module.position[1]))

lunar_module.target_position = celestial_body.get_flat_spot(search_spot_x-search_radius, search_spot_x+search_radius)

### UI

text_ut = None
text_fuel = None

print("AV ACC ANG:", (180/3.1415)*(lunar_module.available_torque/lunar_module.moment_of_inertia))

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
