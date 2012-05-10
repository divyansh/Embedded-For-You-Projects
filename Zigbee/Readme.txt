Software Installation

1. Go to CD\Zigbee Eval board.

2. Install x_CTU.exe or download the lates version from http://www.digi.com/support .

Hardware Connection.

1. Connect the Wires as shown in the Setup_Diagram.Jpg

	a.	RTS(1) - RX
	b.	CTS(1) - TX
	c.	RTS(2) - TOUT

Placing the Xbee-S2 module

2. As per the design shown on the PCB.Mount the Xbee-S2 module with cornered edges facing upwards.


Power Connections

3. Connect Jumper J2 on your board to 4.5V - 5V DC.
4. Connect GND pin to Ground of the DC supply.

5. Connect the Serial cable to Serial port of your PC/Laptop.

Software- Hardware Connection

1. After successful Installation. Open the X_CTU Software.

2. On the main window, select the COM port to which the Serial cable is connected.

3. Once the supply is given Ass. Led ( Orange LED) will either blink or glow continously.

4. Select the following COM Port  settings.

Baud - 9600
Flow control - None
Data bits - 8
Parity - None
Stop Bits - 1

5. Now press the Test/Query button.If the connections are successful the window will show an Ok message with current version of Xbee-S2 configuration loaded inside the Xbee-S2 module.

6. Go to Terminal window .The messages from the user will be in blue color and response from Xbee-S2 module will be in Red.

7. Type +++.The Xbee-S2 module will reply with an "OK" message.

8.  Kindly Go through \Manual\Xbee-OEM module.pdf before changing any configuration.

Or

1. You can also follow the link on Instructables website.
http://www.instructables.com/id/Configuring-XBees-for-API-Mode/step2/XCTU-Setup/


Box Contains

Serial	Item Name	Qty
1	Connecting Wires	5
2	Rs232 Cable	1
3	Xbee Module - xbee2	1