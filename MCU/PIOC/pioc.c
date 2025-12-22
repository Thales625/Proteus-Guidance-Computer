#include <at89x52.h>

// #include <math.h>
#include "types.h"
#include "keyboard.h"
#include "delay.h"

// void EX0_ISR(void) __interrupt (0) {

// }

void main(void) {
    // IE |= 0b10000001; // enable EX0 ISR

    byte_t key = 0xFF;

    while (1) {
        key = Keyboard_Read();

        // if (key != 0xFF) DISPLAY_PORT = key;

        // Delay_polling(10);
        Delay_5us();
    }
}
