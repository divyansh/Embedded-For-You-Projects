{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Arial;}{\f1\fswiss\fprq2\fcharset0 Arial;}}
{\*\generator Msftedit 5.41.15.1507;}\viewkind4\uc1\pard\f0\fs20 Mechatronis Trainer\par
\par
A robot can be defined as a programmable, self - controlled device consisting of electronic, electrical, or mechanical units. A robot is a mechanical intelligent agent which reacts to its environment and can perform tasks on its own, or with guidance. In practice a robot is an electro - mechanical machine which is guided by programmable & self - controlled computers and electronic programming. A Robot can be considered to have five basic things which are similar to as seen in human beings.\par
\par
Features :\par
\par
    * PS2 Mouse & Keyboard control.\par
    * Working with Stepper & DC motors using LM293D H bridge driver.\par
    * LDR sensor for light detection.\par
    * Infrared obstacle detection.\par
    * MAX232 for Serial Interface.\par
    * Switches.\par
    * Serial to paralleled buffer.\par
\par
\par
Downlaod CD contents\par
\par
Copy the complete ESAT Software CD to your local hard drive.\par
\par
/ arduino-0021 - This folder contains Arduino software.Kindly go to www.arduino.cc website to download latest version.\par
\par
/ Programmer - Software for programming and downloading .hex file to MCU.\par
\par
\tab /avrdude-gui_v0.2.0 - This software is a GUI software of traditional dos based avr dude software.\par
\par
\tab /KhazamaAVRProgrammer - Khazama AVR Programmer is a general purpose tool like Avrdude.It is more user friendly.\par
\par
/Driver - This folder contains USBasp drivers for ESAT-ISP tool and PL2303 driver If you are connecting Serial port externally through USB-RS232 conerter.\par
\par
/Terminal Software - Hyperterminal software.\par
\par
/DunoOS - Open source RTOS program for Arduino.\par
\par
Copy content of Libraries folder in your present libraries directory inside Arduino/libraries\par
\par
\par
Mechatronics Operations\par
\par
Car_mouse Demo\par
\par
1) As mentioned in features Mechatronics trainer can be connected to PS2 mouse.\par
2) Connect your PS2 mouse in mouse conenctor as mentioned in the setup_diagram.gif.\par
3) Make the connection using connecting wires as mentioned in the Setup_diagram.gif.\par
4) Open ..\\Mechatronics\\Car_mouse\\Car_mouse.pde examples using Arduino Software in \\arduino0021 folder inside CD.\par
\par
5) In the source code you will see following two commands.\par
\par
AF_DCMotor motor(1); // Initialize DC motor 1\par
AF_DCMotor motor1(4);// Initialize DC motor 4\par
\par
6) There are in total four DC motor ports and two Stepper motor ports.These commands initialize DC motor Port 1 and 4 in the software.\par
\f1\par
7) After making connections of Ps2 mouse and Stepper motor connect your mechatronics trainer to PC using RS232 cable.\par
\par
8) In software default baudrate is set to 9600 using Serial.begin(9600); command.\par
\par
9)Now as Left and Right buttons of mouse are clicked your serial Terminal will display LEFT / RIGHT and correspondingly the motor will also move in the direction as mentioned in the code.\par
\par
10) Follow all instructions in ESAT-ISP.txt to setup and compile the software using ESAT-ISP.\par
\par
11) For IC Mega328p kindly use Avrdude_gui software present in software folder to erase the device inpalce of Khazama Programmer.\par
\f0\par
//Revision 1.0\par
\par
Kindly note a mistake in PCB printing. DC 3(DC motor 3) and DC 4(DC motor 4) are reversed.\par
Kindly refer to  Setup_diagram.gif for correct representation.\par
\par
\par
\par
\par
}
 