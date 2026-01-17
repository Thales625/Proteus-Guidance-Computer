#ifndef UTILS_H
#define UTILS_H

#include <math.h>

inline void vec2_from_angle(float* vx, float* vy, float angle) {
    *vx = -sinf(angle);
    *vy = cosf(angle);
}

inline float angle_from_vec2(float vx, float vy) {
    // return atan2f(vx, vy);
    return atan2f(vx, -vy);
}

inline float signf(float value) {
    return value < 0 ? -1 : 1;
}

#endif
