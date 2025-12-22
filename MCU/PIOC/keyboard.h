#ifndef KEYBOARD_H
#define KEYBOARD_H

#include <at89x52.h>

#include "types.h"
#include "ports.h"

byte_t log2_table(byte_t value) {
	if (value == 0x01) return 1;
	if (value == 0x02) return 2;
	if (value == 0x04) return 3;
	return 0;
}

byte_t Keyboard_Read(void) {
	byte_t y = 0x01;
	byte_t x = 0x00;
	byte_t i = 0;
	
	while (i <= 2) {	
		KEYBOARD_PORT = 0xFF & ~y;

		x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
				
		if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 

		y <<= 1;
		i++;
	}
	
	// last line
	KEYBOARD_PORT = 0xFF & ~y;

	x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
	
	if (x == 0) return 0xFF; // ignore

    if (x == 1) return 0x2A; // *
    if (x == 2) return 0x00; // 0	
    if (x == 4) return 0x23; // #

	return 0xFF;
}

#endif
