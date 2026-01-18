#ifndef DISPLAY_H
#define DISPLAY_H

#define _ASM_MOV_TO_PIN(pin_name) __asm mov _##pin_name, c __endasm
#define ASM_MOV_C_TO_PIN(pin) _ASM_MOV_TO_PIN(pin)

#include "at89x52.h"
#include "ports.h"
#include "types.h"

#define MAX7219_REG_DECODE    0x09
#define MAX7219_REG_INTENSITY 0x0A
#define MAX7219_REG_SCANLIMIT 0x0B
#define MAX7219_REG_SHUTDOWN  0x0C
#define MAX7219_REG_TEST      0x0F

void MAX7219_SPI_Write_Byte(byte_t data) {
    byte_t i;

    (void)data;

    for(i=0; i<8; i++) {
        MAX7219_CLK_PIN = 0;

        // MAX7219_DIN_PIN = data & 0x80;
        // data <<= 1;

        __asm
            mov a, dpl
            rlc a
        __endasm;
        ASM_MOV_C_TO_PIN(MAX7219_DIN_PIN);
        __asm
            mov dpl, a
        __endasm;

        MAX7219_CLK_PIN = 1;
    }
}

void MAX7219_Select(byte_t index) {
    // MAX7219_CS0_PIN = index & 0b01;
    // MAX7219_CS1_PIN = index & 0b10;

    (void)index;
    
    __asm
        mov a, dpl
        rrc a
    __endasm;
    ASM_MOV_C_TO_PIN(MAX7219_CS0_PIN);

    __asm
        rrc a
    __endasm;
    ASM_MOV_C_TO_PIN(MAX7219_CS1_PIN);
}

void MAX7219_Write(byte_t reg, byte_t value) {
    MAX7219_CS_PIN = 1; // enable CS
    MAX7219_SPI_Write_Byte(reg);   // send address
    MAX7219_SPI_Write_Byte(value); // send value
    MAX7219_CS_PIN = 0; // disable CS
}

void inline MAX7219_Init(void) {
    MAX7219_Write(MAX7219_REG_SHUTDOWN, 0x01);  // wake up
    MAX7219_Write(MAX7219_REG_TEST, 0x00);      // normal mode
    MAX7219_Write(MAX7219_REG_DECODE, 0xFF);    // decode mode
    MAX7219_Write(MAX7219_REG_SCANLIMIT, 0x07); // amount digits
    MAX7219_Write(MAX7219_REG_INTENSITY, 0x0F); // brightness
}

void Display_WriteFloat(byte_t index, float value) {
    int digit;
    long number = (long) (value * 100);

    MAX7219_Select(index);
    
    for(byte_t i=6; i>0; i--) {
        digit = number % 10;
        number = number / 10;
        
        MAX7219_Write(i, i==4 ? digit | 0x80 : digit);
    }
}

void Display_WriteDigit(byte_t index, byte_t value) {
    MAX7219_Select(index);
    
    // if (value > 99) value = 99;
    
    MAX7219_Write(7, value/10);
    MAX7219_Write(8, value%10);
}

#endif
