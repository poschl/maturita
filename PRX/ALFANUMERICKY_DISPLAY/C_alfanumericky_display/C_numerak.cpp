#include<stdio.h>
#include<conio.h>
#include<dos.h>
#include<string.h>

//PORTY
#define P1 0x300
#define P2 0x301
#define P3 0x300
#define P4 0x301

/*PINY
0: clk
1: data
*/


//NUMERICKÝ DISPLAY
int N0=0x3F;
int N1=0x06;
int N2=0x5B;
int N3=0x4F;
int N4=0x66;
int N5=0x6D;
int N6=0x7D;
int N7=0x07;
int N8=0x7F;
int N9=0x6F;

int pole_cisel [10]= {N0, N1, N2, N3, N4 N5, N6, N7, N8, N9};

void bit_0 (void)
 {
   outportb (P1, 0x00);
   delay(1);
   outportb (P1, 0x01);
   delay(1);
   outportb (P1, 0x00);
   delay(1);
 }

void bit_1 (void)
 {
   outportb (P1, 0x02);
   delay(1);
   outportb (P1, 0x03);
   delay(1);
   outportb (P1, 0x02);
   delay(1);
 }

int poslani_dat (int pole_poslanych_znaku [5])
 {
    // START-BIT
    bit_1 ();

    // pro segmentovku
    for (int i=4; i>=0 ;i--)
     {
      // pro segmenty segmentovky
      for (int j=6; j>=0; j--)
       {
         if ((pole_cisel [pole_poslanych_znaku [i]] &= 1<<j) == 0)
          bit_0();
         else
          bit_1();
       }
     }
 }


int main (void)
 {

   int pole_zadanych_cisel [5] = {0, 0, 0, 0, 0};

   while(1)
    {poslani_dat(pole_zadanych_cisel);}

 }




