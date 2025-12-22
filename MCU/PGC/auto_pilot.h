#ifndef AUTOPILOT_H
#define AUTOPILOT_H

void update(float* gimbal, float throttle) {
    target_direction = normalized(self.vessel.reference_frame.transform_direction_to_local(self.target_direction)) # vessel ref
    
    angle_delta = np.asin(target_direction[0]);

    accel_ang_max = self.vessel.available_torque / self.vessel.moment_of_inertia

    alpha_target = np.sqrt(2 * np.abs(angle_delta) * accel_ang_max * throttle * 0.4) * sign(angle_delta)
    alpha_delta = alpha_target - self.vessel.angular_velocity
    accel_ang_target = -alpha_delta * 2

    if (throttle) {
        *gimbal = (accel_ang_target / (accel_ang_max * throttle));
    } else {
        *gimbal = 0.0f;
    }
}

#endif
