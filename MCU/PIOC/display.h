#ifndef DISPLAY_H
#define DISPLAY_H

#include "ports.h"
#include "types.h"

inline void Display_Write7Seg(byte_t value, byte_t position, byte_t signal) {
    DISPLAY_PORT = (signal << 7 & 0b10000000) | (position<<4 & 0b01110000) | (value & 0x0F);
}

// void Display_Update(float )

#endif
