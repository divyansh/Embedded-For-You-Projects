RGB Led with Remote 	

RGB LED Controller enables you to control the LED and switch between various colours using a remote control.
This product can be useful for LED manufacturers to test the LED for all three colours. 
It can also be incorporated into all kinds of things including mood lamps, lighting for a sculpture, 
accent lighting for rooms and so on.

RGB LED Controller uses Atmel ATMega8 microcontroller,which is the most efficient high performance, 
low power 8-bit RISC microcontroller, that offers the following main features used in this project :


Features :

    * IR receiver (TSOP1838)
    * PC Connectivity using RS 232.
    * 5 V  power supply for Bi - polar stepper motor.
    * RGB LED connector.
    * Three PWM Channels.
    * Two 8-bit Timer/Counters with separate Prescaler, one Compare Mode.

Software features :

    * Display of decoded command received from IR receiver in binary and decimal format.
    * Software programmable for implementing various Infrared encoding schemes from different manufacturers.
    * Total 14 bits in one instruction.
    * RC5 coding scheme of Philips.
    * 5 bit address word.
    * 6 bit command word.
    * Bi-phase coding (aka Manchester coding).
    * Carrier frequency of 36kHz.
    * Constant bit time of 1.778ms (64 cycles of 36 kHz).


The Atmel ATMega8 is the most efficient high performance, low power 8-bit RISC microcontroller 
that offers the following main features used in this project.

    * 16x2 LCD Display.
    * Supply voltage : +12V, 600mA` from battery emulator.
    * Power ON Reset.
    * Expansion connector for connecting probe.
    * Constant Current circuit.
    * Alarm LED.


Connection - RGB LED Controller with Remote

Serial Connection - PC

1) Connect Serial cable to PC.
2) Set COM port baudrate to 9600 (8-1-N).



Power Connections

3) Connect DC Power Jack to DC socket.
4) Conenct Red wire to 8 V - 12 V DC voltage from your power supply or battery.
5) Connect Balack wire to ground of your power supply or battery.


Hardware Test

6) After power on and connecting your PC through serial cable to kit.
Open Hyper Terminal Software on your computer.

On Windowsd XP - Go to Start Menu -  Accessories - Hyper Terminal
On Windows 7 - You will have to install the software. 
Goto /Software folder and install serial-monitor.exe.


7)Once your connections are made you will see.Following message on your Hyper terminal software screen.

*************************************

        Embedded For You

RGB LED Controller with Remote

website:www.embedded4u.com

email:support@embedded4u.com

*************************************




8) Open Serial_sample.txt file.This is the sample of Serial data recieved over RS232 protocol.


9) Press Remote Keys against the IR Reciever marked in the Setup_diagram.gif file.LED mounted besides the IR module
 will blink as an when the data is recieved.

10) Once the Setup message is recieved over Rs232, you will now see Decoded codes recieved from the IR reciever on your
terminal screen.


Algorithm - 


#define RED PORTB.3
#define GREEN PORTB.2
#define BLUE PORTB.1

      switch(keyval)
      {            
      case 100:      //Run stepper motor FWD
      	m_fwd=ON;
      	m_rev=OF;
      	keyval=0;
      break;
      case 82:	//Run stepper motor REV
      	m_fwd=OF;
      	m_rev=ON;
      	keyval=0;   
      break;
      case 66:	//STOP Stepper
      	m_fwd=OF;
      	m_rev=OF;           
      	PORTC=0x00;
      	keyval=0;      
      break;
      case 84:   //RED LED
      	RED=ON;
      	GREEN=OF;
      	BLUE=OF;  
      	keyval=0;      
      break; 
      case 162: //GREEN LED
      	RED=OF;
      	GREEN=ON;
      	BLUE=OF;  
      	keyval=0;      
      break;                       
      case 92:  //BLUE LED   
      	RED=OF;
      	GREEN=OF;
      	BLUE=ON;  
      	keyval=0;      
      break;      
      case 76:     
      	RED=OF;
      	GREEN=OF;
      	BLUE=OF;  
      	keyval=0;      
      break; 
      default:
}


11) For Example code "VALUE :542 66" means 542 is the RAW IR code in hex and 66 is the decimal representation of the key
which is further decoded from RAW IR code recieved.

12) Further follow the connection of RGB LED.The 'COM' point on the conenctor should be connected to COM point of the LED.
There are usually 4 points in a RGB led.

13) Further kit can also be used to cotnrol a stepper and its speed.

14) Seperate Power supply/ Batter can be used to connect Stepper motor of any power rating ( 5-24 V Volts DC is recommened).

Note : 

There are many IR protocols and remotes manufacturers in market.Which is why we recommend people to buy Tested remote
from us.

Stepper motor and IR remote is extra.


Revision 1.0


IR output from PORTB.3 is changed to PORTB.0
