#include <at89x52.h>

#include <math.h>

#include "keyboard.h"
#include "display.h"
#include "led.h"
#include "serial.h"
#include "utils.h"

// STATES
__xdata float ut;
__xdata float pos_x, pos_y;
__xdata float vel_x, vel_y;
__xdata float angle, ang_vel;
__xdata float av_accel, av_accel_ang;
byte_t situation;
float gravity_y;

// CONTROL
byte_t PROG, VERB, NOUN;
float throttle, gimbal;
float t_go, dt;

// DKSY
bool dsky_key_pressed = false;
byte_t dsky_state = 0;
byte_t dsky_PROG = 0, dsky_VERB = 0, dsky_NOUN = 0;
float REG1, REG2, REG3;

byte_t led_state = 0b1111;

void P63(void) {
    // throttle control
    // throttle = -(50.0f + vel_y + gravity_y) / av_accel;
    throttle = ((float) NOUN) / 100.0f;
    
    // gimbal control
    float target_angle = angle_from_vec2(-vel_x, fabsf(vel_y));
    float delta_angle = target_angle - angle; // normalizing angle
    if (delta_angle > 3.14159265f) delta_angle -= 6.2831853f;
    else if (delta_angle < -3.14159265f) delta_angle += 6.2831853f;

    gimbal = (ang_vel - sqrtf(fabsf(delta_angle) * av_accel_ang) * signf(delta_angle)) / av_accel_ang;
}

void P64(void) {
    t_go -= dt;

    if (t_go < 3.0f) t_go = 3.0f;

    // compute target acceleration | 4th Order
    float _a = -12.0f / (t_go * t_go);
    float _b = -6.0f / t_go;

    float a0_x = _a * pos_x + _b * vel_x;
    float a0_y = _a * pos_y + _b * vel_y - gravity_y;

    // throttle control
    throttle = sqrtf(a0_x * a0_x + a0_y * a0_y) / av_accel;

    // gimbal control
    float delta_angle = angle_from_vec2(a0_x, a0_y) - angle; // normalizing angle
    if (delta_angle > 3.14159265f) delta_angle -= 6.2831853f;
    else if (delta_angle < -3.14159265f) delta_angle += 6.2831853f;

    gimbal = (ang_vel - 0.5f*sqrtf(fabsf(delta_angle) * av_accel_ang) * signf(delta_angle)) / av_accel_ang;

    // DEBUG delta angle
    // Serial_SendByte(0xFD);
    // Serial_SendFloat(delta_angle);
}

void P65(void) {
    // throttle control
    throttle = (-1.0f - vel_y - gravity_y) / av_accel;

    // gimbal control
    float target_angle = angle_from_vec2(-vel_x, 10.0f * fabsf(vel_y));
    float delta_angle = target_angle - angle; // normalizing angle
    if (delta_angle > 3.14159265f) delta_angle -= 6.2831853f;
    else if (delta_angle < -3.14159265f) delta_angle += 6.2831853f;

    gimbal = (ang_vel - sqrtf(fabsf(delta_angle) * av_accel_ang) * signf(delta_angle)) / av_accel_ang;
}

void P66(void) {
    // read joystick  
    Serial_SendByte(0x30);
    float target_ang_vel = Serial_ReadFloat();
    float target_vy = Serial_ReadFloat()*3.0f - 1.0f;

    // throttle control
    throttle = 5.0f*(target_vy-vel_y) / av_accel;

    // gimbal control
    gimbal = (target_ang_vel+ang_vel) / av_accel_ang;
}

void P67(void) {
    // read joystick  
    Serial_SendByte(0x30);
    throttle = Serial_ReadFloat();
    gimbal = Serial_ReadFloat();
}

void P68(void) {
    throttle = 0.0f;
    gimbal = 0.0f;
}

void P70(void) {
    // throttle control
    throttle = -(vel_y + gravity_y) / av_accel;

    // gimbal control - point up
    float delta_angle = 3.14159265f - angle; // normalizing angle
    if (delta_angle > 3.14159265f) delta_angle -= 6.2831853f;
    else if (delta_angle < -3.14159265f) delta_angle += 6.2831853f;

    gimbal = (ang_vel - sqrtf(fabsf(delta_angle) * av_accel_ang) * signf(delta_angle)) / av_accel_ang;
}

void DSKY_Keyboard(void) {
    byte_t key = Keyboard_Read();

    if (key == 0xFF) {
        dsky_key_pressed = false;
        return;
    }

    if (dsky_key_pressed) return;

    dsky_key_pressed = true;

    /*
    DSKY States
    0 - Standby
    1 - editting PROG
    2 - editting VERB
    3 - editting NOUN
    */

    if (key == 0x0A) { // CLR (*)
        switch (dsky_state) {                
            case 1: // PROG
                dsky_PROG = 0;
                break;
            
            case 2: // VERB
                dsky_VERB = 0;
                break;
            
            case 3: // NOUN
                dsky_NOUN = 0;
                break;
            
            default:
                break;
        }
        return;
    }

    if (key == 0x0B) { // ENTER (#)
        switch (dsky_state) {
            case 0:
                return;
            
            case 1:
                PROG = dsky_PROG;
                if (PROG == 64) { // REQUEST TGO
                    Serial_SendByte(0x0C);
                    t_go = Serial_ReadFloat();
                }
                break;
            
            case 2:
                if (dsky_VERB == 18) {
                    Serial_SendByte(0x40);
                    dsky_VERB = VERB;
                } else {
                    VERB = dsky_VERB;
                }
                break;
            
            case 3:
                NOUN = dsky_NOUN;
                break;
            
            default:
                break;
        }

        dsky_state = 0;
        return;
    }

    if (key == 0x0C) { // PROG
        dsky_PROG = 0;
        dsky_state = 1;
        return;
    }

    if (key == 0x0D) { // VERB
        dsky_VERB = 0;
        dsky_state = 2;
        return;
    }

    if (key == 0x0E) { // NOUN
        dsky_NOUN = 0;
        dsky_state = 3;
        return;
    }
 
    if (dsky_state != 0) { // DSKY: edditing | KEY: 0 - 9
        switch (dsky_state) {                
            case 1: // PROG
                dsky_PROG *= 10;
                dsky_PROG += key;
                break;
            
            case 2: // VERB
                dsky_VERB *= 10;
                dsky_VERB += key;
                break;
            
            case 3: // NOUN
                dsky_NOUN *= 10;
                dsky_NOUN += key;
                break;
            
            default:
                break;
        }
    }
}

inline void read_environment(void) {
    Serial_SendByte(0x20); // request package

    pos_x = Serial_ReadFloat();
    pos_y = Serial_ReadFloat();
    vel_x = Serial_ReadFloat();
    vel_y = Serial_ReadFloat();
    angle = Serial_ReadFloat();
    ang_vel = Serial_ReadFloat();
    av_accel = Serial_ReadFloat();
    av_accel_ang = Serial_ReadFloat();
    ut = Serial_ReadFloat();
    situation = Serial_ReadByte();
}

int main(void) {
    byte_t counter = 0;
    float prev_ut = 0.0f;

    t_go = 50.0f;

    PROG = 63;
    VERB = 16;
    NOUN = 1;

    { // CONFIG SERIAL
        Serial_ConfigTimer(0xFD); // 9.600 bps | 11.0592 MHz
    
        Serial_Config(0x50); // REN = 1 | SMOD = 0
    
        Serial_SendByte(0x09); // request gravity y
        gravity_y = Serial_ReadFloat(); // wait answer and save
    }

    { // CONFIG TIMER 0
        TMOD &= 0xF0;
        TMOD |= 0x01;

        TH0 = 0x00;
        TL0 = 0x00;
        
        ET0 = 0;
        EA = 0;

        TR0 = 1;
    }

    { // CONFIG 7SEG DISPLAY CONTROLLERS
        for (byte_t i=1; i<=3; i++) {
            MAX7219_Select(i);
            MAX7219_Init();
        }
    }

    // MAIN LOOP
    while (1) {
        read_environment();

        dt = ut - prev_ut;
        prev_ut = ut;

        if (situation & 0b0001) PROG = 68; // CONTACT

        switch (PROG) {
            case 63:
                P63();
                break;
            case 64:
                P64();
                break;
            case 65:
                P65();
                break;
            case 66:
                P66();
                break;
            case 67:
                P67();
                break;
            case 68:
                P68();
                break;
            case 70:
                P70();
                break;
            default:
                break;
        }

        // SEND CONTROL PACKAGE  
        Serial_SendByte(0x21); // send package
        Serial_SendFloat(throttle); // throttle
        Serial_SendFloat(gimbal); // gimbal

        // UPDATE DSKY
        counter++;
        if (counter == 5) {
            counter = 0;

            if (dsky_state == 0) { // standby
                dsky_PROG = PROG;
                dsky_VERB = VERB;
                dsky_NOUN = NOUN;
            }

            // RESET REGS
            REG1 = REG2 = REG3 = 0;

            if (VERB == 16) {
                switch (NOUN) {
                    case 1: // Tgo
                        REG1 = t_go;
                        break;
                    case 2: // Fuel Level
                        Serial_SendByte(0x0a);
                        REG1 = Serial_ReadFloat();
                        break;
                    case 3: // Throttle (%)
                        REG1 = throttle * 100.0f;
                        break;
                    case 4: // Vel x
                        REG1 = fabsf(vel_x);
                        break;
                    case 5: // Vel Mag
                        REG1 = sqrtf(vel_x*vel_x + vel_y*vel_y);
                        break;
                    case 6: // Downrange
                        REG1 = fabsf(pos_x);
                        break;
                    default:
                        break;
                }
                REG2 = fabsf(vel_y);
                REG3 = fabsf(pos_y);
            }
            
            Display_Write(1, REG1, dsky_PROG);
            Display_Write(2, REG2, dsky_VERB);
            Display_Write(3, REG3, dsky_NOUN);
        }

        // DSKY READ KEYBOARD
        DSKY_Keyboard();

        // PULL OFF LED STATE
        led_state |= 0b1111;

        // UPDATE LED STATE
        if (dsky_key_pressed)  led_state &= 0b1110; // key     led on
        if (dsky_state != 0)   led_state &= 0b1101; // edit    led on
        if (situation &= 0x08) led_state &= 0b1011; // uplink  led on
        if (situation &= 0x01) led_state &= 0b0111; // contact led on
        
        LED_WriteData(led_state);
    }
}
