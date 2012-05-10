#include <TimedEvent.h>
#include <ButtonEvent.h>

#include <LiquidCrystal.h>
LiquidCrystal lcd(0, 2, 4, 5, 6, 7);

#define MAIN_TIMER 1
#define DISPLAY_TIMER 2
#define V1 1650
#define V2 1940 
#define V3 2300
#define OFFSET 100

bool flag = false;

int output = A1; 
int high_cut = A0; 
int sensorValue = 0;
int highValue =0;
int vl = 9;
int vh = 11;
int relay_out= 8;
int rw = 1;
int cut_switch=12;
int timer_flag=0;


void setup() {
    lcd.begin(16, 2);
 // Serial.begin(9600);

  //event 1
  TimedEvent.addTimer(MAIN_TIMER,5000, event1);
  //event 2
  TimedEvent.addTimer(DISPLAY_TIMER, 500, event2);
  
  ButtonEvent.addButton(cut_switch,       //button pin
                        onDown,   //onDown event function
                        onUp,     //onUp event function
                        onHold,   //onHold event function
                        2500,     //hold time in milliseconds
                        onDouble, //double event function
                        200);     //double time interval
                        
                        pinMode(relay_out, OUTPUT); 
                               pinMode(vh, OUTPUT);
                                      pinMode(vl, OUTPUT); 
                                      
      sensorValue = analogRead(output)*4.887;
      highValue = analogRead(high_cut)*4.887;
      TimedEvent.start(DISPLAY_TIMER);
      lcd.setCursor(0,0);
      lcd.print("Voltage Stabilizer");
   


    }

void loop() {
  TimedEvent.loop();
    ButtonEvent.loop();
      sensorValue = analogRead(output)*4.887;
      highValue = analogRead(high_cut)*4.887;

      if((highValue>1000)&&(highValue<2500)) { if(timer_flag==0) {timer_flag=1; TimedEvent.start(MAIN_TIMER);} }//timer_start;                                       
      else 
      {
  //  Serial.print("Cond nok \n\r"); 
    TimedEvent.stop(MAIN_TIMER); 
    timer_flag=0; 
    flag=0; 
    digitalWrite(relay_out, 0); 
    } //Timer restart      
      if((flag==1)&&(timer_flag==1))
      {
        digitalWrite(relay_out, 1);
      if((sensorValue>=(V1 - OFFSET))&&(sensorValue<=(V1 + OFFSET))) {digitalWrite(vl, 1); digitalWrite(vh, 0); }
      if((sensorValue>=(V2 - OFFSET))&&(sensorValue<=(V2 + OFFSET))) {digitalWrite(vl, 0); digitalWrite(vh, 1); }
      if((sensorValue>=(V3 - OFFSET))&&(sensorValue<=(V3 + OFFSET))) { digitalWrite(vl, 1); digitalWrite(vh, 1); }

      }
      else { digitalWrite(vl, 0); digitalWrite(vh, 0);}
      
                        
      
      
//       lcd.setCursor(0, 1);
  // print the number of seconds since reset:
//  lcd.print(sensorValue);
}

void event1(TimerInformation* Sender) {
//  Serial.print("event1: ");
  
  flag=true;

}

void event2(TimerInformation* Sender) {
//  Serial.print("AD2: ");
  Serial.println(highValue);
//    Serial.print("AD1: ");
  Serial.println(sensorValue);
  if(timer_flag==0) {TimedEvent.stop(MAIN_TIMER); }
}





void onDown(ButtonInformation* Sender) {
/*  Serial.print("Button (pin:");
  Serial.print(Sender->pin);
  Serial.println(") down!");*/
}


void onUp(ButtonInformation* Sender) {
/*  Serial.print("Button (pin:");
  Serial.print(Sender->pin);
  Serial.println(") up!");*/
}

void onHold(ButtonInformation* Sender) {
  flag=1;
  
//  Serial.print("Button (pin:");
//  Serial.print(Sender->pin);
//  Serial.print(") hold for ");
//  Serial.print(Sender->holdMillis);
//  Serial.println("ms!");
}

void onDouble(ButtonInformation* Sender) {
 /* Serial.print("Button (pin:");
  Serial.print(Sender->pin);
  Serial.print(") double click in ");
  Serial.print(Sender->doubleMillis);
  Serial.println("ms!");*/
}

