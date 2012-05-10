/*
 * ps2.cpp - an interface library for ps2 devices.  Common devices are
 * mice, keyboard, barcode scanners etc.  See the examples for mouse and
 * keyboard interfacing.
 * limitations:
 *      we do not handle parity errors.
 *      The timing constants are hard coded from the spec. Data rate is
 *         not impressive.
 *      probably lots of room for optimization.
 *
 * PS2Mouse class by Jonathan Laloz - http://thepotterproject.com
 * Released into the public domain
 *
 */

#include "ps2.h"

/*
 * the clock and data pins can be wired directly to the clk and data pins
 * of the PS2 connector.  No external parts are needed.
 */
PS2::PS2(int clk, int data)
{
	_ps2clk = clk;
	_ps2data = data;
	gohi(_ps2clk);
	gohi(_ps2data);
}

/*
 * according to some code I saw, these functions will
 * correctly set the clock and data pins for
 * various conditions.  It's done this way so you don't need
 * pullup resistors.
 */
void
PS2::gohi(int pin)
{
	pinMode(pin, INPUT);
	digitalWrite(pin, HIGH);
}

void
PS2::golo(int pin)
{
	pinMode(pin, OUTPUT);
	digitalWrite(pin, LOW);
}

/* write a byte to the PS2 device */
void
PS2::write(unsigned char data)
{
	unsigned char i;
	unsigned char parity = 1;
	
	gohi(_ps2data);
	gohi(_ps2clk);
	delayMicroseconds(300);
	golo(_ps2clk);
	delayMicroseconds(300);
	golo(_ps2data);
	delayMicroseconds(10);
	gohi(_ps2clk);	// start bit
	/* wait for device to take control of clock */
	while (digitalRead(_ps2clk) == HIGH)
		;	// this loop intentionally left blank
	// clear to send data
	for (i=0; i < 8; i++)
	{
		if (data & 0x01)
		{
			gohi(_ps2data);
		} else {
			golo(_ps2data);
		}
		// wait for clock
		while (digitalRead(_ps2clk) == LOW)
			;
		while (digitalRead(_ps2clk) == HIGH)
			;
		parity = parity ^ (data & 0x01);
		data = data >> 1;
	}
	// parity bit
	if (parity)
	{
		gohi(_ps2data);
	} else {
		golo(_ps2data);
	}
	// clock cycle - like ack.
	while (digitalRead(_ps2clk) == LOW)
		;
	while (digitalRead(_ps2clk) == HIGH)
		;
	// stop bit
	gohi(_ps2data);
	delayMicroseconds(50);
	while (digitalRead(_ps2clk) == HIGH)
		;
	// mode switch
	while ((digitalRead(_ps2clk) == LOW) || (digitalRead(_ps2data) == LOW))
		;
	// hold up incoming data
	golo(_ps2clk);
}


/*
 * read a byte of data from the ps2 device.  Ignores parity.
 */
unsigned char
PS2::read(void)
{
	unsigned char data = 0x00;
	unsigned char i;
	unsigned char bit = 0x01;

	// start clock
	gohi(_ps2clk);
	gohi(_ps2data);
	delayMicroseconds(50);
	while (digitalRead(_ps2clk) == HIGH)
		;
	delayMicroseconds(5);	// not sure why.
	while (digitalRead(_ps2clk) == LOW)
		;	// eat start bit
	for (i=0; i < 8; i++)
	{
		while (digitalRead(_ps2clk) == HIGH)
			;
		if (digitalRead(_ps2data) == HIGH)
		{
			data = data | bit;
		}
		while (digitalRead(_ps2clk) == LOW)
			;
		bit = bit << 1;
	}
	// eat parity bit, ignore it.
	while (digitalRead(_ps2clk) == HIGH)
		;
	while (digitalRead(_ps2clk) == LOW)
		;
	// eat stop bit
	while (digitalRead(_ps2clk) == HIGH)
		;
	while (digitalRead(_ps2clk) == LOW)
		;
	golo(_ps2clk);	// hold incoming data

	return data;
}

//PS2 Mouse class - by Jonathan Laloz (c)2009 - The Potter Project - http://www.thepotterproject.net

void PS2Mouse::init()
{
	//init/reset internal variables
	xPos = 0;
	yPos = 0;
	scrollPos = 0;
	hasScrollWheel = false;	
	
	write(0xff);  // reset
	read();  // ack byte
	read();  // blank */
	read();  // blank */
	write(0xf0);  // remote mode
	read();  // ack
	  
	delayMicroseconds(100);	  
	  
	//Enter mouse scrolling mode - thanks to http://www.computer-engineering.org/ps2mouse/
	write(0xF3); //Set sample rate 1
	read();  // ack byte
	write(0xC8);
	read();  // ack byte
	  
	write(0xF3); //Set sample rate 2
	read();  // ack byte
	write(0x64);
	read();  // ack byte  
	  
	write(0xF3); //Set sample rate 3
	read();  // ack byte
	write(0x50);
	read();  // ack byte  
	  
	write(0xF2); //Get device type
	read();  // ack byte
	int dT = read();  // device ID byte
	  
	hasScrollWheel = dT == 3;
	  
	delayMicroseconds(100);
}

void PS2Mouse::reset()
{
	init();
}

void PS2Mouse::getData(MouseInfo* retVal)
{	
	/* get a reading from the mouse */
	write(0xeb);  // give me data!
	read();      // ignore ack
	retVal->status = read();
	retVal->x =  read();
	retVal->y =  read();
	
	int ls = retVal->status & 9;
	retVal->leftClick = (ls == 9); 
	
	int ms = retVal->status & 12;
	retVal->middleClick = (ms == 12);
	
	int rs = retVal->status & 10;
	retVal->rightClick = (rs == 10);
	
	xPos += retVal->x;
	yPos += retVal->y;
	
	retVal->cX = xPos;
	retVal->cY = yPos;
	  
	if (hasScrollWheel)
	{
		retVal->scroll = read();
		scrollPos += retVal->scroll;
		retVal->cScroll = scrollPos;
	}
	else
	{
		retVal->scroll = 0;
		retVal->cScroll = 0;
	}
}



































