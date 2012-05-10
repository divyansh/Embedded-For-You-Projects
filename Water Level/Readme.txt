Water Level COntroller with Motor protector

Automatic Water Level Controller switching On/Off the motor when the overhead tank is 
full and also protects the motor from overheating and damage. 

Thus, Automatic water level controller serves 24 hours water supply without letting the overhead tank to become dry.

Hardware Features :

    * 16 x 2 LCD Display (backlit)
    * PCF8563 RTC with 3.3 V cmos cell
    * Buzzer for alarm.
    * 12 V / 25 Amp relay for motor upto 1hp.
    * Current transformer of 5 Amp.
    * Expansion connector for : Water level tank, Full or empty.
    * Power-on Reset.
    * 8K Bytes of In-System Self - programmable Flash.
    * 512 Bytes internal EEPROM.
    * One 16-bit Timer / Counter with Separate Prescaler.
    * External and Internal Interrupt Sources.

Hardware Features :

    * Automatic switching on/off of motor. avoiding overflow of water.
    * Auto / Manual switch for manual operation of motor.
    * Indications for High / Normal / Low. voltage status and motor On/Off /Trip.
    * Audio alarm for dry-run.
    * Over current cut-off.
    * 4 Pre-programmed alarms for switching ON the motor at a particular time.
    * Real time clock to show current time.


Connection - RGB LED Controller with Remote


Power Connections

1) Conenct mains lead of transform to 220 V AC.


Operation

Water Level controller can operate in Maunal/Auto mode.

3) Extend Wires from connections from Water Tank connector.
4) Mount Temperature sensor as shown in the "Setup_diagram.gif".

#define OVER_TEMP_LIMIT     307 //1500 mV
#define DRY_RUN_LIMIT       961 //4700 mV
#define HI_CURRENT_LIMIT    800 //3910 mV
#define TANK_EMPTY          961 //4700 mV
#define TANK_FULL           961 //4700 mV
#define TIMER_CUT_LIMIT     1   //min


Auto Mode Selection

5) Four Parameters are checked to ensure long life of motor.

	a) Over Temperature  - Temperature Limit is checked for over heating of motor coils using a thermistor.
	b) Dry Run Avoidance - Before running the motor water availability is checked.
	c) Over current cut off - If in faulty condition motor takes over current then the motor 
	   is immediately powered off to avoid any physical damage to motor.
	d) Tank Full - Motor is automatically turned of onve the water tank is full.


6) As stated earlier 4 Pre-programmed alarms are avaialble for switching ON the motor at a particular time.

	a) Use 'UP' button to scroll to select 'SYSTEM TIME' and press 'SELECT' button.
		i) Press 'Select'.
	     ii) LCd will show 'TIME'(HH:MM:SS) and 'DATE'(DD:MM:YY).
	    iii) Press 'Select' button to select Hours.
	     iv) Use 'UP' or 'DOWN' button to increase the number.
		v) Press 'Select again to store the present field and change the next field.
	     vi) Press select once again to exit and got Main menu.

	b) Use 'UP' button to scroll to select 'ALARM TIME' to configure alarm timings.
		i) All alarm will be displayed with their correspnding Alarm Time and date in the Second row of lcd.
	     ii) Use 'UP' button to configure the Alarm as 'ON' or 'OF'.
	    iii) Now press 'SELECT' button to sae the setting.
	     iv) Use 'DOWN' button to confirgure other Alarm similary.Alarm number is displayed in Top row.


		1st Row  : AL ON/OF TIME 0X
		2nd ROw  : Ddd Hhh Mmm
		(X is Alarm Number)
		(dd hh mm is Alarm Date, Hours and Minutes when motor will start automatically and check for above four parameter.)

	c) Scroll to
		

To toggle between Manual/Auto mode.
Use 'UP' button to change between the screens.
After setting motor configuration explained in above steps, Press Select button to start the motor in 'AUTO' mode.

7) After pressing 'SELECT' button press 'DOWN' button to start motor in 'AUTO' mode.


Manual Mode Selection

8) To toggle between Manual/Auto mode. Use 'UP' button to change between the screens.

9) When Lcd screen displays 'MANUAL' mode. 
	a) Press select and Exit using 'DOWN' button to start 'Manual' mode.
	b) Use 'UP' and 'DOWN' button to manually  control the Motor.
