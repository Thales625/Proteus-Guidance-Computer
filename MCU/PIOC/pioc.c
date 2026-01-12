#include <at89x52.h>

// #include <math.h>
#include "types.h"
#include "keyboard.h"
#include "delay.h"
#include "display.h"

// void EX0_ISR(void) __interrupt (0) {

// }

void main(void) {
    // IE |= 0b10000001; // enable EX0 ISR

    P0 = 0;

    Delay_polling(1000);

    for (byte_t i=0; i<2; i++) {
        MAX7219_Select(i);
        MAX7219_Init();
    }

    MAX7219_Select(0);

    MAX7219_Write(0x01, 0);
    MAX7219_Write(0x02, 1);
    MAX7219_Write(0x03, 2);
    MAX7219_Write(0x04, 3);
    MAX7219_Write(0x05, 4);
    MAX7219_Write(0x06, 5);

    MAX7219_Write(0x07, 1);
    MAX7219_Write(0x08, 2);


    MAX7219_Select(1);

    MAX7219_Write(0x01, 0);
    MAX7219_Write(0x02, 1);
    MAX7219_Write(0x03, 2);
    MAX7219_Write(0x04, 3);
    MAX7219_Write(0x05, 4);
    MAX7219_Write(0x06, 5);

    MAX7219_Write(0x07, 1);
    MAX7219_Write(0x08, 2);



    MAX7219_Select(0);

    byte_t key = 0xFF;
    float reg1 = 16.37329f;

    long number;
    int digit;

    while (1) {
        // DISPLAY REG1
        number = (long) (reg1 * 100);
    
        for(byte_t i=6; i>0; i--) {
            digit = number % 10;
            number = number / 10;
            
            MAX7219_Write(i, i==4 ? digit | 0x80 : digit);
            // Display_Write7Seg(digit, i, i==4);
        }

        Delay_polling(100);

        // READ KEYBOARD
        //key = Keyboard_Read();

        // if (key != 0xFF) DISPLAY_PORT = key;

        // Delay_polling(10);
        //Delay_5us();
    }

    while (1);
}
