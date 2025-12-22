#include <at89x52.h>

#include <math.h>

#include "serial.h"
#include "utils.h"

// STATES
float pos_x, pos_y;
float vel_x, vel_y;
float angle, ang_vel;
float av_accel, av_accel_ang;
float ut;
float gravity_y;

// CONTROL
float throttle, gimbal;

// AUX
float a0x, a0y;
float t_go;

void Timer0ISR(void) __interrupt (1) {
    Serial_SendByte(0xFE);
    Serial_SendByte(0x10);
    TH0 = 0x00;
    TL0 = 0x00;
    __asm__("clr _TF0"); // clear T/C0 interrupt flag
}

inline void compute_a0(void) {
    float _a = -6.0f / (t_go * t_go);
    float _b = -4.0f / t_go;
    a0x = _a * pos_x + _b * vel_x;
    a0y = _a * pos_y + _b * vel_y - gravity_y;
}

inline void read_environment(void) {
    Serial_SendByte(0x20); // request package

    pos_x = Serial_ReadFloat(); // wait answer and save
    pos_y = Serial_ReadFloat(); // wait answer and save
    vel_x = Serial_ReadFloat(); // wait answer and save
    vel_y = Serial_ReadFloat(); // wait answer and save
    angle = Serial_ReadFloat(); // wait answer and save
    ang_vel = Serial_ReadFloat(); // wait answer and save
    av_accel = Serial_ReadFloat(); // wait answer and save
    av_accel_ang = Serial_ReadFloat(); // wait answer and save
}

inline void send_control(void) {
    Serial_SendByte(0x21); // send package
    
    Serial_SendFloat(throttle); // throttle
    Serial_SendFloat(gimbal); // gimbal
}

/*
inline void read_environment(void) {
    Serial_SendByte(0x00);      // request pos x
    pos_x = Serial_ReadFloat(); // wait answer and save

    Serial_SendByte(0x01);      // request pos y
    pos_y = Serial_ReadFloat(); // wait answer and save

    Serial_SendByte(0x02);      // request vel x
    vel_x = Serial_ReadFloat(); // wait answer and save

    Serial_SendByte(0x03);      // request vel y
    vel_y = Serial_ReadFloat(); // wait answer and save

    Serial_SendByte(0x04);      // request angle
    angle = Serial_ReadFloat(); // wait answer and save

    Serial_SendByte(0x05);        // request ang vel
    ang_vel = Serial_ReadFloat(); // wait answer and save

    Serial_SendByte(0x06); // request available acceleration
    av_accel = Serial_ReadFloat(); // wait answer and save

    Serial_SendByte(0x07);             // request available angular acceleration
    av_accel_ang = Serial_ReadFloat(); // wait answer and save
}
*/

void main(void) {
    // Serial_ConfigTimer(0xFE); // 57.600 bps | 44.2368 MHz
    // Serial_ConfigTimer(0xFC); // 19.200 bps | 30 MHz
    Serial_ConfigTimer(0xFD); // 9.600 bps | 11.0592 MHz

    Serial_Config(0x50); // REN = 1 | SMOD = 0

    Serial_SendByte(0x09); // request gravity y
    gravity_y = Serial_ReadFloat(); // wait answer and save

    { // CONFIG TIMER 0 ISR
        IE |= 0b10000010;
        TMOD |= 0x01;
        TH0 = 0x00;
        TL0 = 0x00;
        TR0 = 0;
    }

    float t_go0 = 22.0f;

    while (1) {
        { // update ut
            Serial_SendByte(0x08); // request ut
            ut = Serial_ReadFloat(); // wait answer and save
        }

        t_go = t_go0 - ut;

        if (t_go < 3.0f) t_go = 3.0f;

        read_environment();

        // compute target acceleration
        compute_a0();

        // throttle control
        throttle = sqrtf(a0x * a0x + a0y * a0y) / av_accel;

        // gimbal control
        if (throttle != 0) {
            // normalizing angle
            float delta_angle = angle_from_vec2(a0x, a0y) - angle;

            if (delta_angle > 3.14159265f) {
                delta_angle -= 6.2831853f;
            } else if (delta_angle < -3.14159265f) {
                delta_angle += 6.2831853f;
            }

            // float delta_alpha = -2.0f * (sqrtf(fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle) - ang_vel);
            // float delta_alpha = -2.0f * (0.9f * sqrtf(fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle) - ang_vel);
            // float delta_alpha = -2.0f * (sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle) - ang_vel);
            float delta_alpha = 2.0f * (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle));

            gimbal = delta_alpha / (av_accel_ang * throttle);
        } else {
            gimbal = 0.0f;
        }

        // DEBUG
        Serial_SendByte(0xFD);
        Serial_SendFloat(t_go);

        send_control();
    }

    /*
    while (1) {
      byte_t key = Keyboard_Read();

      switch (key) {
          case 0xFF: // IGNORE
              break;

          case 0x2A: // *
              break;

          case 0x23: // #
              break;

          default: // [9 -> 0]
              Serial_SendByte(0xFF); // DEBUG
              Serial_SendByte(key);
              break;
      }
    }
    */
}
