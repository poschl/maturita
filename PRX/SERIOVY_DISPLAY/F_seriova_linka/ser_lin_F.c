#define F_CPU 16000000UL
#define BAUD 9600 // BAUDOVA RYCHLOST
#include<stdio.h>
#include<stdlib.h>
#include<unistd.h>
#include<string.h>
#include<avr/io.h>
#include<util/setbaud.h>
#include<util/delay.h>
#include<avr/interrupt.h>
#include<avr/eeprom.h>

#define PRE 0x03 // PŘEDDĚLIČKA
#define OVF 0x01 // PŘETEČENÍ

// GLOBÁLNÍ PROMĚNNÉ
volatile uint8_t POS=0;
volatile uint8_t dis[100]={10,10,10,10,10,10,10,10,10,10};  // ZHASNUTÝ DISPLAY
char LEDVI[100];  // MAXIMUM 100 ZNAKŮ

// DEKLARACE ČÍSEL
int N0 = 0xFC;
int N1 = 0x60;
int N2 = 0xDA;
int N3 = 0xF2;
int N4 = 0x66;
int N5 = 0xB6;
int N6 = 0xBE;
int N7 = 0xE0;
int N8 = 0xFE;
int N9 = 0xE6;
int Nnot = 0x00;

// DEKLARACE PÍSMEN
int LA = 0xEE;
int Lb = 0x3E;
int LC = 0x9C;
int Ld = 0x7A;
int LE = 0x9E;
int LF = 0x8E;
int LG = 0x00;
int LH = 0x6E;
int LI = 0x60;
int LJ = 0x78;
int Lk = 0x00;
int LL = 0x1C;
int Lm = 0x00;
int Ln = 0x2A;
int LO = 0xFC;
int LP = 0xCE;
int LQ = 0x00;
int Lr = 0x0A;
int LS = 0xB6;
int Lt = 0x1E;
int LU = 0x7C;
int Lv = 0x00;
int Lw = 0x00;
int Lx = 0x00;
int LY = 0x66;
int LZ = 0xDA;



ISR (TIMER0_OVF_vect)  // PŘERUŠENÍ

  {

   uint8_t KODER[]={N0,N1,N2,N3,N4,N5,N6,N7,N8,N9,0,0,0,0,0,0,0,LA,Lb,LC,Ld,LE,LF,LG,LH,LI,LJ,Lk,LL,Lm,Ln,LO,LP,LQ,Lr,LS,Lt,LU,Lv,Lw,Lx,LY,LZ,0,0,0,0,0,0,LA,Lb,LC,Ld,LE,LF,LG,LH,LI,LJ,Lk,LL,Lm,Ln,LO,LP,LQ,Lr,LS,Lt,LU,Lv,Lw,Lx,LY,LZ,Nnot};

   PORTF=POS;
   PORTE=KODER[dis [POS]];  // NAHRAJE SE
   POS++;
   if (POS==8)
    POS=0;
  }


 void hw_init(void)
 {
   DDRE=0xFF;   // PORTE: VÝSTUPNÍ
   DDRF=0xFF;
   TCCR0B|=PRE; // MASKOVÁNÍ
   TIMSK0|=OVF; // MASKOVÁNÍ
   sei();       // POVOLÍ GLOBÁLNÍ PŘERUŠENÍ
 }





void UART_init(void)
  {
    UBRR0H=UBRRH_VALUE; // NASTAVENÍ RYCHLOSTI
    UBRR0L=UBRRL_VALUE;
    UCSR0C |=0x06;      // NASTAVENÍ REGISTRŮ
    UCSR0B |=0x18;
    UCSR0B |=0x80;      // DEKLARACE PŘERUŠENÍ

  }

char UART_rchar(void)   // ČTE A VRACÍ BITE, DOKUD JE AKTIVNÍ
  {
    loop_until_bit_is_set(UCSR0A,RXC0);
    return(UDR0);
  }

void UART_schar(char c)
  {
    loop_until_bit_is_set(UCSR0A,UDRE0);
    UDR0=c;
  }



void UART_send(char string[100])
  {
    uint8_t index=0;
    while(string[index]!=0)
      {
        UART_schar(string[index]);
        index++;
      }
  }




void UART_recv(void)
  {
    uint8_t index=0;
    char receiver;    // PRIJÍMAČ ZNAKŮ
    LEDVI[0]=0;

    do
      {
        receiver=UART_rchar();  // DO PROMĚNNÉ BUDEME PŘIJÍMAT ZNAKY
        if ((receiver>31) && (receiver<128))
           {LEDVI[index]=receiver; index++; UART_schar(receiver);} // UART_schar: DÍKY NĚMU VIDÍM, CO PÍŠU
      }

      while ((receiver!=13) && (receiver!=10));  // ENTER: ASKY >> 10/13 >> KONEC PŘÍJMU ZNAKŮ
      LEDVI[index]=0;
  }


ISR (USART0_RX_vect)   // pokud přijde dato, vyvolá se přerušení
{
  int CTRL = UART_rchar()-48; // KONTROLA ZADANÉHO TEXTU



  for (int N=7; N>0; N--) // POČÁTEČNÍ HODNOTA, PODMÍNKA VYKONÁNÍ CYKLU, ZMĚNA PROMĚNNÉ PO VYKONÁNÍ CYKLU
     dis [N]= dis [N-1];  // definice: kam zapisuju = odkud zapisuju

     dis [0]= CTRL; // přivítáme, prohlídneme si a usadíme hosta
}


int main(void)
  { hw_init ();  // VYVOLÁNÍ F-CE PRO PORTY

    UART_init(); // INICIALIZACE LINKY

    while (1)
    {
    }

   }




