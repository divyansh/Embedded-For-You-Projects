// Adafruit Motor shield library
// copyright Adafruit Industries LLC, 2009
// this code is public domain, enjoy!

#include <AFMotor.h>
#include <LiquidCrystal.h>
LiquidCrystal lcd(13, A1,A0,9,10,11);
#include <ps2.h>

// Connect a stepper motor with 48 steps per revolution (7.5 degree)
// to motor port #2 (M3 and M4)
AF_Stepper motor(48, 2);
//PS2Mouse mouse(3, 2);
//AF_Stepper motor2(48, 1);

char text[16];

void setup() {
//  Serial.begin(9600);           // set up Serial library at 9600 bps
//  Serial.println("Stepper test!");
//  lcd.begin(16, 2);
  // Print a message to the LCD.
  //lcd.print("hello, world!");
 // motor.setSpeed(100);  // 10 rpm 
 mouse.init();  
//  motor2.setSpeed(80);  // 10 rpm 
}

void loop() {
   MouseInfo mouseInfo;
    mouse.getData(&mouseInfo);
//  Serial.println("Single coil steps");
/*  motor.step(100, FORWARD, SINGLE); 
  motor.step(100, BACKWARD, SINGLE); 

//  Serial.println("Double coil steps");
  motor.step(100, FORWARD, DOUBLE); 
  motor.step(100, BACKWARD, DOUBLE);*/

//  Serial.println("Interleave coil steps");
/*  motor.step(100, FORWARD, INTERLEAVE); 
  motor.step(100, BACKWARD, INTERLEAVE); */
  sprintf(text,"%4i %4i",mouseInfo.cX,mouseInfo.cY);
  lcd.setCursor(0,0);
  lcd.print(text);
 /*
  motor.step(50, FORWARD, MICROSTEP); 
  motor.step(50, BACKWARD, MICROSTEP); 
  motor.step(50, FORWARD, MICROSTEP); 
  motor.step(50, BACKWARD, MICROSTEP);
*/
//  Serial.println("Micrsostep steps");
/*  motor2.step(50, FORWARD, MICROSTEP); 
  motor2.step(50, BACKWARD, MICROSTEP); 
  motor2.step(50, FORWARD, MICROSTEP); 
  motor2.step(50, BACKWARD, MICROSTEP);*/
}
