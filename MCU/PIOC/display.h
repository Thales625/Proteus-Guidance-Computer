#ifndef DISPLAY_H
#define DISPLAY_H

#include "ports.h"
#include "types.h"

inline void Display_Write7Seg(byte_t value, byte_t position, byte_t dot) {
    DISPLAY_PORT = (position << 5 & 0b11100000) | (dot<<4 & 0b00010000) | (value & 0x0F);
}

// void Display_Update(float )

#endif
