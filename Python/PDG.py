import numpy as np
from scipy.optimize import minimize_scalar

def compute_a0(S0, S, V0, V, t_go):
    return (6/t_go**2)*(S-S0) - (2/t_go)*(V+2*V0)

def compute_j0(S0, S, V0, V, t_go):
    return (12/t_go**3)*(S0-S) + (6/t_go**2)(V+V0)


def minimize_tgo(S0, S, V0, V, A0, A, g, max_a_eng):
    def max_aeng(t_go):
        x_2 = A0 / 2
        x_3 = (1/(2*t_go))*(A-3*A0) - (1/t_go**2)*(4*V+6*V0) + (10/t_go**3)*(S-S0)
        x_4 = (1/(2*t_go**2))*(-2*A+3*A0) + (1/t_go**3)*(7*V+8*V0) - (15/t_go**4)*(S-S0)
        x_5 = (1/(2*t_go**3))*(A-A0) - (3/t_go**4)*(V+V0) + (6/t_go**5)*(S-S0)

        negative_a_eng = lambda t: -np.linalg.norm(2*x_2 + 6*x_3*t + 12*x_4*t**2 + 20*x_5*t**3 - g)
        # negative_a_eng = lambda t: -(2*x_2 + 6*x_3*t + 12*x_4*t**2 + 20*x_5*t**3 - g).magnitude()

        return -minimize_scalar(negative_a_eng, bounds=(0, t_go)).fun
    
    min_tgo = 5
    max_tgo = 100
    dt_go = 1

    t_go = min_tgo

    while t_go < max_tgo:
        if max_aeng(t_go) - max_a_eng < 0.1: return t_go

        t_go += dt_go
    
    return max_tgo

if __name__ == "__main__":
    '''
    S0 = Vector2(500, 100)
    S  = Vector2(0, 0)
    V0 = Vector2(-5, 20)
    V  = Vector2(0, 0)
    A0 = Vector2(0, 0)
    A  = Vector2(1, 0)
    g  = Vector2(-9.81, 0)
    '''

    S0 = np.array([500, 100])
    S  = np.array([0, 0])
    V0 = np.array([-5, 20])
    V  = np.array([0, 0])
    A0 = np.array([0, 0])
    A  = np.array([1, 0])
    g  = np.array([-9.81, 0])
    max_a_eng = 30.0
    print(minimize_tgo(S0, S, V0, V, A0, A, g, max_a_eng))
