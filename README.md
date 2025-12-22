# Proteus Guidance Computer (PGC)

**An 8-bit control system for rocket landing simulation.**

The **Proteus Guidance Computer (PGC)** is a Hardware-in-the-Loop (HIL) project inspired by the legendary **Apollo Guidance Computer (AGC)**. It explores the challenge of performing real-time Guidance, Navigation, and Control (GNC) tasks using the constraints of a vintage architecture.

The goal is to autonomously land a rocket model by delegating the control logic to an emulated **8051 microcontroller**, while the physics and environmental simulation run externally on a custom **Python engine**.

## 🚀 Project Overview

The system is divided into two distinct, isolated environments that communicate via a serial interface:

1.  **The "Real World" (Python Simulation):**
    * A custom-built physics engine (using RK4 integration) that simulates the rocket's dynamics, including gravity, drag, mass variation, and rotational inertia.
    * It generates telemetry data (altitude, velocity, tilt angle) and sends it to the microcontroller.
    * It listens for actuator commands to update the state of the landing.

2.  **The "Pilot" (8051 Microcontroller in Proteus):**
    * Runs the flight software responsible for stabilizing the descent.
    * Processes incoming telemetry to calculate the necessary corrections.
    * Controls the **Thrust Vector** (gimbal angle) and **Engine Power** (throttle) to achieve a soft landing.

## 🔌 Interfacing Proteus & Python

This project establishes a bidirectional serial communication channel between the 8051 microcontroller simulation (running in Proteus ISIS) and a Python script running on the host machine.

The communication is achieved using **Virtual Serial Port Pairs** (Null-modem emulation). This creates a bridge where the microcontroller writes to one port (e.g., `COM1`), and the Python script reads from the paired port (e.g., `/dev/tnt1` or `COM2`).

### ⚙️ Environment Setup

#### 🐧 Linux (Arch/Debian/Ubuntu via Wine)

Since Proteus runs on Linux through Wine, standard pseudo-terminals (PTY) often cause crashes due to the lack of full hardware emulation (IOCTLs). We use the kernel-module based `tty0tty` driver for stability.

**1. Install the Virtual Serial Driver (`tty0tty`)**

* **Arch Linux:** `yay -S tty0tty-dkms-git`
* **Ubuntu/Debian:** Clone the repo and compile the kernel module manually.

**2. Configure Permissions and Load Module**
Ensure the module loads at boot and permissions are set for non-root users:

```bash
# Load module
sudo modprobe tty0tty

# Grant permissions (add to udev rules for persistence)
sudo chmod 666 /dev/tnt*
```

This creates paired ports: `/dev/tnt0` ↔ `/dev/tnt1`.

**3. Map Ports in Wine**
Wine must be explicitly configured to treat the virtual port as a COM port to prevent Proteus crashes.

1. Open the registry: `WINEPREFIX=~/.your-prefix wine regedit`
2. Navigate to `HKEY_LOCAL_MACHINE\Software\Wine\Ports`.
3. Add a String Value: `COM1` -> `/dev/tnt0`.
4. Navigate to `HKEY_LOCAL_MACHINE\Hardware\Devicemap\Serialcomm`.
5. Add a String Value: `Serial0` -> `COM1`.

**4. Connection:**

* **Proteus (COMPIM):** Connect to `COM1` (mapped to `/dev/tnt0`).
* **Python:** Connect to `/dev/tnt1`.

---

#### 🪟 Windows

On Windows, you need a third-party software to emulate the virtual cable, as Windows does not support this natively.

**1. Install Emulator Software**
Recommended tool: **com0com** (Open Source) or *Virtual Serial Port Driver* (Eltima).

**2. Create the Pair**
Create a pair of ports, for example: `COM1` ↔ `COM2`.

**3. Connection:**
* **Proteus (COMPIM):** Connect to `COM1`.
* **Python:** Connect to `COM2`.

---

### 🔧 COMPIM Configuration (Proteus)

To ensure stability, especially under Wine, configure the **COMPIM** component as follows:

* **Physical Port:** `COM1`
* **Baud Rate:** `9600` (Must match Python script)
* **Data Bits:** `8`
* **Parity:** `None`
* **Physical Stop Bits:** `1`
