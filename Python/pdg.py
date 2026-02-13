import numpy as np

class PDG: # 4th order
    @staticmethod
    def compute_a(S0, V0, t_go):
        return -((6/t_go)*V0 + (12/t_go**2)*S0)

    @staticmethod
    def compute_j(S0, V0, t_go):
        return (18/t_go**2)*V0 + (48/t_go**3)*S0

    @staticmethod
    def compute_q(S0, V0, t_go):
        return -((24/t_go**3)*V0 + (72/t_go**4)*S0)


    @staticmethod
    def pitch(a, g):
        a_eng = a - g
        return (180/3.14159) * np.acos(g.dot(a_eng) / np.sqrt(g.dot(g)*a_eng.dot(a_eng))) - 90

    @staticmethod
    def angular_velocity(a, j, g):
        a_eng = a - g
        return -(180/3.14159) * (np.dot(g, j) - np.dot(g, a_eng)*np.dot(a_eng, j)/np.dot(a_eng, a_eng)) / np.sqrt(np.dot(g, g)*np.dot(a_eng, a_eng) - np.dot(g, a_eng)**2)

    @staticmethod
    def constraints(g, max_a_eng, s, v, a, w, pitch):
        if np.linalg.norm(a-g) > max_a_eng: return False # max thrust constraint
        if np.dot(s, -g / np.linalg.norm(g)) < 0: return False # ground collision constraint
        if abs(w) > 10: return False # angular velocity constraint
        if pitch < 45: return False # pitch constraint
        # if v.magnitude() > 30: return False # speed constraint

        return True

    @staticmethod
    def minimize_tgo(S0, V0, g, max_a_eng):
        # min tgo (avoid points down & thrust limits)
        min_tgo_by_thrust = PDG.min_tgo_by_thrust(S0, V0, g, max_a_eng)
        min_tgo_avoid_down = PDG.min_tgo_avoid_down(S0, V0, g)

        min_tgo = []
        if min_tgo_by_thrust: min_tgo.append(min_tgo_by_thrust)
        if min_tgo_avoid_down: min_tgo.append(min_tgo_avoid_down)

        if min_tgo: min_tgo = max(min_tgo)
        else: min_tgo = 5

        # max tgo (avoid ground collision)
        max_tgo = PDG.max_tgo_avoid_collision(S0, V0, g)

        if max_tgo is None or max_tgo <= min_tgo: max_tgo = min_tgo + 100

        print(f"MinTgo: {min_tgo:.2f}")
        print(f"MaxTgo: {max_tgo:.2f}")

        t_go = min_tgo
        while t_go < max_tgo:
            a0 = PDG.compute_a(S0, V0, t_go)
            j0 = PDG.compute_j(S0, V0, t_go)
            q0 = PDG.compute_q(S0, V0, t_go)

            valid_tgo = True
            t = 0.0
            while t < t_go:
                s = S0 + V0*t + (.5*t**2)*a0 + (.1666*t**3)*j0 + (.0416*t**4)*q0
                v = V0 + a0*t + (.5*t**2)*j0 + (.1666*t**3)*q0
                a = a0 + j0*t + (.5*t**2)*q0
                j = j0 + q0*t

                pitch = PDG.pitch(a, g)
                w = PDG.angular_velocity(a, j, g)
    
                if not PDG.constraints(g, max_a_eng, s, v, a, w, pitch):
                    valid_tgo = False
                    break

                t += 0.5
            
            if valid_tgo: return t_go

            t_go += 1.0
        
        return max_tgo

    @staticmethod
    def min_tgo_by_thrust(s0, v0, g, a_eng_mag): # min Tgo by max engine acceleration
        S0S0 = np.dot(s0, s0)
        S0V0 = np.dot(s0, v0)
        S0G  = np.dot(s0, g)
        V0V0 = np.dot(v0, v0)
        V0G  = np.dot(v0, g)
        GG   = np.dot(g, g)

        _roots = [r.real for r in np.roots([ # t=0
            GG - a_eng_mag**2,    # Tgo**4
            12 * V0G,             # Tgo**3
            24 * S0G + 36 * V0V0, # Tgo**2
            144 * S0V0,           # Tgo**1
            144 * S0S0            # Tgo**0
        ]) if abs(r.imag) < 1e-12 and r.real > 0]

        if not _roots: return None

        return min(_roots)

    @staticmethod
    def min_tgo_avoid_down(s0, v0, g): # min Tgo to avoid point down
        s0 = np.asarray(s0)
        v0 = np.asarray(v0)
        g  = np.asarray(g)

        g_normalized = -g / np.linalg.norm(g)

        _g =  np.dot(g_normalized, g)
        _v0 = np.dot(g_normalized, v0)
        _s0 = np.dot(g_normalized, s0)

        _roots = [
            r.real for r in np.roots(
                [
                   _g,        # Tgo**2
                    6 * _v0,  # Tgo**1
                    12 * _s0, # Tgo**0
                ]
            ) if abs(r.imag) < 1e-12 and r.real > 0
        ]

        if not _roots: return None

        return max(_roots)

    @staticmethod
    def max_tgo_avoid_collision(s0, v0, g): # max Tgo to avoid ground collision
        s0 = np.asarray(s0)
        v0 = np.asarray(v0)
        g  = np.asarray(g)

        g_normalized = -g / np.linalg.norm(g)

        _v0 = np.dot(g_normalized, v0)
        _s0 = np.dot(g_normalized, s0)

        return -4*_s0/_v0 if _v0 < 0 else None