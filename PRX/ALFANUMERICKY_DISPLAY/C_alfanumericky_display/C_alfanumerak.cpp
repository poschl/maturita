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


//ALFANUMERICKÝ DISPLAY
int A0=0x0C3F;
int A1=0x0406;
int A2=0x00DB;
int A3=0x008F;
int A4=0x00E6;
int A5=0x2069;
int A6=0x00FD;
int A7=0x0007;
int A8=0x00FF;
int A9=0x00EF;
int A_DP=0x4000;

int pole_cisel [10]= {A0, A1, A2, A3, A4, A5, A6, A7, A8, A9};

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

int poslani_dat (int pole_poslanych_znaku [4])
 {
    // START-BIT
    bit_1 ();

    // 0 pro bity 33-35
    for (int n=0; n<3; n++)
     {bit_0();}

     // aktivace 2. a 4. segmentovky
     bit_0();
     bit_1();

     for (int i=3; i>=0; i=i-2) // pro 4. a 2. segmentovku
      {
       for (int j=14; j>=0; j--)  // pro segmenty segmentovky
        {
          if ((pole_cisel [pole_poslanych_znaku [i]] &= 1<<j) == 0)
           bit_0();
          else
           bit_1();
        }
       }


     // START-BIT
     bit_1 ();

     for (int n=0; n<3; n++)
      {bit_0();}

     // aktivace 1. a 3. segmentovky
     bit_1();
     bit_0();


     for (int i=2; i>=0; i=i-2) // pro 3. a 1. segmentovku
      {
       for (int j=14; j>=0; j--)  // pro segmenty segmentovky
        {
          //maska pro zjištění, zda je daný segment v 1/0
          if ((pole_cisel [pole_poslanych_znaku [i]] &= 1<<j) == 0)
           bit_0();
          else
           bit_1();
        }
     }
 }


int main (void)
 {

   int pole_zadanych_cisel [4] = {0, 0, 0, 0};
   while (1)
    poslani_dat(pole_zadanych_cisel);

 }



