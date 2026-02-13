import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

import numpy as np

class Universe:
    def __init__(self, celestial_body) -> None:
        self.vessels = []
        self.parts = []
        self._shapes = []

        self.cam_zoom = 10.
        self.cam_min_zoom = 0.2
        self.cam_max_zoom = 40.
        self.cam_position = np.array([0., 0.])
        self.cam_follow_rocket = True

        self.celestial_body = celestial_body

    def PhysicsLoop(self, dt, ut):
        for vessel in self.vessels:
            vessel.update(dt, ut)

    def RenderLoop(self):
        for vessel in self.vessels:
            vessel.draw()
        
        for part in self.parts:
            part.draw()
        
    def UpdateShapes(self):
        self._shapes = []

        for v in self.vessels:
            self._shapes.append(v.shape)

            for part in v.parts:
                self._shapes.append(part.shape)

            for engine in v.engines:
                self._shapes.append(engine.shape)
                self._shapes.append(engine.plume.shape)

            for rcs in v.rcs_engines:
                self._shapes.append(rcs.shape)
                self._shapes.append(rcs.plume.shape)

        for part in self.parts: self._shapes.append(part.shape)
    
    def UpdateTerrain(self, ax):
        x_min, x_max = ax.get_xlim()
        
        width = x_max - x_min

        buffer = width * .5
        render_min = x_min - buffer
        render_max = x_max + buffer

        x_values = np.linspace(render_min, render_max, 500)
        y_values = self.celestial_body.terrain(x_values)

        self.terrain_line.set_data(x_values, y_values)

    def SetupShapes(self, ax):
        for shape in self._shapes: shape.setup(ax)
    
    def GetArtists(self):
        return [shape.artist for shape in self._shapes]


    def Simulate(self, setup_func, loop_func, dt=0.01):
        fig, ax = plt.subplots()

        fig.canvas.manager.set_window_title("PGC - Python")

        # ax.set_aspect("equal", adjustable="datalim")
        ax.set_aspect("equal")

        # remove grid numbers
        ax.set_xticklabels([])
        ax.set_yticklabels([])

        self.UpdateShapes()
        self.SetupShapes(ax)
        artists = self.GetArtists()

        setup_func(ax)

        self.terrain_line, = ax.plot([], [], color="gray", linewidth=2, label="Surface")

        def update(frame):
            ut = frame*dt

            # camera follows rocket
            if self.cam_follow_rocket:
                self.cam_position = 0.5 * self.cam_position + 0.5 * self.vessels[0].position
                
                x, y = self.cam_position

                ax.set_xlim(x - self.cam_zoom, x + self.cam_zoom)
                ax.set_ylim(y - self.cam_zoom, y + self.cam_zoom)

            self.PhysicsLoop(dt, ut)
            self.RenderLoop()
            self.UpdateTerrain(ax)

            return artists + loop_func(ut) + [self.terrain_line]

        def on_key(event):
            if event.key == "+":
                self.cam_zoom *= 1.1
            elif event.key == "-":
                self.cam_zoom /= 1.1

            elif event.key == "c":
                self.cam_follow_rocket = not self.cam_follow_rocket

            self.cam_zoom = np.clip(self.cam_zoom, self.cam_min_zoom, self.cam_max_zoom)

        def on_scroll(event):
            if event.button == "up":
                self.cam_zoom *= 1.1
            elif event.button == "down":
                self.cam_zoom /= 1.1

            self.cam_zoom = np.clip(self.cam_zoom, self.cam_min_zoom, self.cam_max_zoom)

        fig.canvas.mpl_connect("key_press_event", on_key)
        fig.canvas.mpl_connect("scroll_event", on_scroll)

        ani = FuncAnimation(fig, update, interval=dt*1000, blit=False, cache_frame_data=False)

        plt.title("Simulation")
        plt.grid()
        plt.tight_layout()

        plt.show()
       
    def plot_terrain(self):
        fig, ax = plt.subplots()
        ax.set_aspect("equal", adjustable="datalim")
        ax.plot(*self.celestial_body.curve(), label="Terrain", c="black")
        ax.plot(*self.celestial_body.get_points(), "o", label="Data", c="blue")
        plt.title("Terrain")
        plt.grid()
        plt.tight_layout()
        plt.legend()
        plt.show()
