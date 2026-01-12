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

    byte_t key = 0xFF;

    float reg1 = 16.37329f;

    //P0 = 0b00110100;
    // P0 = 0xFF;

  

    while (1) {
        // DISPLAY REG1
        long numero = (long)(reg1 * 100); 
    
        for(byte_t i=6; i>0; i--) {
            
            int digito_atual = numero % 10;
            numero = numero / 10;
            
            P0 = 0;
            Display_Write7Seg(digito_atual, i, i==4);
            // Display_Write7Seg(digito_atual, 6-i, i==2 ? 1 : 0);
            // Delay_polling(20);
            Delay_5us();
        }

        Delay_polling(200);

        // READ KEYBOARD
        //key = Keyboard_Read();

        // if (key != 0xFF) DISPLAY_PORT = key;

        // Delay_polling(10);
        //Delay_5us();
    }
}
