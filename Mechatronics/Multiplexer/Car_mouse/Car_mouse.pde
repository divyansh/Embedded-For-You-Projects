// Adafruit Motor shield library
// copyright Adafruit Industries LLC, 2009
// this code is public domain, enjoy!

#include <AFMotor.h>
#include <ps2.h>

AF_DCMotor motor(1);
AF_DCMotor motor1(4);
PS2Mouse mouse(3, 2); //Data 2 Clock 3

void setup() {
  Serial.begin(9600);           // set up Serial library at 9600 bps
//  Serial.println("Motor test!");

  // turn on motor
  motor.setSpeed(200);
  motor1.setSpeed(200);
 
  motor.run(RELEASE);
  motor1.run(RELEASE);
  delay(250);
    mouse.init();
}

void loop() {
  
  MouseInfo mouseInfo;
  mouse.getData(&mouseInfo);  
//  uint8_t i;
//  Serial.print("\tLB=");
//  Serial.println(mouseInfo.leftClick, DEC);  
  
if(mouseInfo.leftClick==1)  {
Serial.println("LEFT");
  motor.run(FORWARD);
  motor1.run(FORWARD);
}
else if(mouseInfo.rightClick==1)  
{
  motor.run(BACKWARD);
  motor1.run(BACKWARD);
  Serial.println("RIGHT");
}
else  {
  motor.run(RELEASE);
  motor1.run(RELEASE);
}
  //motor.run(BACKWARD);
/*  Serial.print("tick");
  
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
  delay(1000);*/
}
