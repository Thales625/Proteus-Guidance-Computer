#ifndef LED_H
#define LED_H

#include "at89x52.h"
#include "ports.h"
#include "types.h"
#include "utils.h"

/**
 * Send 4 bit-long data to the LED shift register.
 *
 * data: 8 bit value.
 */
void LED_WriteData(byte_t data) {
    byte_t i;

    (void)data;

    __asm__("mov a, dpl");

    for(i=0; i<4; i++) {
        LED_CLK_PIN = 0;

        __asm__("rrc a");
        ASM_MOV_CARRY_TO_PIN(LED_DIN_PIN);

        LED_CLK_PIN = 1;
    }
}

#endif