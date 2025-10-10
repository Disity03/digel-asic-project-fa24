/*
 * 
 * Ovaj program testira sve modove rada wave generatora
 * i čuva talasne oblike u fajlove za kasniju analizu.
 */

#include <stdint.h>
#include <stdbool.h>


// Memorijsko mapiranje 
#define reg_spictrl (*(volatile uint32_t*)0x02000000)
#define reg_uart_clkdiv (*(volatile uint32_t*)0x02000004) // UART takt
#define reg_uart_data (*(volatile uint32_t*)0x02000008)   // UART podaci


// Registri Wave genereratora
#define WAVE_GEN_BASE 0x04000000
#define WAVE_MODE     (*(volatile uint32_t*)(WAVE_GEN_BASE + 0x00))
#define WAVE_PARAM1   (*(volatile uint32_t*)(WAVE_GEN_BASE + 0x04))
#define WAVE_PARAM2   (*(volatile uint32_t*)(WAVE_GEN_BASE + 0x08))
#define WAVE_OUTPUT   (*(volatile uint32_t*)(WAVE_GEN_BASE + 0x0C))

// Modovi Wave generatora
#define WAVE_OFF      0
#define WAVE_TOGGLE   1
#define WAVE_PWM      2
#define WAVE_PRN      3
#define WAVE_RECT     4
#define WAVE_TRI      5
#define WAVE_SAW      6
#define WAVE_SINE     7

// UART func -> izvuceno iz firmware.c
void putchar(char c)
{
	if (c == '\n')
		putchar('\r');
	reg_uart_data = c;
}

void print(const char *p)
{
	while (*p)
		putchar(*(p++));
}

void print_hex(uint32_t v, int digits)
{
	for (int i = 7; i >= 0; i--) {
		char c = "0123456789abcdef"[(v >> (4*i)) & 15];
		if (c == '0' && i >= digits) continue;
		putchar(c);
		digits = i;
	}
}

void print_dec(uint32_t v)
{
	if (v >= 1000) {
		print(">=1000");
		return;
	}

	if      (v >= 900) { putchar('9'); v -= 900; }
	else if (v >= 800) { putchar('8'); v -= 800; }
	else if (v >= 700) { putchar('7'); v -= 700; }
	else if (v >= 600) { putchar('6'); v -= 600; }
	else if (v >= 500) { putchar('5'); v -= 500; }
	else if (v >= 400) { putchar('4'); v -= 400; }
	else if (v >= 300) { putchar('3'); v -= 300; }
	else if (v >= 200) { putchar('2'); v -= 200; }
	else if (v >= 100) { putchar('1'); v -= 100; }

	if      (v >= 90) { putchar('9'); v -= 90; }
	else if (v >= 80) { putchar('8'); v -= 80; }
	else if (v >= 70) { putchar('7'); v -= 70; }
	else if (v >= 60) { putchar('6'); v -= 60; }
	else if (v >= 50) { putchar('5'); v -= 50; }
	else if (v >= 40) { putchar('4'); v -= 40; }
	else if (v >= 30) { putchar('3'); v -= 30; }
	else if (v >= 20) { putchar('2'); v -= 20; }
	else if (v >= 10) { putchar('1'); v -= 10; }

	if      (v >= 9) { putchar('9'); v -= 9; }
	else if (v >= 8) { putchar('8'); v -= 8; }
	else if (v >= 7) { putchar('7'); v -= 7; }
	else if (v >= 6) { putchar('6'); v -= 6; }
	else if (v >= 5) { putchar('5'); v -= 5; }
	else if (v >= 4) { putchar('4'); v -= 4; }
	else if (v >= 3) { putchar('3'); v -= 3; }
	else if (v >= 2) { putchar('2'); v -= 2; }
	else if (v >= 1) { putchar('1'); v -= 1; }
	else putchar('0');
}

// Wave Generator funkcije
void wave_gen_set_mode(uint32_t mode)
{
    WAVE_MODE = mode;
}

void wave_gen_set_param1(uint32_t param)
{
    WAVE_PARAM1 = param;
}

void wave_gen_set_param2(uint32_t param)
{
    WAVE_PARAM2 = param;
}

uint32_t wave_gen_get_output()
{
    return WAVE_OUTPUT;
}

void wave_gen_demonstrate_mode(uint32_t mode, uint32_t param1, uint32_t param2)
{
    print("MODE: ");
    switch(mode) {
        case WAVE_OFF:    print("OFF"); break;
        case WAVE_TOGGLE: print("TOGGLE"); break;
        case WAVE_PWM:    print("PWM"); break;
        case WAVE_PRN:    print("PRN"); break;
        case WAVE_RECT:   print("RECTANGULAR"); break;
        case WAVE_TRI:    print("TRIANGULAR"); break;
        case WAVE_SAW:    print("SAWTOOTH"); break;
        case WAVE_SINE:   print("SINE"); break;
        default:          print("UNKNOWN"); break;
    }
    // Postavi mod
    wave_gen_set_mode(mode);
    wave_gen_set_param1(param1);
    wave_gen_set_param2(param2);
    
    for(int i=0; i < 100; i++){
    	
    }
}

void main()
{
    reg_uart_clkdiv = 104;
    
    wave_gen_demonstrate_mode(WAVE_OFF, 0, 0);
    wave_gen_demonstrate_mode(WAVE_TOGGLE, 2, 0);
    wave_gen_demonstrate_mode(WAVE_PWM, 5, 2);
    wave_gen_demonstrate_mode(WAVE_PRN, 16, 0xB400);
    wave_gen_demonstrate_mode(WAVE_RECT, 100, 30);
    wave_gen_demonstrate_mode(WAVE_TRI, 100, 2);
    wave_gen_demonstrate_mode(WAVE_SAW, 100, 2);
    wave_gen_demonstrate_mode(WAVE_SINE, 100, 20);
}
