#include <p32xxxx.h>
#include <plib.h>

//#define BlinkLED() (mLED = ((ReadCoreTimer() & 0x0800000) != 0))
void pause() {
   while ((ReadCoreTimer() & 0x00080000) != 0) ;

   while ((ReadCoreTimer() & 0x00080000) == 0) ;
}

void initPIC32() {
   SYSTEMConfig(40000000, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);
   CFGCONbits.JTAGEN = 0;

   pause() ;

   ANSELA = 0; 
   ANSELB = 0;
   ANSELC = 0;
   TRISAbits.w = 0; /* 2018 */
   TRISBbits.w = 0; /* 2018 */
   TRISCbits.w = 0; /* 2018 */
   LATAbits.w = 0;
   LATBbits.w = 0;
   LATCbits.w = 0;
   //TRISCbits.TRISC4 = 1; /* 2018 button and pullup */ \
   //CNPUCbits.CNPUC4 = 1; /* 2018 */  \

   /* red */
   TRISCbits.TRISC0 = 0; // 
   LATCbits.LATC0 = 0;   // 
   CNPUCbits.CNPUC0 = 0; // 
   CNPDCbits.CNPDC0 = 0; // 

   /* Green */
   TRISBbits.TRISB3 = 0; // 
   LATBbits.LATB3 = 0;   // 
   CNPUBbits.CNPUB3 = 0; // 
   CNPDBbits.CNPDB3 = 0; // 

   /* Blue */
   TRISCbits.TRISC1 = 0; // 
   LATCbits.LATC1 = 0;   // 
   CNPUCbits.CNPUC1 = 0; // 
   CNPDCbits.CNPDC1 = 0; // 
}

void redled(int onoff)
{
   LATCbits.LATC0 = onoff;
}

void greenled(int onoff)
{
   LATBbits.LATB3 = onoff;
}

void blueled(int onoff)
{
   LATCbits.LATC1 = onoff;
}

void badgeled(int red, int green, int blue) {
   LATCbits.LATC0 = !(red == 0);
   LATBbits.LATB3 = !(green == 0);
   LATCbits.LATC1 = !(blue == 0);
}
