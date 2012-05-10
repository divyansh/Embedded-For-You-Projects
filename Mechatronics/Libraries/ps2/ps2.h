/*
 * ps2.h - a library to interface with ps2 devices. See comments in
 * ps2.cpp.
 * Written by Chris J. Kiick, January 2008.
 * PS2Mouse class by Jonathan Laloz - http://thepotterproject.com
 * Released into the public domain
 */

#ifndef ps2_h
#define ps2_h

#include "WProgram.h"

struct MouseInfo
{
	char status;
	char x;
	char y;
	char scroll;
	bool leftClick;
	bool middleClick;
	bool rightClick;
	long int cX;
	long int cY;
	long int cScroll;
};

class PS2
{
	public:
		PS2(int clk, int data);
		void write(unsigned char data);
		unsigned char read(void);
	private:
		int _ps2clk;
		int _ps2data;
		void golo(int pin);
		void gohi(int pin);
};

class PS2Mouse: PS2
{
	public:
		PS2Mouse(int clk, int data) : PS2(clk, data) {}
		void init();
		void reset();
		void getData(MouseInfo* retVal);
	private:
		bool hasScrollWheel;
		long int xPos;
		long int yPos;
		long int scrollPos;
};

#endif /* ps2_h */

