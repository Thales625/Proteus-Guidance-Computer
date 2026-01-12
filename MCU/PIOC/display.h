#ifndef DISPLAY_H
#define DISPLAY_H

#include "ports.h"
#include "types.h"

#define REG_DECODE    0x09
#define REG_INTENSITY 0x0A
#define REG_SCANLIMIT 0x0B
#define REG_SHUTDOWN  0x0C
#define REG_TEST      0x0F

void SPI_Write_Byte(byte_t data) {
    byte_t i;

    for(i=0; i<8; i++) {
        MAX7219_CLK_PIN = 0;
        MAX7219_DIN_PIN = (data & 0x80);
        data = data << 1;
        MAX7219_CLK_PIN = 1;
    }
}

void inline MAX7219_Select(byte_t index) {
    MAX7219_CS0 = index & 0b01;
    MAX7219_CS1 = index & 0b10;
}

void MAX7219_Write(byte_t reg, byte_t value) {
    MAX7219_CS = 1;
    SPI_Write_Byte(reg);   // send address
    SPI_Write_Byte(value); // send value
    MAX7219_CS = 0;
}

void inline MAX7219_Init(void) {
    MAX7219_Write(REG_SHUTDOWN, 0x01);  // wake up
    MAX7219_Write(REG_TEST, 0x00);      // normal mode
    MAX7219_Write(REG_DECODE, 0xFF);    // BCD decode
    MAX7219_Write(REG_SCANLIMIT, 0x07); // amount digits
    MAX7219_Write(REG_INTENSITY, 0x0F); // brightness
}

#endif
