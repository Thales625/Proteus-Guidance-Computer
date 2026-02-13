import numpy as np

HALF_PI = 0.5 * np.pi
TWO_PI = 2.0 * np.pi

def clamp(v, _max, _min):
    if v > _max: return _max
    if v < _min: return _min
    return v

def sign(v):
    if v < 0.0: return -1.0
    return 1.0

# vector
def vec2_from_angle(radians):
    return np.array([-np.sin(radians), np.cos(radians)])

def angle_from_vec2(vec):
    return np.atan2(vec[0], -vec[1])

def rotate_vec2(vecs, radians):
    rot = np.array([
        [np.cos(radians), -np.sin(radians)],
        [np.sin(radians),  np.cos(radians)]
    ])

    vecs = np.asarray(vecs)

    if vecs.ndim == 1 and vecs.shape[0] == 2:
        return rot @ vecs
    elif vecs.ndim == 2 and vecs.shape[1] == 2:
        return vecs @ rot.T
    else:
        raise ValueError("invalid vec shape")

def normalized(vec):
    norm = np.linalg.norm(vec)

    if norm == 0: norm = 1e-3

    return vec / norm

def text_bar(value, max_value, width=10):
    filled = int(max(0.0, min(1.0, 0.0 if max_value <= 0 else value / max_value)) * width)

    return "█" * filled + "░" * (width - filled)

def get_torque(force, position): return force[0] * position[1] - force[1] * position[0]