/*
 * Christmas Ornament 2019.c
 *
 * Created: 11/22/2019 10:23:28 PM
 * Author : jacob
 */ 

#define F_CPU 1200000
#include <avr/io.h>
#include <avr/sfr_defs.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>

#define HC595_PORT PORTB
#define HC595_DDR DDRB

#define HC595_DS_POS PORTB3 // Data pin (DS) pin location
#define HC595_SH_CP_POS PORTB1 // Shift Clock (SH_CP) pin location
#define HC595_ST_CP_POS PORTB2 // Store Clock (ST_CP) pin location

#define HC595DataHigh() (HC595_PORT |= (1 << HC595_DS_POS))
#define HC595DataLow() (HC595_PORT &= (~ (1 << HC595_DS_POS)))

#define delayTime 200

void initHC595(void);
void HC595Pulse(void);
void HC595Latch(void);
void HC595Write(uint8_t);

char lightson = 0;
	
uint8_t byte = 00;

uint16_t leds = 0b0000000000000000;
	


int main(void)
{
	
	DDRB |= (1 << PORTB1) | (1 << PORTB2) | (1 << PORTB3); // Shift register pins as output
	PORTB = 0; // Start with everything off
	DDRB |= 1 << PORTB0; //led
	DDRB &= ~ (1 << PORTB4); //PB
	
	PRR = 0xFF;
	set_sleep_mode(SLEEP_MODE_PWR_DOWN); // type of sleep mode
	
	PCMSK |= (1 << PCINT4);
	GIMSK |= (1 << PCIE);
	
	sei(); // Enable interrupts
	
	HC595Write(0); // Turn off all LEDs on shift register
	uint8_t num = 00;
	uint8_t byte = 0b00000000;
	
	uint16_t leds = 0b0000000000000000;
	
    while (1) 
    {
		
		sleep_mode(); // If the ISR isn't running, hop into sleep mode to conserve battery

    }
}
/* Turn top LED off */
void singleLEDoff() {
	PORTB &= ~(1 << PORTB0);
}
/* Turn top LED on */
void singleLEDon() {
	PORTB |= (1 << PORTB0);
}
/* Turn LEDs on one by one and leaving the previous LED on clockwise */
void patternFillFWD()
{

	uint8_t pattern = 0;
	
	singleLEDon();
	
	_delay_ms(delayTime);
	
	for(int y = 0; y <= 7; y++)
	{
		pattern = pattern | (1 << y);
		HC595Write(pattern);
		_delay_ms(delayTime);
	}
	singleLEDoff();
	
	HC595Write(0);
	
	_delay_ms(delayTime);
	
}
/* Turn LEDs on one by one and leaving the previous LED on counter clockwise */
void patternFillBKD()
{
	uint8_t pattern = 0;
	
	singleLEDon();
	
	_delay_ms(delayTime);
	
	for(int y = 7; y >= 0; y--)
	{
		pattern = pattern | (1 << y);
		HC595Write(pattern);
		_delay_ms(delayTime);
	}
	singleLEDoff();
	
	HC595Write(0);
	
	_delay_ms(delayTime);
}
/* Turn LEDs on one by one going clockwise */
void pattern1by1FWD()
{
	uint8_t pattern = 0;
	
	HC595Write(0);
	
	singleLEDon();
	
	_delay_ms(delayTime);
	
	singleLEDoff();
	
	for(int x = 0; x <= 7; x++)
	{
		pattern = (1 << x);
		HC595Write(pattern);
		_delay_ms(delayTime);
	}
}
/* Turn LEDs on one by one going counter clockwise */
void pattern1by1BKD()
{
	uint8_t pattern = 0;
	
	HC595Write(0); // Turn off all LEDs on shift register
	
	singleLEDon(); // Turn on top LED
	
	_delay_ms(delayTime); // Delay for time
	
	singleLEDoff(); // Turn off top LED
	
	for(int x = 7; x >= 0; x--)
	{
		pattern = (1 << x);
		HC595Write(pattern);
		_delay_ms(delayTime);
	}
}

void randomPattern1()
{
	singleLEDoff();
	HC595Write(0b10101010);
}

void randomPattern2()
{
	singleLEDon();
	HC595Write(0b01010101);
}
void randomPattern3()
{
	singleLEDon();
	HC595Write(0b01011001);
}
void randomPattern4()
{
	singleLEDoff();
	HC595Write(0b10100110);
}


void initHC595()
{
	/* Set shift register pins as outputs */
	HC595_DDR |= (1 << HC595_SH_CP_POS)| (1 << HC595_ST_CP_POS) | (1 << HC595_DS_POS); 
}
void HC595Pulse()
{
	//Pulse the Shift Clock

	HC595_PORT|=(1<<HC595_SH_CP_POS); // HIGH

	HC595_PORT&=(~(1<<HC595_SH_CP_POS)); // LOW
}
// Sends a clock pulse on ST_CP line
void HC595Latch()
{
	//Pulse the Store Clock

	HC595_PORT|=(1<<HC595_ST_CP_POS); // HIGH
	//_delay_loop_1(1);

	HC595_PORT&=(~(1<<HC595_ST_CP_POS)); // LOW
	//_delay_loop_1(1);
}
void HC595Write(uint8_t data)
{
	//Send each 8 bits serially

	//Order is MSB first
	for(uint8_t i=0;i<8;i++)
	{
		//Output the data on DS line according to the
		//Value of MSB
		if(data & 0b10000000)
		{
			//MSB is 1 so output high

			HC595DataHigh();
		}
		else
		{
			//MSB is 0 so output high
			HC595DataLow();
		}

		HC595Pulse();  //Pulse the Clock line
		data=data<<1;  //Now bring next bit at MSB position

	}

	//Now all 8 bits have been transferred to shift register
	//Move them to output latch at one
	HC595Latch();
}

ISR(PCINT0_vect)
{
	/* If button is pressed, begin animations */
	if(PINB & (1 << PINB4)) {
		lightson = 1;
	}
	
	/* If the button was pressed, run through the animations 7 times */
	if(lightson == 1)
	{
		for(int x = 0; x <= 6; x++)
		{
			patternFillFWD();
			_delay_ms(50);

			patternFillBKD();
			_delay_ms(50);

			pattern1by1FWD();
			_delay_ms(50);

			pattern1by1BKD();
			_delay_ms(50);
			
			randomPattern1();
			_delay_ms(250);
			
			randomPattern2();
			_delay_ms(250);
			
			randomPattern1();
			_delay_ms(250);
			
			randomPattern2();
			_delay_ms(250);
			
			randomPattern1();
			_delay_ms(250);
			
			randomPattern2();
			_delay_ms(250);
			
			randomPattern1();
			_delay_ms(250);
			
			randomPattern2();
			_delay_ms(250);
			
			randomPattern3();
			_delay_ms(250);
			
			randomPattern4();
			_delay_ms(250);
			
			randomPattern3();
			_delay_ms(250);
			
			randomPattern4();
			_delay_ms(250);

		}
		lightson = 0; // Reset button press indicator
		HC595Write(0); // Turn off all LEDS
		singleLEDoff(); // Turn off single LED on top
	}
}