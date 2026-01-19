#include <at89x52.h>

#include <math.h>

#include "keyboard.h"
#include "display.h"
#include "serial.h"
#include "utils.h"
#include "delay.h"

// STATES
__xdata float pos_x, pos_y;
__xdata float vel_x, vel_y;
__xdata float angle, ang_vel;
__xdata float av_accel, av_accel_ang;
__xdata float ut;
__xdata float gravity_y;

// CONTROL
float throttle, gimbal;
byte_t PROG, VERB, NOUN;

// AUX
float a0_x, a0_y;
float t_go;

// DKSY
byte_t dsky_buffer = 0x00;
byte_t dsky_state = 0;
bool dsky_key_pressed = false;

/*
byte_t COUNTER=0;

void Timer0ISR(void) __interrupt (1) { // causing crash! (when interrupt in Serial communication)
    COUNTER++;
    if (COUNTER >= 70) {
        Serial_SendByte(0xFE);
        Serial_SendByte(21);
        COUNTER = 0;
    }
    TH0 = 0x00;
    TL0 = 0x00; // clear T/C0 interrupt flag
    // 71.17 ms
}
*/

inline void compute_a0(void) {
    // 4th Order
    float _a = -12.0f / (t_go * t_go);
    float _b = -6.0f / t_go;

    a0_x = _a * pos_x + _b * vel_x;
    a0_y = _a * pos_y + _b * vel_y - gravity_y;
}

inline void read_environment(void) {
    Serial_SendByte(0x20); // request package

    ut = Serial_ReadFloat();
    pos_x = Serial_ReadFloat();
    pos_y = Serial_ReadFloat();
    vel_x = Serial_ReadFloat();
    vel_y = Serial_ReadFloat();
    angle = Serial_ReadFloat();
    ang_vel = Serial_ReadFloat();
    av_accel = Serial_ReadFloat();
    av_accel_ang = Serial_ReadFloat();
}

int main(void) {    
    byte_t key;
    float t_go0 = 30.0f;
    byte_t counter = 0;

    { // CONFIG SERIAL
        Serial_ConfigTimer(0xFD); // 9.600 bps | 11.0592 MHz
    
        Serial_Config(0x50); // REN = 1 | SMOD = 0
    
        Serial_SendByte(0x09); // request gravity y
        gravity_y = Serial_ReadFloat(); // wait answer and save
    }

    { // CONFIG TIMER 0 ISR
        TMOD &= 0xF0;
        TMOD |= 0x01;

        TH0 = 0x00;
        TL0 = 0x00;
        
        ET0 = 0; // ignore for now
        // ET0 = 1;
        EA = 1;

        TR0 = 1;
    }

    { // CONFIG 7SEG DISPLAY CONTROLLERS
        // using the var <key> to save memory
        for (key=1; key<=3; key++) {
            MAX7219_Select(key);
            MAX7219_Init();
        }
    }

    while (1) {
        counter++;

        read_environment();

        t_go = t_go0 - ut;

        if (t_go < 3.0f) t_go = 3.0f;

        // compute target acceleration
        compute_a0();

        // throttle control
        throttle = sqrtf(a0_x * a0_x + a0_y * a0_y) / av_accel;

        // gimbal control
        if (throttle != 0) {
            // normalizing angle
            float delta_angle = angle_from_vec2(a0_x, a0_y) - angle;

            if (delta_angle > 3.14159265f) {
                delta_angle -= 6.2831853f;
            } else if (delta_angle < -3.14159265f) {
                delta_angle += 6.2831853f;
            }

            // gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / (av_accel_ang * throttle); // considering without RCS

            gimbal = (ang_vel - sqrtf(0.8f * fabsf(delta_angle) * av_accel_ang * throttle) * signf(delta_angle)) / av_accel_ang;
        } else {
            gimbal = 0.0f;
        }

        // SEND CONTROL PACKAGE  
        Serial_SendByte(0x21); // send package
        Serial_SendFloat(throttle); // throttle
        Serial_SendFloat(gimbal); // gimbal

        // UPDATE DSKY
        if (counter > 5) {
            counter = 0;
            Display_Write(1, t_go, PROG);
            Display_Write(2, 0, VERB);
            Display_Write(3, 0, NOUN);
        }

        // DSKY READ KEYBOARD
        key = Keyboard_Read();

        if (key == 0xFF) {
            dsky_key_pressed = false;
            continue;
        }

        if (dsky_key_pressed) continue;

        dsky_key_pressed = true;

        /*
        DSKY States
        0 - Standby
        1 - editting PROG
        2 - editting VERB
        3 - editting NOUN
        */

        if (key == 0x0A) { // CLR (*)
            dsky_buffer = 0;
            continue;
        }

        if (key == 0x0B) { // ENTER (#)
            if (dsky_state == 0) continue;

            if (dsky_state == 1) PROG = dsky_buffer;
            else if (dsky_state == 2) VERB = dsky_buffer;
            else if (dsky_state == 3) NOUN = dsky_buffer;

            dsky_buffer = 0;
            dsky_state = 0;
            
            continue;
        }

        if (key == 0x0C) { // PROG
            dsky_state = 1;
            continue;
        }

        if (key == 0x0D) { // VERB
            dsky_state = 2;
            continue;
        }

        if (key == 0x0E) { // NOUN
            dsky_state = 3;
            continue;
        }
     
        if (dsky_state != 0) { // 0 - 9
            dsky_buffer *= 10;
            dsky_buffer += key;
        }
    }
}