/*
  AnalogReadSerial
 Reads an analog input on pin 0, prints the result to the serial monitor 
 
 This example code is in the public domain.
 */

void setup() {
  Serial.begin(9600);
}

void loop() {
  int sensorValue1 = analogRead(A0);
  int sensorValue2 = analogRead(A1);
  int sensorValue3 = analogRead(A2);
 int sensorValue4 = analogRead(A3);  
int sensorValue5 = analogRead(A4);  
  Serial.print(sensorValue1, DEC); //LL
  Serial.print(",");
  Serial.print(sensorValue2, DEC);//RL
  Serial.print(",");
  Serial.print(sensorValue3, DEC);//FL
  Serial.print(",");
  Serial.print(sensorValue4, DEC);//Temp
  Serial.print(",");
  Serial.print(sensorValue5, DEC);//Temp
  Serial.println();
}
