Hardware Connections




Serial Connection - PC

1) Connect Serial cable to PC.
2) Set COM port baudrate to 9600 (8-1-N).




Power Connections

2) Connect DC Power Jack to DC socket.
3) Conenct Red wire to 8 V - 12 V DC voltage from your power supply or battery.
4) Connect Balack wire to ground of your power supply or battery.

Piezo Connection

5) As shown in the diagram. Solder Red and green wires to your piezo sensor.
6) Connect Red wire to A0-Piezo IN pin and connect corresponding pin to GND(green wire).




Hardware Test

7) After power on and connecting your PC through serial cable to kit.
Open Hyper Terminal Software on your computer.

On Windowsd XP - Go to Start Menu -  Accessories - Hyper Terminal
On Windows 7 - You will have to install the software. 
Goto /Software folder and install serial-monitor.exe.



8)Once your connections are made you will see.Following message on your Hyper terminal software screen.

************************************
        Embedded For You
Musical Instrument Digital Interface 1.0 
website:www.embedded4u.com                 
email:support@embedded4u.com
*************************************
>


9) Your LCD will Show Initialing screen and model nuber of MIDI kit.


10) After That the Kit will stop for you to strike the Piezo Sensor.


11) The Velocity of stricke is converted to Volume and communicated in form of a 
midi message on Serial port.

	a)Default Note - 0x46
	b)Default Instrument - 0x99
	c)Default Channel - 10 (0xC9 ,117)

12) There is option to change the volume and Instrument using keys.


13) Instrument Select Key "Inst. select" is used to change the instrmuent playing on current channel.
	a) Select the key abd press up down button to change the istrument.


14) Volume Select Key "Volume" is used to change the volume on current channel.
	a) Select the key abd press up down button to change the volume.


15) MIDI Node Keys are used to send MIDI node as per their key number given in the diagram.

Maximum volumen of the Channel is set to 127.
Maximum Instruments that MIDI kit can select are 127.


16) Data from each Strike from piezo sensor is displayed on lcd.

On 1st Row -     Volume(1st)     Sample(2nd)     Key_Number(3rd)
On 2nd Row -     Voltage(1st)




MIDI - Concept

1)  The Strike is converted intop many samples by internal ADC.
2)  'Sample' - Sample is counted only if it is greater than certain Threshhold voltage ( 10 mv).
3)  'Volume' -  Formula for volume (adc_val/sample)/8.
	a) We have taken Eight values for calculating the maximum or peak or How 	   hard we have strike the piezo sensor.
4)  'Key_Number' - Number of each key.
5)  'Voltage' - Max Voltage of Eight Samples recieved
6)  Lcd Values are updated on strike of Piezo sensor.
7)  AL1 Led(Green LED) glows whenever Piezo is striked and LCD is updated.


Kit Includes

Serial	Item Name	Qty
1	Power Cable	1
2	Rs232 Cable	1
3	LCD 16X2	1
4	Piezo Sensor	1




