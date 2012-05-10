Concept

Through Mixed Signal PLC microcontroller project - 

8 Digital I/O can be programmed to control On/Off of eight Actuators.
The voltage on Analog pins (INis compared to the 
The On/Off of actuators is dependent on Input voltage of IN1- IN7 Pins.

Operation

The voltage on IN1-IN7 is compared with internal set voltage displayed on the LCD.Channel IN0 is programmed as temperature sensor input.

IN0-IN7 are Voltage Inputs.
OUT0-OUT7 are Digital oupot pins for connect actuators.

Serial Connection - PC

1) Connect Serial cable to PC.
2) Set COM port baudrate to 9600 (8-1-N).


Power Connections

2) Connect DC Power Jack to DC socket.
3) Conenct Red wire to 8 V - 12 V DC voltage from your power supply or battery.
4) Connect Balack wire to ground of your power supply or battery.

Thermistor Connection

5) As shown in the diagram. Solder Red and green wires to your Thermistor sensor.
6) Connect Red wire to IN0 pin and connect corresponding pin to GND.



Hardware Test

7) After power on and connecting your PC through serial cable to kit.
Open Hyper Terminal Software on your computer.

On Windowsd XP - Go to Start Menu -  Accessories - Hyper Terminal
On Windows 7 - You will have to install the software. 
Goto /Software folder and install serial-monitor.exe.



8)Once your connections are made you will see.Following message on your Hyper terminal software screen.

*************************************

        Embedded For You

Intelligent Mized Signal PLC Version 1.0

website:www.embedded4u.com

email:support@embedded4u.com

*************************************

SELECT - STARTHELP PLC

MODE   - STOP PLC

UP     - PLC Channel Increment

DOWN   - PLC Channel Decrement


Syntax:

>AD1 1200.0 

To set Limit of Analog channel 1 to 1200 mv

>TEMP 200.0 

To set Temprature Limit for analog channel (OUT0) to 200 Celsius

>RUN

To START PLC operation

>STOP

To STOP PLC operation


Default Limit set to 4700mV

*************************************

9) Open Serial_sample.txt file to see instructions on how to set limits of Temperature and Channel Inputs.

10) Your LCD will Show Initialing screen and model nuber of PLC kit.

11) After sending command "RUN" to the PLC , the PLC is now in RUN mode.
 Your LCD screen will show a '*'.RUN mode can also be entered by pressing 'SELECT' button.


13) Use Up/Down keys to see comparison values of each channel.User can change these value by giving following instructions.

	a) AD1 2500 [CTRL + ENTER] or [ENTER]
	   Thiscommand is used to set limit of IN1 Channel.
	b) AD2 2500 [CTRL + ENTER] or [ENTER]
	   Thiscommand is used to set limit of IN1 Channel.
	c) For changing limit of any other channel simply replace one in AD'1' with channel 	 	   number of corresponding Input channel.
	d) TEMP 25 [CTRL + ENTER] or  [ENTER]
	   To change the internal temperature coaprison value.

14) In RUN* mode AL1 led LED shows the status of current alarm.

15) In RUN* mode AL2 led LED shows the status of IN1-7 t alarms.


16) Data from each Input channel is displayed on lcd.

On 1st Row -     IN (Channel Number) : Analog IN(Voltage)|Comparison (vOltage)
On 2nd Row -     TC : Temperature  IN / Comaprison Temperature

17) If Analog IN(Voltage) value displayed ont the LCD is greater than (>) current comparison value.The corresonding OUT pin will activated.





12) Use 'MODE' button to stop or Send STOP [CTRL + ENTER] or [ENTER] on hyperterminal.




//Modifications Rev 1.0

Resistance 1K for Temperature , pulled up.
Temperature should show 0.0 C at room temperature of 30 c.



