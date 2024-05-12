#include <time.h>
#include <conio.h>
#include <stdio.h>
#include <dos.h>

// globální proměnné pro aktuální hodnoty vystupu a vstupu
int vystup = 0x00FE; //00000000 11111110
int vstup = 0;

/*Zapojeni
Port P3 - IN
0 bit: základna
1 bit: hlavní rameno
2 bit: rameno chapadla
3 bit: chapadlo


Port P2 - OUT
0 bit: takt
1 bit: směr otáčení
2 bit: základna
3 bit: hlavní rameno
4 bit: rameno chapadla
5 bit: chapadlo
*/


//porty
#define P1 0x300
#define P2 0x301

//piny
#define krokovani 0
#define smer 1
#define motor1 2
#define motor2 3
#define motor3 4
#define motor4 5

//IR zavora masky
#define IR_zakladna 1
#define IR_hl_rameno 2
#define IR_rameno_chapadlo 4
#define IR_chapadlo 8

int nastaveni_bitu_1(int hodnota, int poradi) // hodnota=5, poradi=3
{
    int maska = 1;                            // 00000001
    maska = maska << poradi;                  // 00000001 >> 00001000
    hodnota |= maska;                         // 00000101 |= 00001000 >> 00001101
    return(hodnota);                          // return 13
}

int nastaveni_bitu_0(int hodnota, int poradi)       // hodnota=5, poradi=3
{
    int maska = 1;                            // 00000001
    maska = maska << poradi;                  // 00000001 >> 00001000
    hodnota &= ~(maska);                      // 00000101 &= 11110111 >> 00000101
    return(hodnota);                          // return 5
}


int zavora(int poradi)
{
    vstup = inportb(P2);

    if (poradi == 1)
      { vstup = vstup & (IR_zakladna);} //otáčení základny

    if (poradi == 2)
      { vstup = vstup & (IR_hl_rameno);} //hlavniho rameno

    if (poradi == 3)
      { vstup = vstup & (IR_rameno_chapadlo);} //rameno chapadla

    if (poradi == 4)
      {  vstup = vstup & (IR_chapadlo);} //chapadlo

    //0: aktivni zavora / 1: neaktivni zavora
    if (vstup == 0)
      { return(0);}

    else
      { return(1);}
}


void krok(int pocet)
{
    int i = 0;
    for (i = 0; i < pocet; i++)
      {
         // Nahozeni krokovaciho bitu
         vystup = nastaveni_bitu_1(vystup, krokovani);

         // Vyvedeni hodnoty na port
         outportb(P2, vystup);
         delay(3);

         // Shozeni krokovaciho bitu
         vystup = nastaveni_bitu_0(vystup, krokovani);

         // hodnota na port
         outportb(P2, vystup);
         delay(3);
      }
}


void nastaveni_motoru(int motor, int smer_otaceni)
{
    // vypnutí všech motorů
    vystup = nastaveni_bitu_1(vystup, motor4);
    vystup = nastaveni_bitu_1(vystup, motor3);
    vystup = nastaveni_bitu_1(vystup, motor2);
    vystup = nastaveni_bitu_1(vystup, motor1);

    // zapnutí požadovaného motor
    switch (motor)
    {
     // zapnutí
     case 1:
       vystup = nastaveni_bitu_0(vystup, motor1);
       break;

     case 2:
       vystup = nastaveni_bitu_0(vystup, motor2);
       break;

     case 3:
       vystup = nastaveni_bitu_0(vystup, motor3);
       break;

     case 4:
       vystup = nastaveni_bitu_0(vystup, motor4);
       break;
    }


    if (smer_otaceni == 1)
     vystup = nastaveni_bitu_1(vystup, smer);

    else vystup = nastaveni_bitu_0(vystup, smer);
     outportb(P2, vystup);
}

void nastaveni_vychozi_polohy (void)
  {
     nastaveni_motoru (1,krokovani);
     while (zavora(1)==1) krok(1);  // motor 1: nastav ho do výchozí
     nastaveni_motoru (2,krokovani);
     while (zavora(2)==1) krok(1);  // motor 2: nastav ho do výchozí
     nastaveni_motoru (3,krokovani);
     while (zavora(3)==1) krok(1);  // motor 3: nastav ho do výchozí
     nastaveni_motoru (4,krokovani);
     while (zavora(4)==1) krok(1);  // motor 4: nastav ho do výchozí
  }

int main(void)
{
    char klavesa;
    nastaveni_vychozi_polohy();

    /* do-while: vykoná se cyklus a zkontroluje, zda je splněná podmínka
                 >> pokud je vykoná se znova cyklus */
    do
    {
        // čeká na klávesu
        klavesa = getch();
        switch (klavesa)
        {
          // rameno chapadla nahoru
          case '1':
           nastaveni_motoru(3, 1);
           krok(2);
          break;

         // pokladani hlavniho ramene
          case '2':
            nastaveni_motoru(2, 1);
            krok(2);
          break;

          // rameno chapadla dolu
          case '3':
            if (zavora(3) == 1)
            {
              nastaveni_motoru(3, 0);
              krok(2);
            }
          break;

          // otaceni zakladny doleva
          case '4':
            if (zavora(1) == 1)
             {
               nastaveni_motoru(1, 0);
               krok(2);
             }
          break;

          //pomalejsi rychlost posledniho pouziteho motoru
          case '5':
            if (zavora(1) == 1)
             {
               krok(1);
             }
          break;

          // otaceni zakladny doprava
          case '6':
            nastaveni_motoru(1, 1);
            krok(2);
          break;

          // otevirani chapadla
          case '7':
            if (zavora(4) == 1)
             {
                nastaveni_motoru(4, 0);
                krok(2);
             }
          break;

          // zvedani hlavniho ramene
          case '8':
            if (zavora(2) == 1)
             {
               nastaveni_motoru(2, 0);
               krok(2);
             }
          break;

          // zavirani chapadla
          case '9':
            nastaveni_motoru(4, 1);
            krok(2);
          break;

          case '0':
            nastaveni_vychozi_polohy();
          break;

        }
    }

    while (klavesa != 'x'); // stisk x => ukonceni programu
}




































































