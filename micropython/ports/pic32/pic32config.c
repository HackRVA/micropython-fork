// Configuring the Device Configuration Registers
// 80Mhz Core/Periph, Pri Osc w/PLL, Write protect Boot Flash
// #if defined(TRANSPORT_LAYER_USB) || defined(TRANSPORT_LAYER_USB_HOST)
    #pragma config UPLLEN   = ON        // USB PLL Enabled
    // #pragma config UPLLIDIV = DIV_2     // USB PLL Input Divider = Divide by 2 8MHZ crystal
    #pragma config UPLLIDIV = DIV_1     // USB PLL Input Divider = Divide by 1    4 mhz crystal
// #endif

#pragma config DEBUG    = OFF           // Background Debugger disabled
#pragma config FPLLMUL = MUL_20         // PLL Multiplier: Multiply by 20
#pragma config FPLLIDIV = DIV_2         // PLL Input Divider:  Divide by 2

#pragma config FVBUSONIO = OFF		// PEB 20170409 need this for up button
#pragma config OSCIOFNC = OFF           // PEB 20180306 CLKO Output Signal Active on the OSCO Pin (Disabled)
#pragma config FSOSCEN = OFF            // Secondary Oscillator Enable (Disabled)

// #if defined(__PIC32MX1XX_2XX__)
    // For PIC32MX1xx, PIC32MX2xx devices the output divisor is set to 2 to produce max 40MHz clock.
    #pragma config FPLLODIV = DIV_1         // PLL Output Divider: Divide by 2
// #elif defined (__PIC32MX3XX_7XX__)
    //For PIC32MX3xx, PIC32MX4xx, PIC32MX5xx, PIC32MX6xx and PIC32MX7xx devices, 
    //the output divisor is set to 1 to produce max 80MHz clock.
//     #pragma config FPLLODIV = DIV_1         // PLL Output Divider: Divide by 1
// #endif

#pragma config FWDTEN = OFF             // WD timer: OFF
//#pragma config POSCMOD = HS             // Primary Oscillator Mode: High Speed xtal
#pragma config POSCMOD = XT             // Primary Oscillator Mode: High Speed xtal
#pragma config FNOSC = PRIPLL           // Oscillator Selection: Primary oscillator  w/ PLL
#pragma config FPBDIV = DIV_1           // Peripheral Bus Clock: Divide by 1
#pragma config BWP = OFF                // Boot write protect: OFF

// #if defined(__PIC32MX1XX_2XX__)
    // For PIC32MX1xx, PIC32MX2xx devices there are jumpers on PIM to choose from PGx1/PGx2.
    #pragma config ICESEL = ICS_PGx2    // ICE pins configured on PGx1 (PGx2 is multiplexed with USB D+ and D- pins).
// #elif defined(__PIC32MX3XX_7XX__)
    // For PIC32MX3xx, PIC32MX4xx, PIC32MX5xx, PIC32MX6xx and PIC32MX7xx 
    // devices the ICE connection is on PGx2. .
//     #pragma config ICESEL = ICS_PGx2    // ICE pins configured on PGx2, Boot write protect OFF.
// #endif
    
// #if defined(TRANSPORT_LAYER_ETH)
// 	#pragma config FMIIEN = OFF, FETHIO = OFF	// external PHY in RMII/alternate configuration. Applicable for devices with internal MAC only.
// #endif

// #define SWITCH_PRESSED 0


