#ifndef KEYBOARD_H
#define KEYBOARD_H

#include <at89x52.h>

#include "types.h"
#include "ports.h"

inline byte_t log2_table(byte_t value) {
	if (value == 0x01) return 1;
	if (value == 0x02) return 2;
	if (value == 0x04) return 3;
	return 0;
}

byte_t Keyboard_Read(void) {
	/*
	0x0 - 0x9: key = number
	0xA - 0xB: key = enter & clear
	0xC - 0xE: key = special funcs
	*/

	byte_t x, y = 0x01;
	
	for (byte_t i=0; i<=2; i++) {
		KEYBOARD_PORT = 0xFF & ~y;

		x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
		
		if (x==8) { // last column - special functions
			switch (y) {
				case 1:
					return 0x0C; // PROG
				case 2:
					return 0x0D; // VERB
				case 4:
					return 0x0E; // NOUN
				default:
					break;
			}
		}

		if (x != 0) return 3*(log2_table(y)-1) + log2_table(x); 

		y <<= 1;
	}
	
	// last line
	KEYBOARD_PORT = 0xFF & ~y;

	x = ~((KEYBOARD_PORT & 0xF0) >> 4) & 0x0F;
	
	if (x == 0) return 0xFF; // none key

    if (x == 1) return 0x0A; // *
    if (x == 2) return 0x00; // 0
    if (x == 4) return 0x0B; // #

	return 0xFF;
}

#endif
