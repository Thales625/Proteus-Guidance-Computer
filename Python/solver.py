class RK4:
    def __init__(self, dSdt) -> None:
        self.dSdt = dSdt
    
    def step(self, S, t, dt):
        k1 = self.dSdt(S, t)
        k2 = self.dSdt(S + 0.5*dt*k1, t + 0.5*dt)
        k3 = self.dSdt(S + 0.5*dt*k2, t + 0.5*dt)
        k4 = self.dSdt(S + dt*k3, t + dt)
        return (dt/6)*(k1 + 2*k2 + 2*k3 + k4)
