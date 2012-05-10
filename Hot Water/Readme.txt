Hot Water Controller


This intelligent controller is designed to manage your HOTWATER needs from both an energy and economical point of view. 
It control system is managed by the Microcontroller.


Hardware Features :

    * 16 x 2 LCD Display.
    * PCF8563 RTC with 3.3 V CMOS cell.
    * 12 V / 25 Amp relay for motor upto 1hp.
    * 8K Bytes of In-System Self-Programmable Flash.
    * 512 Bytes EEPROM.
    * One 16-bit Timer/Counter.
    * 6-channel ADC in PDIP package.
    * Internal Interrupt sources.
    * Programmable Watchdog Timer with Separate On-chip Oscillator.
    * 23 Programmable I/O Lines.

Software Features :

    * Digital water temperature reading / setting.
    * Auto / Manual Heating of water
    * Power off memory timer.
    * High temperature cut-off.
    * Real-time Clock to show current time.
    * 4 Pre-programmed timers for witching ON the controller at a particular time.


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
Goto /Software folder and install serial-monitor.exe


Operation

Hot water controller can operate in Maunal/Auto mode.

7) Mount Temperature sensor as shown in the "Setup_diagram.gif".


Auto Mode Selection

5) Following are checked to ensure long life of motor.

	a) Over Temperature  - Temperature Limit is checked for over heating of water.


6) As stated earlier 4 Pre-programmed alarms are avaialble for switching ON the motor at a particular time.

7) Hot water controller gives the user freedom to control and set the Temperature of Geyser from a remote location also.

8) How water cotroller has 12 Internal Commands which can be controller remotely over RS232 or Telnet.

#define AL1   1
#define AL2   2
#define AL3   3
#define AL4   4
#define T1    5
#define T2    6
#define T3    7
#define T4    8
#define DATE  9
#define TIME  10
#define RUN   11
#define SET   12


9) As per the functions of Hot water controller explained above.

	a) We have to set Alarm Time of the four alarm which decides when our Geyser has to turned on / off.
		
	b) For running the Hot water controller in Auto mode kindly follow the steps written in Serial_sample.txt
	
	c) Step 1 : Set system Date and Time.
			Time settings : TIME(SPACE)12:12:12(HH:MM:SS)
			Date settings : DATE(SPACE)18:08:09(DD:MM:YY)

					
	d) Step 2 : Set Alarm Time

			Setting time for alarm 3 : T3(SPACE)12:13:00(HH:MM:SS)
			Setting time for alarm 4 : T4(SPACE)12:15:00(HH:MM:SS)

	e) Step 3 : Enable/Disable Alarms

			Setting for enabling alarm 2: AL2 1
			Setting for disnabling alarm 2: AL2 0

	f) Step 4 : Dip the temperature sensor in the water whose water you would like to set as default.
			This step has to performed only once.The Over temperature limit is stored in internal eeprom.
			
			On the Second row of the lcd you will see the value of temperature rising.Note this value and
			use 'SET' command to set it in memory of Hot water controller.
			
			Setting temprature : SET(SPACE)400(Temp.Value)
	
	g) Step 5: Mode setting.This step decides whether you want to run Hot water controller in Manual/Automatic mode.

			Setting in Manual mode its mode number is 2 : RUN 2(Manual)
			Setting in Auto mode its mode number is 1 : RUN 1(Auto)
			Switching of the Hot water controller : RUN 0(Off)


	h) In Auto mode Use 'UP' button to see System date and time and Alarm date and time.
	
	i) Use 'Down' button to select between Alarms 1-4.It will internally incerement the Alarm data which needs to be displayed.
	   Nooe press 'Down' button again.

Manual Mode selection

10) To setup Hot water controller in manual mode in case of emergency.

	a) Press select button once.
	b) Now mode will change from 1 to 2.
	c) Use Up/Down switches to manuall On/Off the relay.

11) LCD Screen Explanation.

First row of LCD displays status of Alarms.Irrescpective of whether Alarm Time has been set or not, If by mistake you have forgotten
to enable Alarms all the status will show as (0  0  0  0).

Suppose we have enabled Alarm1 using AL1 command.Our LCD screen will be displayed as (1 0 0 0).

The Status indicator will automatiacally become 0 once the Time(T1) for Alarm1 has expires.

1st Row : AL1 AL2 AL3 AL4
2nd Row : Temprature_Sensor Temperature_Limit System_Mode


Revision 1.0

Connect RTC PCF8563 (INT) pin number 3 to PINC.2