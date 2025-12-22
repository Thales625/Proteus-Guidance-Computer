#ifndef DELAY_H
#define DELAY_H

#include <at89x52.h>

void Delay_polling(unsigned int ms) {
    TMOD |= 0x01;
    
    while(ms--) {
        TH0 = 0xFC;
        TL0 = 0x17;
        TR0 = 1;
        while(!TF0);
        TF0 = 0;
        TR0 = 0;
    }
}

void Delay_5us(void) {
    unsigned char i;
    for(i = 0; i < 5; i++);
}

#endif
