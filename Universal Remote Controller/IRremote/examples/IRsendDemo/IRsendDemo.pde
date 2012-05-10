/*
 * IRremote: IRsendDemo - demonstrates sending IR codes with IRsend
 * An IR LED must be connected to Arduino PWM pin 3.
 * Version 0.1 July, 2009
 * Copyright 2009 Ken Shirriff
 * http://arcfn.com
 */

#include <IRremote.h>
#include <stdio.h>

IRsend irsend;
#define Key_AD4 0
#define Key_AD5 1
#define IR_SEND_PIN 32

#define S1 439//1
#define S2 1583//1
#define S3 2492//1
#define S4 894 //0
#define S5 3660//1
#define S6 //1
#define S7 1778//0
#define S8 2995//0
#define S9 3855//0
#define OFFSET 100
char text[15];

int keyval,key,key1;
void setup()
{
  Serial.begin(9600);
}

void loop() 
{

//    println(analogRead(Key_AD4)); 
    key=analogRead(Key_AD4)*4.887;
    key1=analogRead(Key_AD5)*4.887;
  
    keyval=get_key(key,key1);
    switch(keyval)
    {
      case 1:
      sprintf(text,"%d %d %d",key,key1,keyval);
      Serial.println(text); 
      for (int i = 0; i < 3; i++) 
    {
      irsend.sendNEC(0xF720DF, IR_SEND_PIN); // Sony TV power code
      delay(100);
    }
    break;
    case 2:
        sprintf(text,"%d %d %d",key,key1,keyval);
        Serial.println(text); 
        for (int i = 0; i < 3; i++) 
        {
        irsend.sendNEC(0xF7A05F, IR_SEND_PIN); // Sony TV power code
        delay(100);
        }
    break;
    case 3:
        sprintf(text,"%d %d %d",key,key1,keyval);
        Serial.println(text); 
        for (int i = 0; i < 3; i++) 
        {
        irsend.sendNEC(0xF720DF, IR_SEND_PIN); // Sony TV power code
        delay(100);
        }
    break;
    case 4:
        for (int i = 0; i < 3; i++) 
        {
        irsend.sendNEC(0xF7609F, IR_SEND_PIN); // Sony TV power code
        delay(100);
        }
      break;
 
    };
      
      
      
      
    
  
}


int get_key(int val,int val1)

{
  
//AD1  - no switch pressed 5
//1 - 0.453 
//2 - 1.6
//3 - 2.521
//5 - 3.674
//6 - 0.072
//AD0 
//4 - 0.897
//7 - 0.269
//8 - 3.019
//9 - 3.84


 if((val1<S1+OFFSET)&&(val1>S1-OFFSET))

      return 1;

  else  if((val1<S2+OFFSET)&&(val1>S2-OFFSET))

    return 2;

  else  if((val1<S3+OFFSET)&&(val1>S3-OFFSET))

    return 3;

  else  if((val<S4+OFFSET)&&(val>S4-OFFSET))

    return 4;

  else  if((val1<S5+OFFSET)&&(val1>S5-OFFSET))

    return 5;


else if((val1<S6+OFFSET)&&(val1>S6-OFFSET))

     return 6;

  else  if((val<S7+OFFSET)&&(val>S7-OFFSET))

    return 7;

  else  if((val<S8+OFFSET)&&(val>S8-OFFSET))

    return 8;

  else  if((val<S9+OFFSET)&&(val>S9-OFFSET))

    return 9;
    else keyval=0;
  
}

