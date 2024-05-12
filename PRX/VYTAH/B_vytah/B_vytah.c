#include<stdio.h>
#include<conio.h>
#include<dos.h>
#include<string.h>
#include<stdio.c>
#include<conio.c>
#include<dos.c>
#include<string.c>

/*
VSTUPNÍ BITY VÝTAHU:
0: 0. bit na dispayi
1: 1. bit na dispayi
2: 2. bit na dispayi
3: LED ↑
4: LED ↓
5: osvětlení kabiny
6: motor kabiny
7: směr jízdy (0>>↓ / 1>>↑)
8: zvukové znamení

VÝSTUPNÍ BITY VÝTAHU:
senzory: 0-7
0: 1. patro
1: 2. patro
2: 3. patro
3: 4. patro
4: 5. patro
5: dveře
6: podlaha
7: impulsní

přivolávací tlačítko
8:  1. patro
9:  2. patro
10: 3. patro
11: 4. patro

kabina tlačítko
12: 1. patro
13: 2. patro
14: 3. patro
15: 4. patro
*/


//globální proměnné
int IN = 0xFFFF;
int OUT = 0xFFFF;

void motor_up (void)
{
 OUT = OUT & 0xBF ; // bit 6 >> 0
 outport (0x300, OUT);
}

void motor_down (void)
{
 OUT = OUT & 0x3F ; // bit 6 a 7 >> 0
 outport (0x300, OUT);
}

void motor_stop(void)
{
 OUT = OUT & 0x00C0 ;  // bit 6 a 7 >> 1
 outport (0x300, OUT);
}

int tlacitko_patro (void)
{
 IN = inport (0x300);

 if ((IN & 0x0100)==0) return(1);  // 1. patro
 if ((IN & 0x0200)==0) return(2);  // 2. patro
 if ((IN & 0x0400)==0) return(3);  // 3. patro
 if ((IN & 0x0800)==0) return(4);  // 4. patro
 return(0);
}


int tlacitko_kabina (void)
{
 IN = inport (0x300);

 if ((IN & 0x1000)==0) return(1);  // 1. patro
 if ((IN & 0x2000)==0) return(2);  // 2. patro
 if ((IN & 0x4000)==0) return(3);  // 3. patro
 if ((IN & 0x8000)==0) return(4);  // 4. patro
 return(0);
}


int zjisteni_patra(void)
{
  IN=inport(0x300);

  if (IN==0) return(0);            // není v patře
  if ((IN & 0x0001)==0) return(1); // 1. patro
  if ((IN & 0x0002)==0) return(2); // 2. patro
  if ((IN & 0x0004)==0) return(3); // 3. patro
  if ((IN & 0x0008)==0) return(4); // 4. patro
  return(0);                       // není v patře
}


int dvere(void)
{
  IN=inport(0x300);

  if ((IN & 0x0020)==0) return(0);  // 0 >> otevřené
  else return(1);                   // 1 >> zavřené
}

void display (int num)
{
  OUT=OUT & 0xFFF8; // bity 0-2 do nuly
  OUT=OUT+num;    // zapise binarni zobrazi decimalni
  outport(0x300,OUT);  // odeslani na port
}

void sipky_up (void)
{
  OUT=OUT & 0xFFF7; // bit 3 do nuly
  outport(0x300,OUT);
}

void sipky_down (void)
{
  OUT=OUT & 0xFFEF; // bit 4 do nuly
  outport(0x300,OUT);
}

void sipky (void)
{
  OUT=OUT & 0xFFE7; // bity 3 a 4 do nuly
  outport(0x300,OUT);
}

void sipky_off(void)
{
  OUT=OUT | 0x0018; // bity 3 a 4 do jednicky
  outport(0x300,OUT);
}

void svetlo_on(void)
{
  OUT=OUT & 0xFFDF; // bit 5 do nuly
  outport(0x300,OUT);
}

void svetlo_off(void)
{
  OUT=OUT | 0x0020; // bit 5 do jednicky
  outport(0x300,OUT);
}


void zvonek(void)
{
  OUT=OUT & 0xFEFF; // bit 8 do nuly
  outport(0x300,OUT);
  delay(2);
  OUT=OUT | 0x0100; // bit 8 do jednicky
  outport(0x300,OUT);
}


int kabina(void)
{
  IN=inport(0x300);
  if ((IN & 0x0040)==0) return(0);  // 0 >> plná
    else return(1);                 // 1 >> prázdná
}



void reset(void)
{
  motor_up();
  while(zjisteni_patra()!=4);
  motor_down();
  while(zjisteni_patra()!=1);
  motor_stop();
}


void privolej_do(int kam)
{
  int poloha;
  poloha=zjisteni_patra();

  if ((dvere()==1) && (kabina()==1) && (poloha!=0))
   {
     if (kam>poloha) // pojedeme nahoru
      {
        sipky_up();
        motor_up();
        while(zjisteni_patra()!=kam);
        motor_stop();
        sipky_off();
       }

     if (kam<poloha) // pojedeme dolu
      {
        sipky_down();
        motor_down();
        while(zjisteni_patra()!=kam);
        motor_stop();
        sipky_off();
      }
   }
  }


void jizda_do(int kam)
{
  int poloha;
  poloha=zjisteni_patra();

  if ((dvere()==1) && (kabina()==0) && (poloha!=0))
   {
     if (kam>poloha)     // pojedeme nahoru
      {
         sipky_up();
         motor_up();
         while(zjisteni_patra()!=kam);
         motor_stop();
         sipky_off();
         display(zjisteni_patra());
      }

      if (kam<poloha)     // pojedeme dolu
       {
          sipky_down();
          motor_down();
          while(zjisteni_patra()!=kam);
          motor_stop();
          sipky_off();
        }

        zvonek();
     }
  }


int main (void)
  {
    int patro_privolani=0;
    int patro_z_kabiny=0;
    int patro_aktualni=0;

    while (1)
      {
        patro_privolani=tlacitko_patro();
        patro_z_kabiny=tlacitko_kabina();
        patro_aktualni=zjisteni_patra();
        display(patro_aktualni);

        if ((dvere()==0) || (kabina()==0))
          svetlo_on();
        else svetlo_off();

        if (patro_aktualni==0)
          reset();

        printf("\rTlacitko v patre: %02d  Tlacitko v kabine: %02d  Aktualni patro: %02d",patro_privolani,patro_z_kabiny,patro_aktualni);

        if ((patro_privolani!=0) && (dvere()==1) && (kabina()==1))
         privolej_do(patro_privolani);

        if ((patro_z_kabiny!=0) && (dvere()==1))
         jizda_do(patro_z_kabiny);

        delay (300); // Pauza 300ms kvuli zakmitum tlacitek, dveri atd...

      }
  }
