Concept

COlor Analyzer

The main purpose of the RGB color model is for the sensing, representation, and display of images 
in electronic systems, such as televisions and computers, though it has also been used in conventional photography. 

Acommon requirement in the field of color sensing is that of color identification, or sorting of objects by color.


TCS230 is an RGB color sensor is used in applications requiring identification of objects based upon their color or RGB content. It is capable of making high-resolution color measurements using the three values obtained from its red, green, and blue sensors.
Operation

The Atmel ATMega8 is the most efficient high performance , low power 8-bit RISC microcontroller, that offers the following main features used in this project.


16x2 Alpha numeric LCD Display.

    * TAOS TCS230 RGB colour sensor.
    * PC Connectivity using.
    * RS-232.
    * Supply voltage : +12V, 600mA` from battery emulator.
    * Power ON Reset.
    * External Interrupt.
    * 8-bit Timer/Counters in compare mode.
    * Input/output Ports.

Software Features :

    * RGB & HSL Coordinate value displayed.
    * LIGHT SOURCE ON\OFF for diagnosing color of an object.
    * SELF Test Feature for calibration.


Serial Connection - PC

1) Connect Serial cable to PC.
2) Set COM port baudrate to 9600 (8-1-N).


Power Connections

2) Connect DC Power Jack to DC socket.
3) Conenct Red wire to 8 V - 12 V DC voltage from your power supply or battery.
4) Connect Balack wire to ground of your power supply or battery.

Thermistor Connection

5) As shown in the diagram. Remove the Color sensor PCB to use it as a sensor module /proble seperately.
6) Correspondingly wires cann be cionnected between the to connectors.



Hardware Test

7) After power on and connecting your PC through serial cable to kit.
Open Hyper Terminal Software on your computer.

On Windowsd XP - Go to Start Menu -  Accessories - Hyper Terminal
On Windows 7 - You will have to install the software. 
Goto /Software folder and install serial-monitor.exe.



8)Once your connections are made you will see.Following message on your Hyper terminal software screen.

*************************************

        Embedded For You

Color Analyzer Version 1.0

website:www.embedded4u.com

email:support@embedded4u.com

*************************************


9) Open Serial_sample.txt file to see the demo of file recieved over serial.

>R:0.01 B:0.00 G:0.00 I:0.00

R : Instensity of Red radiations
B : Instensity of Blue radiations
G : Instensity of Green radiations
I : I is total Illumincation pf visible region.
10) Your LCD will Show Initialing screen and model nuber of Coor Analyzer kit.

11) Texas TCS230 converts the visible light into 4 Parts using filters of 
different colors which are selected using S2 and S3 select pins on TCS230 sensor.Kindly read the TCS230 datasheet.

	
On 1st Row -     Red and Blue color Intensity is shown.
On 2nd Row -     Green and Total Illumination is shown.

12) Use Display key to convert RGB values to HSL.

13) Light On /Off button is used to Switch on /off LED's 1 and 2 (white Led's )in case we have to measure color of object.

14) Self test button is used to check whether sensor is connected in correct position.




//No Modifications



