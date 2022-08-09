#include <xc.h>

#define _XTAL_FREQ 20000000

void main() {
    TRISB = 0x00;
    while (1) {
        PORTBbits.RB1 = 1;
        __delay_ms(100);
        PORTBbits.RB1 = 0;
        __delay_ms(500);
    }
}
