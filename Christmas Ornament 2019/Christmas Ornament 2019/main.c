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

#define HC595_PORT   PORTB
#define HC595_DDR    DDRB

#define HC595_DS_POS PORTB3      //Data pin (DS) pin location
#define HC595_SH_CP_POS PORTB1      //Shift Clock (SH_CP) pin location
#define HC595_ST_CP_POS PORTB2      //Store Clock (ST_CP) pin location

#define HC595DataHigh() (HC595_PORT|=(1<<HC595_DS_POS))
#define HC595DataLow() (HC595_PORT&=(~(1<<HC595_DS_POS)))

void initHC595(void);
void HC595Pulse(void);
void HC595Latch(void);
void HC595Write(uint8_t);


int main(void)
{
	
	DDRB |= (1 << PORTB1) | (1 << PORTB2) | (1 << PORTB3); // Shift register pins as output
	PORTB = 0; // Start with everything off
	DDRB |= 1 << PINB4;
	char lightson = 0;
	
	HC595Write(0);
	uint8_t num = 0xFF;
	
	uint16_t leds = 0b0000000000000000;
	
    while (1) 
    {
		for(int x = 0; x <= 8; x++)
		{
			_delay_ms(500);
			num = (1 << x);
			if(x != 8)
			{
				HC595Write(num);
				PORTB &= ~(1 << PORTB4);
			}
			else
			{
				HC595Write(0);
				PORTB |= (1 << PORTB4);
			}
		}
    }
}

void initHC595()
{
	HC595_DDR |= (1 << HC595_SH_CP_POS)| (1 << HC595_ST_CP_POS) | (1 << HC595_DS_POS);
}
void HC595Pulse()
{
	//Pulse the Shift Clock

	HC595_PORT|=(1<<HC595_SH_CP_POS);//HIGH

	HC595_PORT&=(~(1<<HC595_SH_CP_POS));//LOW
}
//Sends a clock pulse on ST_CP line
void HC595Latch()
{
	//Pulse the Store Clock

	HC595_PORT|=(1<<HC595_ST_CP_POS);//HIGH
	//_delay_loop_1(1);

	HC595_PORT&=(~(1<<HC595_ST_CP_POS));//LOW
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