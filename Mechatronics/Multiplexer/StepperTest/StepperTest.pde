// Adafruit Motor shield library
// copyright Adafruit Industries LLC, 2009
// this code is public domain, enjoy!


//PWM 1
//TImer 2A on PB3  (PIN-11)
//PWM 2 (PIN-3)

//PWM3 - PIN6 - P1B
//PWM4 - PIN5 - P1A

#include <AFMotor.h>

// Connect a stepper motor with 48 steps per revolution (7.5 degree)
// to motor port #2 (M3 and M4)

//AF_Stepper motor2(48, 1);
AF_Stepper motor(48, 2); //(Left Side L293d)

void setup() {
//  Serial.begin(9600);           // set up Serial library at 9600 bps
//  Serial.println("Stepper test!");

  motor.setSpeed(100);  // 10 rpm   
//  motor2.setSpeed(8);  // 10 rpm 
}

void loop() {
//  Serial.println("Single coil steps");
/*  motor.step(100, FORWARD, SINGLE); 
  motor.step(100, BACKWARD, SINGLE); 

//  Serial.println("Double coil steps");
  motor.step(100, FORWARD, DOUBLE); 
  motor.step(100, BACKWARD, DOUBLE);

//  Serial.println("Interleave coil steps");
  motor.step(100, FORWARD, INTERLEAVE); 
  motor.step(100, BACKWARD, INTERLEAVE); */

//  Serial.println("Micrsostep steps");
  motor.step(500, FORWARD, MICROSTEP); 
 // motor.step(50, BACKWARD, MICROSTEP); 
 // motor.step(50, FORWARD, MICROSTEP); 
 // motor.step(50, BACKWARD, MICROSTEP);   
}
