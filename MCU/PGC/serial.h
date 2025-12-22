#ifndef SERIAL_H
#define SERIAL_H

#include <at89x52.h>

#include "types.h"

inline void Serial_Config(byte_t n_SCON) {
	SCON = n_SCON;
}

inline void Serial_ConfigTimer(byte_t th1) {
    // IE |= 0b10000010;
    TMOD |= 0x20;
    TH1 = th1;
    TL1 = th1;
    TR1 = 1;
}


void Serial_SendByte(byte_t value) {
    (void)value;

    __asm
        mov _SBUF, dpl
        1$: jnb _TI, 1$
        clr _TI
    __endasm;
}

void Serial_SendFloat(float value) {
    (void)value;

    __asm
        mov _SBUF, dpl // byte 0
        1$: jnb _TI, 1$
        clr _TI

        mov _SBUF, dph // byte 1
        2$: jnb _TI, 2$
        clr _TI

        mov _SBUF, b // byte 2
        3$: jnb _TI, 3$
        clr _TI

        mov _SBUF, a // byte 3
        4$: jnb _TI, 4$
        clr _TI
    __endasm;

    /*
    __asm__("mov _SBUF, dpl"); // byte 0
    while(TI == 0);
    TI = 0;

    __asm__("mov _SBUF, dph"); // byte 1
    while(TI == 0);
    TI = 0;

    __asm__("mov _SBUF, b"); // byte 2
    while(TI == 0);
    TI = 0;

    __asm__("mov _SBUF, a"); // byte 3
    while(TI == 0);
    TI = 0;
    */
}



byte_t Serial_ReadByte(void) {
    // while (!RI);
    // RI = 0;
    __asm__("1$: jnb _RI, 1$");
    __asm__("clr _RI");
    return SBUF;
}

float Serial_ReadFloat(void) {
    float value;
    byte_t *p = (byte_t*)&value;

    __asm__("1$: jnb _RI, 1$");
    __asm__("clr _RI");
    p[0] = SBUF;

    __asm__("2$: jnb _RI, 2$");
    __asm__("clr _RI");
    p[1] = SBUF;

    __asm__("3$: jnb _RI, 3$");
    __asm__("clr _RI");
    p[2] = SBUF;

    __asm__("4$: jnb _RI, 4$");
    __asm__("clr _RI");
    p[3] = SBUF;

    return value;
}

#endif
