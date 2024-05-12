#define F_CPU 16000000UL
#define BAUD 9600
#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
#include<avr/io.h>
#include<util/setbaud.h>
#include<util/delay.h>
#include<avr/interrupt.h>
#include<avr/eeprom.h>


//DEKLARACE ČÍSEL NA DIS
int C0 = 0xFC;
int C1 = 0x60;
int C2 = 0xDA;
int C3 = 0xF2;
int C4 = 0x66;
int C5 = 0xB6;
int C6 = 0xBE;
int C7 = 0xE0;
int C8 = 0xFE;
int C9 = 0xE6;
int CA = 0xEE;
int Cb = 0x3E;
int CC = 0x9C;
int Cd = 0x7A;
int CE = 0x9E;
int CF = 0x8E;

void PUT_DYN_DIS(uint8_t POS, uint8_t VAL)
  {
    uint8_t DECODER []={C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,0x00,0x02};
    PORTB=DECODER[VAL];
    PORTL=POS & 0x07;
    _delay_ms(1);

  }

uint8_t GET_KEY(void)   // ZJIŠTĚNÍ STIKLÉ KLÁVESY
  {
    uint8_t COLUMN=0;
    uint8_t ROW=0;
    uint8_t COMPARE=0;
    for (COLUMN=0;COLUMN<4;COLUMN++)
      {
        PORTK=~(1<<COLUMN);
        _delay_us(20);
        for (ROW=4;ROW<8;ROW++)
          {
             COMPARE=~(1<<ROW) & 0xF0;
             if ((PINK & 0xF0)==COMPARE) return (((ROW-4)*4)+COLUMN);
          }
      }
    return(128);
  }

 uint8_t KEY_DECODER (uint8_t SCAN_CODE)
   {
     uint8_t KEY_POOL[16]={1,2,3,10,4,5,6,11,7,8,9,12,15,0,14,13};   // ROZVRŽENÍ REÁLNÉ KLÁVESNICE
     return(KEY_POOL[SCAN_CODE]);
   }

 uint8_t GET_NUMBER(uint8_t OFFSET)
   {
     uint8_t P=0;
     uint8_t POLE[2]={0,0};
     uint8_t K=0;
     uint8_t C=0;
     while(1)
       {
         K=GET_KEY();
         if (K!=128)
           {
             C=KEY_DECODER(K);
             if (C==13)
               {
                 _delay_ms(200);
                 return ((POLE[0]*10)+POLE[1]);
               }
             POLE[0]=POLE[1];
             POLE[1]=C;
             _delay_ms(200);
           }
         PUT_DYN_DIS (P+OFFSET,POLE[P]);
         P++;
         if (P>1) P=0;
       }
   }

void hw_init(void)
  {
     DDRB=0xFF;   // PORTB: VÝSTUPNÍ
     DDRL=0x0F;   // PORTL: VSTUPNĚ-VÝSTUPNÍ  (PRO KLÁVESNICI)
     DDRK=0x0F;   // PORTK: VSTUPNĚ-VÝSTUPNÍ  (PRO TLAČÍTKA)
  }

int main (void)
  {
    uint8_t I=0;
    uint16_t J=0;
    uint8_t SEC=0;  //  NASTAVENÍ SEKUND NA 0
    uint8_t MIN=0;  //  NASTAVENÍ MINUT NA 0
    uint8_t HRS=0;  //  NASTAVENÍ HODIN NA 0
    uint8_t KEY=0;
    uint8_t DIS[]={10,10,10,10,10,10,10,10};  // NIC NESVÍTÍ
    hw_init();
    HRS=GET_NUMBER(0);
    MIN=GET_NUMBER(3);

    while(1)
      {

      }
  }


