#include <p32xxxx.h>
#include <plib.h>
#include "colors.h"
#include "assetList.h"
#include "py/compile.h"

extern char USB_In_Buffer[];
extern char USB_Out_Buffer[];

extern unsigned char G_red_pwm, G_green_pwm, G_blue_pwm;
// in used in S6B33 samsung controller
extern unsigned char G_contrast1;

volatile unsigned char getUSBSuspendControl();
volatile unsigned char USBDeviceStateDETACHED();
volatile unsigned char USBDeviceStateATTACHED();
volatile unsigned char USBDeviceStatePOWERED();
volatile unsigned char USBDeviceStateDEFAULT();
volatile unsigned char USBDeviceStateADDRESS();
volatile unsigned char USBDeviceStateCONFIGURED();
    
/*
  main is actually in microchip.c
  however, this file contains the main code:

  UserInit()
  ProcessIO()

*/

unsigned int USBbufferSizeIn();
unsigned int USBbufferSizeOut();
volatile int mchipUSBnotReady();
volatile unsigned char USBtransferReady();

unsigned char  NextUSBOut=0;

void UserInit(void)
{
    CFGCONbits.JTAGEN = 0;

    /* RGB LED */
    TRISCbits.TRISC0 = 0;    /* output */
    LATCbits.LATC0 = 0;      /* red init low */
    CNPDCbits.CNPDC0 = 0;    /* pulldown == off */


    TRISCbits.TRISC1 = 0;    /* output */
    LATCbits.LATC1 = 0;      /* blue init low */
    CNPDCbits.CNPDC1 = 0;    /* pulldown == off */

    TRISBbits.TRISB3 = 0;    /* output */
    LATBbits.LATB3 = 0;      /* green init low */
    CNPDBbits.CNPDB3 = 0;    /* pulldown == off */

    ANSELA = 0x00;
    ANSELB = 0x00;
    ANSELC = 0x00;
    TRISA = 0;
    LATA = 0;
    TRISB = 0;
    LATB = 0;
    TRISC = 0;
    LATC = 0;

    LCDInitPins();
    LATCbits.LATC0 = 1;      /* RED */

    LCDReset();
    LATCbits.LATC1 = 1;      /* BLUE */

    mp_init(); // init micropython

    FbInit();
    FbClear();
  

    LATBbits.LATB3 = 1;      /* GREEN */
    LATCbits.LATC9 = 1;      /* backlight on. you will see nothing if it is off */
       
    
    /* button init */
    TRISCbits.TRISC3 = 1; // button == input
    CNPUCbits.CNPUC3 = 1; // pullup == on


    LATCbits.LATC0 = 0;      /* RED */
    LATCbits.LATC1 = 0;      /* BLUE */
    LATBbits.LATB3 = 0;      /* GREEN */

    /* speaker pull down init */
//    TRISAbits.TRISA9 = 0;	// piezo == output
//    LATAbits.LATA9 = 0;      // piezo init off
//    CNPUAbits.CNPUA9 = 0;    // RA9  pull up == off
//    CNPDAbits.CNPDA9 = 0;    /* pulldown == off */
}

void LCDprint(char *str,int len) {
   FbWriteString(str, len);
}

const char hextab[]={"0123456789ABCDEF"};

// controls USB heartbeat blink
static unsigned char debugBlink=1;

#include "USB/usb_config.h" // for CDC_DATA_IN_EP_SIZE

void ProcessIO(void)
{
    unsigned char nread=0;
    static unsigned char writeLOCK=0;
    static unsigned char textBuffer[128], textBufPtr=0;
    int i;

    //Blink the LEDs according to the USB device status
    //very handy if you lock up when trying to run off of battery
    //BlinkUSBStatus();

    if (mchipUSBnotReady()) return;

    if (writeLOCK == 0) {
	nread = getsUSBUSART(USB_In_Buffer, CDC_DATA_IN_EP_SIZE-1);
    }

    if(nread > 0) {

	if ((USB_In_Buffer[0] == 13) || (USB_In_Buffer[0] == 10)) {
		static int y=0;

		//FbColor(0b1111100000011111);
		FbColor(0b1111111111111111);

   		FbMove(0, y);
		y += 10;
		if (y > 110) y = 0;

/*
		FbWriteLine("results");
		FbMoveRelative(0, 10);

   		FbMoveX(0);
		do_str("print('word ', list(x+1 for x in range(4)), end=' eol\\n')", MP_PARSE_SINGLE_INPUT);
		FbMoveRelative(0, 10);

   		FbMoveX(0);
		do_str("for i in range(4):\n  print(i)", MP_PARSE_FILE_INPUT);
		FbMoveRelative(0, 10);
*/
   		FbMoveX(0);
		FbWriteLine(textBuffer);
		FbMoveRelative(0, 10);
		textBufPtr = 0;

   		FbMoveX(0);
		do_str(textBuffer, MP_PARSE_FILE_INPUT);

		FbSwapBuffers();

		// USB_In_Buffer[0] = 0; // want to echo this
	}

	if ((USB_In_Buffer[0] == '-') || (USB_In_Buffer[0] == '+')) {
	   if (USB_In_Buffer[0] == '-') G_contrast1 -= 4;
	   if (USB_In_Buffer[0] == '+') G_contrast1 += 4;

	   //S6B33_contrast(G_contrast1);
	   LCDReset();

	   USB_In_Buffer[0] = 0;
	}

	if (USB_In_Buffer[0] != 0) {
	   int i;

	   for (i=0; i<nread; i++) {
		USB_Out_Buffer[i] = USB_In_Buffer[i];
		textBuffer[textBufPtr++] = USB_In_Buffer[i]; // used for python

		if (USB_Out_Buffer[i] == 13) USB_Out_Buffer[++i] = 10;
	   }
	   textBuffer[textBufPtr] = USB_Out_Buffer[i] = 0; // null term just in case

	   USB_In_Buffer[0] = 0;
	}

	nread = 0;
    }

    if (USBtransferReady()) {
	int nextWrite;

	if (writeLOCK) {
	   USB_Out_Buffer[0] = 0;
	   writeLOCK = 0;
	} 

	nextWrite = strlen(USB_Out_Buffer);
	if (nextWrite != 0) {
	   putUSBUSART(USB_Out_Buffer, nextWrite);
	   writeLOCK = 1; // dont touch until USB done
	}
    }

#ifdef OLD
    // echo back to USB
    if ((USBtransferReady()) && (NextUSBOut > 0)) {
	putUSBUSART(&USB_Out_Buffer[0], NextUSBOut);
	NextUSBOut = 0;
    }
#endif

    CDCTxService();
}

#define mInitAllLEDs()      LATB &= 0x0; TRISB &= 0x0;

#define mLED_1              LATCbits.LATC0 /* red */
#define mLED_2              LATCbits.LATC1  /* blue */
#define mLED_3              LATBbits.LATB3 /* green */
    
#define mGetLED_1()         mLED_1
#define mGetLED_2()         mLED_2
#define mGetLED_3()         mLED_3

#define mLED_1_On()         mLED_1 = 1;
#define mLED_2_On()         mLED_2 = 1;
#define mLED_3_On()         mLED_3 = 1;
    
#define mLED_1_Off()        mLED_1 = 0;
#define mLED_2_Off()        mLED_2 = 0;
#define mLED_3_Off()        mLED_3 = 0;
    
#define mLED_1_Toggle()     mLED_1 = !mLED_1;
 
void BlinkUSBStatus(void)
{
    static int led_count=0;

    if(led_count == 0) led_count = 100000U;
    led_count--;

    #define mLED_Both_Off()         {mLED_1_Off();mLED_2_Off();}
    #define mLED_Both_On()          {mLED_1_On();mLED_2_On();}
    #define mLED_Only_1_On()        {mLED_1_On();mLED_2_Off();}
    #define mLED_Only_2_On()        {mLED_1_Off();mLED_2_On();}

    if(getUSBSuspendControl() == 1) {
        if(led_count==0) {
            mLED_1_On();
            mLED_2_On();
        }
    }
    else {
	if (USBDeviceStateDETACHED())
        {
            mLED_Both_Off();
        }
        else if (USBDeviceStateATTACHED())
        {
            mLED_Both_On();
        }
        else if (USBDeviceStatePOWERED())
        {
            mLED_Only_1_On();
        }
        else if (USBDeviceStateDEFAULT())
        {
            mLED_Only_2_On();
        }
        else if (USBDeviceStateADDRESS())
        {
            if(led_count == 0) {
                mLED_1_Toggle();
                mLED_2_Off();
            }
        }
        else if (USBDeviceStateCONFIGURED()) {
            if(debugBlink && (led_count==0)) {
                if (mGetLED_1()) {
			mLED_1_Off();
		}
		else {
			mLED_1_On();
		}

                if (mGetLED_2()) {
			mLED_2_Off();
		}
		else {
			mLED_2_On();
		}

                if (mGetLED_3())  {
			mLED_3_Off();
		}
		else {
			mLED_3_On();
		}
            }
        }
    }
}

