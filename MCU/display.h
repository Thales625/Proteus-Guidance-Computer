#ifndef DISPLAY_H
#define DISPLAY_H

#include "at89x52.h"
#include "ports.h"
#include "types.h"
#include "utils.h"

#define MAX7219_REG_DECODE    0x09
#define MAX7219_REG_INTENSITY 0x0A
#define MAX7219_REG_SCANLIMIT 0x0B
#define MAX7219_REG_SHUTDOWN  0x0C
#define MAX7219_REG_TEST      0x0F

void MAX7219_WriteByte(byte_t data) {
    byte_t i;

    (void)data;

    __asm__("mov a, dpl");

    for(i=0; i<8; i++) {
        MAX7219_CLK_PIN = 0;

        __asm__("rlc a");
        ASM_MOV_CARRY_TO_PIN(MAX7219_DIN_PIN);
        
        MAX7219_CLK_PIN = 1;
    }
}

void MAX7219_Select(byte_t index) {
    // MAX7219_CS0_PIN = index & 0b01;
    // MAX7219_CS1_PIN = index & 0b10;

    (void)index;
    
    __asm__("mov a, dpl");
    __asm__("rrc a");
    ASM_MOV_CARRY_TO_PIN(MAX7219_CS0_PIN);

    __asm__("rrc a");
    ASM_MOV_CARRY_TO_PIN(MAX7219_CS1_PIN);
}

void MAX7219_Write(byte_t reg, byte_t value) {
    MAX7219_CS_PIN = 1; // enable CS
    MAX7219_WriteByte(reg);   // send address
    MAX7219_WriteByte(value); // send value
    MAX7219_CS_PIN = 0; // disable CS
}

void inline MAX7219_Init(void) {
    MAX7219_Write(MAX7219_REG_SHUTDOWN, 0x01);  // wake up
    MAX7219_Write(MAX7219_REG_TEST, 0x00);      // normal mode
    MAX7219_Write(MAX7219_REG_DECODE, 0xFF);    // decode mode
    MAX7219_Write(MAX7219_REG_SCANLIMIT, 0x07); // amount digits
    MAX7219_Write(MAX7219_REG_INTENSITY, 0x0F); // brightness
}

void Display_Write(byte_t index, float register_value, byte_t digit_value) {
    int digit;
    long number = (long) (register_value * 100);

    MAX7219_Select(index);
    
    for(byte_t i=6; i>0; i--) {
        digit = number % 10;
        number = number / 10;
        
        MAX7219_Write(i, i==4 ? digit | 0x80 : digit);
    }

    MAX7219_Write(7, digit_value/10);
    MAX7219_Write(8, digit_value%10);
}

#endif
