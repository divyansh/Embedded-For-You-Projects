// Adafruit Motor shield library
// copyright Adafruit Industries LLC, 2009
// this code is public domain, enjoy!

#include <AFMotor.h>

AF_DCMotor motor(3);
AF_DCMotor motor1(1);

void setup() {
  Serial.begin(9600);           // set up Serial library at 9600 bps
  Serial.println("Motor test!");

  // turn on motor
  motor.setSpeed(200);
  motor1.setSpeed(200);
 
  motor.run(RELEASE);
}

void loop() {
  uint8_t i;
  
  Serial.print("tick");
  
  motor.run(FORWARD);
  motor1.run(FORWARD);
  for (i=0; i<255; i++) {
    motor.setSpeed(i);
    motor1.setSpeed(i);  
    delay(10);
 }
 
  for (i=255; i!=0; i--) {
    motor.setSpeed(i);  
    motor1.setSpeed(i);  
    delay(10);
 }
  
  Serial.print("tock");

  motor.run(BACKWARD);
 motor1.run(BACKWARD);
  for (i=0; i<255; i++) {
    motor.setSpeed(i);  
    motor1.setSpeed(i);  
    delay(10);
 }
 
  for (i=255; i!=0; i--) {
    motor.setSpeed(i);  
    motor1.setSpeed(i);      
    delay(10);
 }
  

  Serial.print("tech");
  motor.run(RELEASE);
  motor1.run(RELEASE);
  delay(1000);
}
