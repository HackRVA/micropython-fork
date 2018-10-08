# 1 "badgemain.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "badgemain.c"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/p32xxxx.h" 1 3




# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 1 3
# 38 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
       
# 167 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx270f256d.h" 1 3
# 38 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx270f256d.h" 3
       
# 48 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx270f256d.h" 3
extern volatile unsigned int WDTCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDTCLR:1;
    unsigned WDTWINEN:1;
    unsigned SWDTPS:5;
    unsigned :8;
    unsigned ON:1;
  };
  struct {
    unsigned :2;
    unsigned SWDTPS0:1;
    unsigned SWDTPS1:1;
    unsigned SWDTPS2:1;
    unsigned SWDTPS3:1;
    unsigned SWDTPS4:1;
  };
  struct {
    unsigned :2;
    unsigned WDTPSTA:5;
  };
  struct {
    unsigned :2;
    unsigned WDTPS:5;
  };
  struct {
    unsigned w:32;
  };
} __WDTCONbits_t;
extern volatile __WDTCONbits_t WDTCONbits __asm__ ("WDTCON") __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONSET __attribute__((section("sfrs")));
extern volatile unsigned int WDTCONINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RTCOE:1;
    unsigned HALFSEC:1;
    unsigned RTCSYNC:1;
    unsigned RTCWREN:1;
    unsigned :2;
    unsigned RTCCLKON:1;
    unsigned RTSECSEL:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned CAL:10;
  };
  struct {
    unsigned w:32;
  };
} __RTCCONbits_t;
extern volatile __RTCCONbits_t RTCCONbits __asm__ ("RTCCON") __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int RTCCONINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ARPT:8;
    unsigned AMASK:4;
    unsigned ALRMSYNC:1;
    unsigned PIV:1;
    unsigned CHIME:1;
    unsigned ALRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __RTCALRMbits_t;
extern volatile __RTCALRMbits_t RTCALRMbits __asm__ ("RTCALRM") __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMCLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMSET __attribute__((section("sfrs")));
extern volatile unsigned int RTCALRMINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIME __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SEC01:4;
    unsigned SEC10:4;
    unsigned MIN01:4;
    unsigned MIN10:4;
    unsigned HR01:4;
    unsigned HR10:4;
  };
  struct {
    unsigned w:32;
  };
} __RTCTIMEbits_t;
extern volatile __RTCTIMEbits_t RTCTIMEbits __asm__ ("RTCTIME") __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMECLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMESET __attribute__((section("sfrs")));
extern volatile unsigned int RTCTIMEINV __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDAY01:4;
    unsigned :4;
    unsigned DAY01:4;
    unsigned DAY10:4;
    unsigned MONTH01:4;
    unsigned MONTH10:4;
    unsigned YEAR01:4;
    unsigned YEAR10:4;
  };
  struct {
    unsigned w:32;
  };
} __RTCDATEbits_t;
extern volatile __RTCDATEbits_t RTCDATEbits __asm__ ("RTCDATE") __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATECLR __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATESET __attribute__((section("sfrs")));
extern volatile unsigned int RTCDATEINV __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIME __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :8;
    unsigned SEC01:4;
    unsigned SEC10:4;
    unsigned MIN01:4;
    unsigned MIN10:4;
    unsigned HR01:4;
    unsigned HR10:4;
  };
  struct {
    unsigned w:32;
  };
} __ALRMTIMEbits_t;
extern volatile __ALRMTIMEbits_t ALRMTIMEbits __asm__ ("ALRMTIME") __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMECLR __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMESET __attribute__((section("sfrs")));
extern volatile unsigned int ALRMTIMEINV __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WDAY01:4;
    unsigned :4;
    unsigned DAY01:4;
    unsigned DAY10:4;
    unsigned MONTH01:4;
    unsigned MONTH10:4;
  };
  struct {
    unsigned w:32;
  };
} __ALRMDATEbits_t;
extern volatile __ALRMDATEbits_t ALRMDATEbits __asm__ ("ALRMDATE") __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATECLR __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATESET __attribute__((section("sfrs")));
extern volatile unsigned int ALRMDATEINV __attribute__((section("sfrs")));
extern volatile unsigned int T1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned TSYNC:1;
    unsigned :1;
    unsigned TCKPS:2;
    unsigned :1;
    unsigned TGATE:1;
    unsigned :3;
    unsigned TWIP:1;
    unsigned TWDIS:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T1CONbits_t;
extern volatile __T1CONbits_t T1CONbits __asm__ ("T1CON") __attribute__((section("sfrs")));
extern volatile unsigned int T1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR1 __attribute__((section("sfrs")));
extern volatile unsigned int TMR1CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR1SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR1INV __attribute__((section("sfrs")));
extern volatile unsigned int PR1 __attribute__((section("sfrs")));
extern volatile unsigned int PR1CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR1SET __attribute__((section("sfrs")));
extern volatile unsigned int PR1INV __attribute__((section("sfrs")));
extern volatile unsigned int T2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :1;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T2CONbits_t;
extern volatile __T2CONbits_t T2CONbits __asm__ ("T2CON") __attribute__((section("sfrs")));
extern volatile unsigned int T2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR2 __attribute__((section("sfrs")));
extern volatile unsigned int TMR2CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR2SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR2INV __attribute__((section("sfrs")));
extern volatile unsigned int PR2 __attribute__((section("sfrs")));
extern volatile unsigned int PR2CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR2SET __attribute__((section("sfrs")));
extern volatile unsigned int PR2INV __attribute__((section("sfrs")));
extern volatile unsigned int T3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :2;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T3CONbits_t;
extern volatile __T3CONbits_t T3CONbits __asm__ ("T3CON") __attribute__((section("sfrs")));
extern volatile unsigned int T3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR3 __attribute__((section("sfrs")));
extern volatile unsigned int TMR3CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR3SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR3INV __attribute__((section("sfrs")));
extern volatile unsigned int PR3 __attribute__((section("sfrs")));
extern volatile unsigned int PR3CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR3SET __attribute__((section("sfrs")));
extern volatile unsigned int PR3INV __attribute__((section("sfrs")));
extern volatile unsigned int T4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :1;
    unsigned T32:1;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T4CONbits_t;
extern volatile __T4CONbits_t T4CONbits __asm__ ("T4CON") __attribute__((section("sfrs")));
extern volatile unsigned int T4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR4 __attribute__((section("sfrs")));
extern volatile unsigned int TMR4CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR4SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR4INV __attribute__((section("sfrs")));
extern volatile unsigned int PR4 __attribute__((section("sfrs")));
extern volatile unsigned int PR4CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR4SET __attribute__((section("sfrs")));
extern volatile unsigned int PR4INV __attribute__((section("sfrs")));
extern volatile unsigned int T5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :1;
    unsigned TCS:1;
    unsigned :2;
    unsigned TCKPS:3;
    unsigned TGATE:1;
    unsigned :5;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :4;
    unsigned TCKPS0:1;
    unsigned TCKPS1:1;
    unsigned TCKPS2:1;
  };
  struct {
    unsigned :13;
    unsigned TSIDL:1;
    unsigned :1;
    unsigned TON:1;
  };
  struct {
    unsigned w:32;
  };
} __T5CONbits_t;
extern volatile __T5CONbits_t T5CONbits __asm__ ("T5CON") __attribute__((section("sfrs")));
extern volatile unsigned int T5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int T5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int T5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int TMR5 __attribute__((section("sfrs")));
extern volatile unsigned int TMR5CLR __attribute__((section("sfrs")));
extern volatile unsigned int TMR5SET __attribute__((section("sfrs")));
extern volatile unsigned int TMR5INV __attribute__((section("sfrs")));
extern volatile unsigned int PR5 __attribute__((section("sfrs")));
extern volatile unsigned int PR5CLR __attribute__((section("sfrs")));
extern volatile unsigned int PR5SET __attribute__((section("sfrs")));
extern volatile unsigned int PR5INV __attribute__((section("sfrs")));
extern volatile unsigned int IC1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC1CONbits_t;
extern volatile __IC1CONbits_t IC1CONbits __asm__ ("IC1CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC1BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC2CONbits_t;
extern volatile __IC2CONbits_t IC2CONbits __asm__ ("IC2CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC2BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC3CONbits_t;
extern volatile __IC3CONbits_t IC3CONbits __asm__ ("IC3CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC3BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC4CONbits_t;
extern volatile __IC4CONbits_t IC4CONbits __asm__ ("IC4CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC4BUF __attribute__((section("sfrs")));
extern volatile unsigned int IC5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ICM:3;
    unsigned ICBNE:1;
    unsigned ICOV:1;
    unsigned ICI:2;
    unsigned ICTMR:1;
    unsigned C32:1;
    unsigned FEDGE:1;
    unsigned :3;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned ICM0:1;
    unsigned ICM1:1;
    unsigned ICM2:1;
    unsigned :2;
    unsigned ICI0:1;
    unsigned ICI1:1;
  };
  struct {
    unsigned :13;
    unsigned ICSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __IC5CONbits_t;
extern volatile __IC5CONbits_t IC5CONbits __asm__ ("IC5CON") __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int IC5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int IC5BUF __attribute__((section("sfrs")));
extern volatile unsigned int OC1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC1CONbits_t;
extern volatile __OC1CONbits_t OC1CONbits __asm__ ("OC1CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC1R __attribute__((section("sfrs")));
extern volatile unsigned int OC1RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC1RS __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC1RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC2CONbits_t;
extern volatile __OC2CONbits_t OC2CONbits __asm__ ("OC2CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC2R __attribute__((section("sfrs")));
extern volatile unsigned int OC2RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC2RS __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC2RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC3CONbits_t;
extern volatile __OC3CONbits_t OC3CONbits __asm__ ("OC3CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC3R __attribute__((section("sfrs")));
extern volatile unsigned int OC3RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC3RS __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC3RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC4CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC4CONbits_t;
extern volatile __OC4CONbits_t OC4CONbits __asm__ ("OC4CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC4R __attribute__((section("sfrs")));
extern volatile unsigned int OC4RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC4RS __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC4RSINV __attribute__((section("sfrs")));
extern volatile unsigned int OC5CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OCM:3;
    unsigned OCTSEL:1;
    unsigned OCFLT:1;
    unsigned OC32:1;
    unsigned :7;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned OCM0:1;
    unsigned OCM1:1;
    unsigned OCM2:1;
  };
  struct {
    unsigned :13;
    unsigned OCSIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __OC5CONbits_t;
extern volatile __OC5CONbits_t OC5CONbits __asm__ ("OC5CON") __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5CONINV __attribute__((section("sfrs")));
extern volatile unsigned int OC5R __attribute__((section("sfrs")));
extern volatile unsigned int OC5RCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5RINV __attribute__((section("sfrs")));
extern volatile unsigned int OC5RS __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSCLR __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSSET __attribute__((section("sfrs")));
extern volatile unsigned int OC5RSINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1ACONbits_t;
extern volatile __I2C1ACONbits_t I2C1ACONbits __asm__ ("I2C1ACON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1CONbits_t;
extern volatile __I2C1CONbits_t I2C1CONbits __asm__ ("I2C1CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1ASTATbits_t;
extern volatile __I2C1ASTATbits_t I2C1ASTATbits __asm__ ("I2C1ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C1STATbits_t;
extern volatile __I2C1STATbits_t I2C1STATbits __asm__ ("I2C1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1STATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1AMSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1MSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ATRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1TRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1ARCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C1RCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2ACONbits_t;
extern volatile __I2C2ACONbits_t I2C2ACONbits __asm__ ("I2C2ACON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SEN:1;
    unsigned RSEN:1;
    unsigned PEN:1;
    unsigned RCEN:1;
    unsigned ACKEN:1;
    unsigned ACKDT:1;
    unsigned STREN:1;
    unsigned GCEN:1;
    unsigned SMEN:1;
    unsigned DISSLW:1;
    unsigned A10M:1;
    unsigned STRICT:1;
    unsigned SCLREL:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :11;
    unsigned IPMIEN:1;
    unsigned :1;
    unsigned I2CSIDL:1;
    unsigned :1;
    unsigned I2CEN:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2CONbits_t;
extern volatile __I2C2CONbits_t I2C2CONbits __asm__ ("I2C2CON") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ACONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2ASTATbits_t;
extern volatile __I2C2ASTATbits_t I2C2ASTATbits __asm__ ("I2C2ASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TBF:1;
    unsigned RBF:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned I2COV:1;
    unsigned IWCOL:1;
    unsigned ADD10:1;
    unsigned GCSTAT:1;
    unsigned BCL:1;
    unsigned :3;
    unsigned TRSTAT:1;
    unsigned ACKSTAT:1;
  };
  struct {
    unsigned :6;
    unsigned I2CPOV:1;
  };
  struct {
    unsigned w:32;
  };
} __I2C2STATbits_t;
extern volatile __I2C2STATbits_t I2C2STATbits __asm__ ("I2C2STAT") __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STATSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2STATINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADD __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADDCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADDSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ADDINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSK __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSKCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSKSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2AMSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2MSKINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRG __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRN __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRNCLR __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRNSET __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ATRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2TRNINV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2ARCV __attribute__((section("sfrs")));
extern volatile unsigned int I2C2RCV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI1CONbits_t;
extern volatile __SPI1CONbits_t SPI1CONbits __asm__ ("SPI1CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI1STATbits_t;
extern volatile __SPI1STATbits_t SPI1STATbits __asm__ ("SPI1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1STATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI1CON2bits_t;
extern volatile __SPI1CON2bits_t SPI1CON2bits __asm__ ("SPI1CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI1CON2INV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SRXISEL:2;
    unsigned STXISEL:2;
    unsigned DISSDI:1;
    unsigned MSTEN:1;
    unsigned CKP:1;
    unsigned SSEN:1;
    unsigned CKE:1;
    unsigned SMP:1;
    unsigned MODE16:1;
    unsigned MODE32:1;
    unsigned DISSDO:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned ENHBUF:1;
    unsigned SPIFE:1;
    unsigned :5;
    unsigned MCLKSEL:1;
    unsigned FRMCNT:3;
    unsigned FRMSYPW:1;
    unsigned MSSEN:1;
    unsigned FRMPOL:1;
    unsigned FRMSYNC:1;
    unsigned FRMEN:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI2CONbits_t;
extern volatile __SPI2CONbits_t SPI2CONbits __asm__ ("SPI2CON") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPIRBF:1;
    unsigned SPITBF:1;
    unsigned :1;
    unsigned SPITBE:1;
    unsigned :1;
    unsigned SPIRBE:1;
    unsigned SPIROV:1;
    unsigned SRMT:1;
    unsigned SPITUR:1;
    unsigned :2;
    unsigned SPIBUSY:1;
    unsigned FRMERR:1;
    unsigned :3;
    unsigned TXBUFELM:5;
    unsigned :3;
    unsigned RXBUFELM:5;
  };
  struct {
    unsigned w:32;
  };
} __SPI2STATbits_t;
extern volatile __SPI2STATbits_t SPI2STATbits __asm__ ("SPI2STAT") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2STATINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BUF __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRG __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned AUDMOD:2;
    unsigned :1;
    unsigned AUDMONO:1;
    unsigned :3;
    unsigned AUDEN:1;
    unsigned IGNTUR:1;
    unsigned IGNROV:1;
    unsigned SPITUREN:1;
    unsigned SPIROVEN:1;
    unsigned FRMERREN:1;
    unsigned :2;
    unsigned SPISGNEXT:1;
  };
  struct {
    unsigned AUDMOD0:1;
    unsigned AUDMOD1:1;
  };
  struct {
    unsigned w:32;
  };
} __SPI2CON2bits_t;
extern volatile __SPI2CON2bits_t SPI2CON2bits __asm__ ("SPI2CON2") __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int SPI2CON2INV __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U1AMODEbits_t;
extern volatile __U1AMODEbits_t U1AMODEbits __asm__ ("U1AMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U1MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U1MODEbits_t;
extern volatile __U1MODEbits_t U1MODEbits __asm__ ("U1MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U1MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U1AMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U1ASTAbits_t;
extern volatile __U1ASTAbits_t U1ASTAbits __asm__ ("U1ASTA") __attribute__((section("sfrs")));
extern volatile unsigned int U1STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U1STAbits_t;
extern volatile __U1STAbits_t U1STAbits __asm__ ("U1STA") __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U1STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTASET __attribute__((section("sfrs")));
extern volatile unsigned int U1STASET __attribute__((section("sfrs")));
extern volatile unsigned int U1ASTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U1STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U1ATXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1ARXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRG __attribute__((section("sfrs")));
extern volatile unsigned int U1BRG __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U1ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U2MODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U2MODEbits_t;
extern volatile __U2MODEbits_t U2MODEbits __asm__ ("U2MODE") __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned STSEL:1;
    unsigned PDSEL:2;
    unsigned BRGH:1;
    unsigned RXINV:1;
    unsigned ABAUD:1;
    unsigned LPBACK:1;
    unsigned WAKE:1;
    unsigned UEN:2;
    unsigned :1;
    unsigned RTSMD:1;
    unsigned IREN:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :1;
    unsigned PDSEL0:1;
    unsigned PDSEL1:1;
    unsigned :5;
    unsigned UEN0:1;
    unsigned UEN1:1;
  };
  struct {
    unsigned :13;
    unsigned USIDL:1;
    unsigned :1;
    unsigned UARTEN:1;
  };
  struct {
    unsigned w:32;
  };
} __U3AMODEbits_t;
extern volatile __U3AMODEbits_t U3AMODEbits __asm__ ("U3AMODE") __attribute__((section("sfrs")));
extern volatile unsigned int U2MODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int U2MODESET __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODESET __attribute__((section("sfrs")));
extern volatile unsigned int U2MODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U3AMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int U2STA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U2STAbits_t;
extern volatile __U2STAbits_t U2STAbits __asm__ ("U2STA") __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URXDA:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned PERR:1;
    unsigned RIDLE:1;
    unsigned ADDEN:1;
    unsigned URXISEL:2;
    unsigned TRMT:1;
    unsigned UTXBF:1;
    unsigned UTXEN:1;
    unsigned UTXBRK:1;
    unsigned URXEN:1;
    unsigned UTXINV:1;
    unsigned UTXISEL:2;
    unsigned ADDR:8;
    unsigned ADM_EN:1;
  };
  struct {
    unsigned :6;
    unsigned URXISEL0:1;
    unsigned URXISEL1:1;
    unsigned :6;
    unsigned UTXISEL0:1;
    unsigned UTXISEL1:1;
  };
  struct {
    unsigned :14;
    unsigned UTXSEL:2;
  };
  struct {
    unsigned w:32;
  };
} __U3ASTAbits_t;
extern volatile __U3ASTAbits_t U3ASTAbits __asm__ ("U3ASTA") __attribute__((section("sfrs")));
extern volatile unsigned int U2STACLR __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTACLR __attribute__((section("sfrs")));
extern volatile unsigned int U2STASET __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTASET __attribute__((section("sfrs")));
extern volatile unsigned int U2STAINV __attribute__((section("sfrs")));
extern volatile unsigned int U3ASTAINV __attribute__((section("sfrs")));
extern volatile unsigned int U2TXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3ATXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2RXREG __attribute__((section("sfrs")));
extern volatile unsigned int U3ARXREG __attribute__((section("sfrs")));
extern volatile unsigned int U2BRG __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRG __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRGCLR __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRGSET __attribute__((section("sfrs")));
extern volatile unsigned int U2BRGINV __attribute__((section("sfrs")));
extern volatile unsigned int U3ABRGINV __attribute__((section("sfrs")));
extern volatile unsigned int PMCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RDSP:1;
    unsigned WRSP:1;
    unsigned :1;
    unsigned CS1P:1;
    unsigned :1;
    unsigned ALP:1;
    unsigned CSF:2;
    unsigned PTRDEN:1;
    unsigned PTWREN:1;
    unsigned PMPTTL:1;
    unsigned ADRMUX:2;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :6;
    unsigned CSF0:1;
    unsigned CSF1:1;
    unsigned :3;
    unsigned ADRMUX0:1;
    unsigned ADRMUX1:1;
  };
  struct {
    unsigned :13;
    unsigned PSIDL:1;
    unsigned :1;
    unsigned PMPEN:1;
  };
  struct {
    unsigned w:32;
  };
} __PMCONbits_t;
extern volatile __PMCONbits_t PMCONbits __asm__ ("PMCON") __attribute__((section("sfrs")));
extern volatile unsigned int PMCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMCONSET __attribute__((section("sfrs")));
extern volatile unsigned int PMCONINV __attribute__((section("sfrs")));
extern volatile unsigned int PMMODE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned WAITE:2;
    unsigned WAITM:4;
    unsigned WAITB:2;
    unsigned MODE:2;
    unsigned :1;
    unsigned INCM:2;
    unsigned IRQM:2;
    unsigned BUSY:1;
  };
  struct {
    unsigned WAITE0:1;
    unsigned WAITE1:1;
    unsigned WAITM0:1;
    unsigned WAITM1:1;
    unsigned WAITM2:1;
    unsigned WAITM3:1;
    unsigned WAITB0:1;
    unsigned WAITB1:1;
    unsigned MODE0:1;
    unsigned MODE1:1;
    unsigned :1;
    unsigned INCM0:1;
    unsigned INCM1:1;
    unsigned IRQM0:1;
    unsigned IRQM1:1;
  };
  struct {
    unsigned w:32;
  };
} __PMMODEbits_t;
extern volatile __PMMODEbits_t PMMODEbits __asm__ ("PMMODE") __attribute__((section("sfrs")));
extern volatile unsigned int PMMODECLR __attribute__((section("sfrs")));
extern volatile unsigned int PMMODESET __attribute__((section("sfrs")));
extern volatile unsigned int PMMODEINV __attribute__((section("sfrs")));
extern volatile unsigned int PMADDR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADDR:14;
    unsigned CS:2;
  };
  struct {
    unsigned PADDR:14;
  };
  struct {
    unsigned :14;
    unsigned CS1:1;
  };
  struct {
    unsigned w:32;
  };
} __PMADDRbits_t;
extern volatile __PMADDRbits_t PMADDRbits __asm__ ("PMADDR") __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int PMADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DATAOUT:32;
  };
  struct {
    unsigned w:32;
  };
} __PMDOUTbits_t;
extern volatile __PMDOUTbits_t PMDOUTbits __asm__ ("PMDOUT") __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTSET __attribute__((section("sfrs")));
extern volatile unsigned int PMDOUTINV __attribute__((section("sfrs")));
extern volatile unsigned int PMDIN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DATAIN:32;
  };
  struct {
    unsigned w:32;
  };
} __PMDINbits_t;
extern volatile __PMDINbits_t PMDINbits __asm__ ("PMDIN") __attribute__((section("sfrs")));
extern volatile unsigned int PMDINCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMDINSET __attribute__((section("sfrs")));
extern volatile unsigned int PMDININV __attribute__((section("sfrs")));
extern volatile unsigned int PMAEN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PTEN:16;
  };
  struct {
    unsigned PTEN0:1;
    unsigned PTEN1:1;
    unsigned PTEN2:1;
    unsigned PTEN3:1;
    unsigned PTEN4:1;
    unsigned PTEN5:1;
    unsigned PTEN6:1;
    unsigned PTEN7:1;
    unsigned PTEN8:1;
    unsigned PTEN9:1;
    unsigned PTEN10:1;
    unsigned PTEN11:1;
    unsigned PTEN12:1;
    unsigned PTEN13:1;
    unsigned PTEN14:1;
    unsigned PTEN15:1;
  };
  struct {
    unsigned w:32;
  };
} __PMAENbits_t;
extern volatile __PMAENbits_t PMAENbits __asm__ ("PMAEN") __attribute__((section("sfrs")));
extern volatile unsigned int PMAENCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMAENSET __attribute__((section("sfrs")));
extern volatile unsigned int PMAENINV __attribute__((section("sfrs")));
extern volatile unsigned int PMSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OB0E:1;
    unsigned OB1E:1;
    unsigned OB2E:1;
    unsigned OB3E:1;
    unsigned :2;
    unsigned OBUF:1;
    unsigned OBE:1;
    unsigned IB0F:1;
    unsigned IB1F:1;
    unsigned IB2F:1;
    unsigned IB3F:1;
    unsigned :2;
    unsigned IBOV:1;
    unsigned IBF:1;
  };
  struct {
    unsigned w:32;
  };
} __PMSTATbits_t;
extern volatile __PMSTATbits_t PMSTATbits __asm__ ("PMSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int PMSTATINV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DONE:1;
    unsigned SAMP:1;
    unsigned ASAM:1;
    unsigned :1;
    unsigned CLRASAM:1;
    unsigned SSRC:3;
    unsigned FORM:3;
    unsigned :2;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned :5;
    unsigned SSRC0:1;
    unsigned SSRC1:1;
    unsigned SSRC2:1;
    unsigned FORM0:1;
    unsigned FORM1:1;
    unsigned FORM2:1;
  };
  struct {
    unsigned :13;
    unsigned ADSIDL:1;
    unsigned :1;
    unsigned ADON:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CON1bits_t;
extern volatile __AD1CON1bits_t AD1CON1bits __asm__ ("AD1CON1") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1CLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1SET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON1INV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ALTS:1;
    unsigned BUFM:1;
    unsigned SMPI:4;
    unsigned :1;
    unsigned BUFS:1;
    unsigned :2;
    unsigned CSCNA:1;
    unsigned :1;
    unsigned OFFCAL:1;
    unsigned VCFG:3;
  };
  struct {
    unsigned :2;
    unsigned SMPI0:1;
    unsigned SMPI1:1;
    unsigned SMPI2:1;
    unsigned SMPI3:1;
    unsigned :7;
    unsigned VCFG0:1;
    unsigned VCFG1:1;
    unsigned VCFG2:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CON2bits_t;
extern volatile __AD1CON2bits_t AD1CON2bits __asm__ ("AD1CON2") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2CLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2SET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON2INV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ADCS:8;
    unsigned SAMC:5;
    unsigned :2;
    unsigned ADRC:1;
  };
  struct {
    unsigned ADCS0:1;
    unsigned ADCS1:1;
    unsigned ADCS2:1;
    unsigned ADCS3:1;
    unsigned ADCS4:1;
    unsigned ADCS5:1;
    unsigned ADCS6:1;
    unsigned ADCS7:1;
    unsigned SAMC0:1;
    unsigned SAMC1:1;
    unsigned SAMC2:1;
    unsigned SAMC3:1;
    unsigned SAMC4:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CON3bits_t;
extern volatile __AD1CON3bits_t AD1CON3bits __asm__ ("AD1CON3") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3CLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3SET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CON3INV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHS __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :16;
    unsigned CH0SA:4;
    unsigned :3;
    unsigned CH0NA:1;
    unsigned CH0SB:4;
    unsigned :3;
    unsigned CH0NB:1;
  };
  struct {
    unsigned :16;
    unsigned CH0SA0:1;
    unsigned CH0SA1:1;
    unsigned CH0SA2:1;
    unsigned CH0SA3:1;
    unsigned :4;
    unsigned CH0SB0:1;
    unsigned CH0SB1:1;
    unsigned CH0SB2:1;
    unsigned CH0SB3:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CHSbits_t;
extern volatile __AD1CHSbits_t AD1CHSbits __asm__ ("AD1CHS") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHSCLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHSSET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CHSINV __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSL __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CSSL:16;
  };
  struct {
    unsigned CSSL0:1;
    unsigned CSSL1:1;
    unsigned CSSL2:1;
    unsigned CSSL3:1;
    unsigned CSSL4:1;
    unsigned CSSL5:1;
    unsigned CSSL6:1;
    unsigned CSSL7:1;
    unsigned CSSL8:1;
    unsigned CSSL9:1;
    unsigned CSSL10:1;
    unsigned CSSL11:1;
    unsigned CSSL12:1;
    unsigned CSSL13:1;
    unsigned CSSL14:1;
    unsigned CSSL15:1;
  };
  struct {
    unsigned w:32;
  };
} __AD1CSSLbits_t;
extern volatile __AD1CSSLbits_t AD1CSSLbits __asm__ ("AD1CSSL") __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSLCLR __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSLSET __attribute__((section("sfrs")));
extern volatile unsigned int AD1CSSLINV __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF0 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF1 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF2 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF3 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF4 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF5 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF6 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF7 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF8 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUF9 __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFA __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFB __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFC __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFD __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFE __attribute__((section("sfrs")));
extern volatile unsigned int ADC1BUFF __attribute__((section("sfrs")));
extern volatile unsigned int CVRCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CVR:4;
    unsigned CVRSS:1;
    unsigned CVRR:1;
    unsigned CVROE:1;
    unsigned :8;
    unsigned ON:1;
  };
  struct {
    unsigned CVR0:1;
    unsigned CVR1:1;
    unsigned CVR2:1;
    unsigned CVR3:1;
  };
  struct {
    unsigned w:32;
  };
} __CVRCONbits_t;
extern volatile __CVRCONbits_t CVRCONbits __asm__ ("CVRCON") __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONSET __attribute__((section("sfrs")));
extern volatile unsigned int CVRCONINV __attribute__((section("sfrs")));
extern volatile unsigned int CM1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM1CONbits_t;
extern volatile __CM1CONbits_t CM1CONbits __asm__ ("CM1CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int CM2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM2CONbits_t;
extern volatile __CM2CONbits_t CM2CONbits __asm__ ("CM2CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int CM3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CCH:2;
    unsigned :2;
    unsigned CREF:1;
    unsigned :1;
    unsigned EVPOL:2;
    unsigned COUT:1;
    unsigned :4;
    unsigned CPOL:1;
    unsigned COE:1;
    unsigned ON:1;
  };
  struct {
    unsigned CCH0:1;
    unsigned CCH1:1;
    unsigned :4;
    unsigned EVPOL0:1;
    unsigned EVPOL1:1;
  };
  struct {
    unsigned w:32;
  };
} __CM3CONbits_t;
extern volatile __CM3CONbits_t CM3CONbits __asm__ ("CM3CON") __attribute__((section("sfrs")));
extern volatile unsigned int CM3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CM3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int CM3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int CMSTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned C1OUT:1;
    unsigned C2OUT:1;
    unsigned C3OUT:1;
    unsigned :10;
    unsigned SIDL:1;
  };
  struct {
    unsigned w:32;
  };
} __CMSTATbits_t;
extern volatile __CMSTATbits_t CMSTATbits __asm__ ("CMSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATSET __attribute__((section("sfrs")));
extern volatile unsigned int CMSTATINV __attribute__((section("sfrs")));
extern volatile unsigned int CTMUCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned IRNG:2;
    unsigned ITRIM:6;
    unsigned CTTRIG:1;
    unsigned IDISSEN:1;
    unsigned EDGSEQEN:1;
    unsigned EDGEN:1;
    unsigned TGEN:1;
    unsigned CTMUSIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned :2;
    unsigned EDG2SEL:4;
    unsigned EDG2POL:1;
    unsigned EDG2MOD:1;
    unsigned EDG1STAT:1;
    unsigned EDG2STAT:1;
    unsigned EDG1SEL:4;
    unsigned EDG1POL:1;
    unsigned EDG1MOD:1;
  };
  struct {
    unsigned w:32;
  };
} __CTMUCONbits_t;
extern volatile __CTMUCONbits_t CTMUCONbits __asm__ ("CTMUCON") __attribute__((section("sfrs")));
extern volatile unsigned int CTMUCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int CTMUCONSET __attribute__((section("sfrs")));
extern volatile unsigned int CTMUCONINV __attribute__((section("sfrs")));
extern volatile unsigned int OSCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned OSWEN:1;
    unsigned SOSCEN:1;
    unsigned UFRCEN:1;
    unsigned CF:1;
    unsigned SLPEN:1;
    unsigned SLOCK:1;
    unsigned ULOCK:1;
    unsigned CLKLOCK:1;
    unsigned NOSC:3;
    unsigned :1;
    unsigned COSC:3;
    unsigned :1;
    unsigned PLLMULT:3;
    unsigned PBDIV:2;
    unsigned PBDIVRDY:1;
    unsigned SOSCRDY:1;
    unsigned :1;
    unsigned FRCDIV:3;
    unsigned PLLODIV:3;
  };
  struct {
    unsigned :8;
    unsigned NOSC0:1;
    unsigned NOSC1:1;
    unsigned NOSC2:1;
    unsigned :1;
    unsigned COSC0:1;
    unsigned COSC1:1;
    unsigned COSC2:1;
    unsigned :1;
    unsigned PLLMULT0:1;
    unsigned PLLMULT1:1;
    unsigned PLLMULT2:1;
    unsigned PBDIV0:1;
    unsigned PBDIV1:1;
    unsigned :3;
    unsigned FRCDIV0:1;
    unsigned FRCDIV1:1;
    unsigned FRCDIV2:1;
    unsigned PLLODIV0:1;
    unsigned PLLODIV1:1;
    unsigned PLLODIV2:1;
  };
  struct {
    unsigned w:32;
  };
} __OSCCONbits_t;
extern volatile __OSCCONbits_t OSCCONbits __asm__ ("OSCCON") __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int OSCCONINV __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUN __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TUN:6;
  };
  struct {
    unsigned TUN0:1;
    unsigned TUN1:1;
    unsigned TUN2:1;
    unsigned TUN3:1;
    unsigned TUN4:1;
    unsigned TUN5:1;
  };
  struct {
    unsigned w:32;
  };
} __OSCTUNbits_t;
extern volatile __OSCTUNbits_t OSCTUNbits __asm__ ("OSCTUN") __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNCLR __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNSET __attribute__((section("sfrs")));
extern volatile unsigned int OSCTUNINV __attribute__((section("sfrs")));
extern volatile unsigned int REFOCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ROSEL:4;
    unsigned :4;
    unsigned ACTIVE:1;
    unsigned DIVSWEN:1;
    unsigned :1;
    unsigned RSLP:1;
    unsigned OE:1;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
    unsigned RODIV:15;
  };
  struct {
    unsigned w:32;
  };
} __REFOCONbits_t;
extern volatile __REFOCONbits_t REFOCONbits __asm__ ("REFOCON") __attribute__((section("sfrs")));
extern volatile unsigned int REFOCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFOCONSET __attribute__((section("sfrs")));
extern volatile unsigned int REFOCONINV __attribute__((section("sfrs")));
extern volatile unsigned int REFOTRIM __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :23;
    unsigned ROTRIM:9;
  };
  struct {
    unsigned w:32;
  };
} __REFOTRIMbits_t;
extern volatile __REFOTRIMbits_t REFOTRIMbits __asm__ ("REFOTRIM") __attribute__((section("sfrs")));
extern volatile unsigned int REFOTRIMCLR __attribute__((section("sfrs")));
extern volatile unsigned int REFOTRIMSET __attribute__((section("sfrs")));
extern volatile unsigned int REFOTRIMINV __attribute__((section("sfrs")));
extern volatile unsigned int CFGCON __attribute__((section("sfrs")));
typedef struct {
  unsigned TDOEN:1;
  unsigned :2;
  unsigned JTAGEN:1;
  unsigned :8;
  unsigned PMDLOCK:1;
  unsigned IOLOCK:1;
} __CFGCONbits_t;
extern volatile __CFGCONbits_t CFGCONbits __asm__ ("CFGCON") __attribute__((section("sfrs")));
extern volatile unsigned int DDPCON __attribute__((section("sfrs")));
typedef struct {
  unsigned TDOEN:1;
  unsigned :2;
  unsigned JTAGEN:1;
  unsigned :8;
  unsigned PMDLOCK:1;
  unsigned IOLOCK:1;
} __DDPCONbits_t;
extern volatile __DDPCONbits_t DDPCONbits __asm__ ("DDPCON") __attribute__((section("sfrs")));
extern volatile unsigned int DEVID __attribute__((section("sfrs")));
typedef struct {
  unsigned DEVID:28;
  unsigned VER:4;
} __DEVIDbits_t;
extern volatile __DEVIDbits_t DEVIDbits __asm__ ("DEVID") __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEY __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEYCLR __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEYSET __attribute__((section("sfrs")));
extern volatile unsigned int SYSKEYINV __attribute__((section("sfrs")));
extern volatile unsigned int PMD1 __attribute__((section("sfrs")));
typedef struct {
  unsigned AD1MD:1;
  unsigned :7;
  unsigned CTMUMD:1;
  unsigned :3;
  unsigned CVRMD:1;
} __PMD1bits_t;
extern volatile __PMD1bits_t PMD1bits __asm__ ("PMD1") __attribute__((section("sfrs")));
extern volatile unsigned int PMD1CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD1SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD1INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD2 __attribute__((section("sfrs")));
typedef struct {
  unsigned CMP1MD:1;
  unsigned CMP2MD:1;
  unsigned CMP3MD:1;
} __PMD2bits_t;
extern volatile __PMD2bits_t PMD2bits __asm__ ("PMD2") __attribute__((section("sfrs")));
extern volatile unsigned int PMD2CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD2SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD2INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD3 __attribute__((section("sfrs")));
typedef struct {
  unsigned IC1MD:1;
  unsigned IC2MD:1;
  unsigned IC3MD:1;
  unsigned IC4MD:1;
  unsigned IC5MD:1;
  unsigned :11;
  unsigned OC1MD:1;
  unsigned OC2MD:1;
  unsigned OC3MD:1;
  unsigned OC4MD:1;
  unsigned OC5MD:1;
} __PMD3bits_t;
extern volatile __PMD3bits_t PMD3bits __asm__ ("PMD3") __attribute__((section("sfrs")));
extern volatile unsigned int PMD3CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD3SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD3INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD4 __attribute__((section("sfrs")));
typedef struct {
  unsigned T1MD:1;
  unsigned T2MD:1;
  unsigned T3MD:1;
  unsigned T4MD:1;
  unsigned T5MD:1;
} __PMD4bits_t;
extern volatile __PMD4bits_t PMD4bits __asm__ ("PMD4") __attribute__((section("sfrs")));
extern volatile unsigned int PMD4CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD4SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD4INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U1MD:1;
    unsigned U2MD:1;
    unsigned :6;
    unsigned SPI1MD:1;
    unsigned SPI2MD:1;
    unsigned :6;
    unsigned I2C1MD:1;
    unsigned I2C2MD:1;
    unsigned :6;
    unsigned USB1MD:1;
  };
  struct {
    unsigned :24;
    unsigned USBMD:1;
  };
} __PMD5bits_t;
extern volatile __PMD5bits_t PMD5bits __asm__ ("PMD5") __attribute__((section("sfrs")));
extern volatile unsigned int PMD5CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD5SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD5INV __attribute__((section("sfrs")));
extern volatile unsigned int PMD6 __attribute__((section("sfrs")));
typedef struct {
  unsigned RTCCMD:1;
  unsigned REFOMD:1;
  unsigned :14;
  unsigned PMPMD:1;
} __PMD6bits_t;
extern volatile __PMD6bits_t PMD6bits __asm__ ("PMD6") __attribute__((section("sfrs")));
extern volatile unsigned int PMD6CLR __attribute__((section("sfrs")));
extern volatile unsigned int PMD6SET __attribute__((section("sfrs")));
extern volatile unsigned int PMD6INV __attribute__((section("sfrs")));
extern volatile unsigned int NVMCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned NVMOP:4;
    unsigned :7;
    unsigned LVDSTAT:1;
    unsigned LVDERR:1;
    unsigned WRERR:1;
    unsigned WREN:1;
    unsigned WR:1;
  };
  struct {
    unsigned NVMOP0:1;
    unsigned NVMOP1:1;
    unsigned NVMOP2:1;
    unsigned NVMOP3:1;
  };
  struct {
    unsigned PROGOP:4;
  };
  struct {
    unsigned PROGOP0:1;
    unsigned PROGOP1:1;
    unsigned PROGOP2:1;
    unsigned PROGOP3:1;
  };
  struct {
    unsigned w:32;
  };
} __NVMCONbits_t;
extern volatile __NVMCONbits_t NVMCONbits __asm__ ("NVMCON") __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMCONINV __attribute__((section("sfrs")));
extern volatile unsigned int NVMKEY __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDR __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int NVMADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int NVMDATA __attribute__((section("sfrs")));
extern volatile unsigned int NVMSRCADDR __attribute__((section("sfrs")));
extern volatile unsigned int RCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned POR:1;
    unsigned BOR:1;
    unsigned IDLE:1;
    unsigned SLEEP:1;
    unsigned WDTO:1;
    unsigned :1;
    unsigned SWR:1;
    unsigned EXTR:1;
    unsigned VREGS:1;
    unsigned CMR:1;
  };
  struct {
    unsigned w:32;
  };
} __RCONbits_t;
extern volatile __RCONbits_t RCONbits __asm__ ("RCON") __attribute__((section("sfrs")));
extern volatile unsigned int RCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int RCONSET __attribute__((section("sfrs")));
extern volatile unsigned int RCONINV __attribute__((section("sfrs")));
extern volatile unsigned int RSWRST __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SWRST:1;
  };
  struct {
    unsigned w:32;
  };
} __RSWRSTbits_t;
extern volatile __RSWRSTbits_t RSWRSTbits __asm__ ("RSWRST") __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTCLR __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTSET __attribute__((section("sfrs")));
extern volatile unsigned int RSWRSTINV __attribute__((section("sfrs")));
extern volatile unsigned int INT1R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT1R:4;
} __INT1Rbits_t;
extern volatile __INT1Rbits_t INT1Rbits __asm__ ("INT1R") __attribute__((section("sfrs")));
extern volatile unsigned int INT2R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT2R:4;
} __INT2Rbits_t;
extern volatile __INT2Rbits_t INT2Rbits __asm__ ("INT2R") __attribute__((section("sfrs")));
extern volatile unsigned int INT3R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT3R:4;
} __INT3Rbits_t;
extern volatile __INT3Rbits_t INT3Rbits __asm__ ("INT3R") __attribute__((section("sfrs")));
extern volatile unsigned int INT4R __attribute__((section("sfrs")));
typedef struct {
  unsigned INT4R:4;
} __INT4Rbits_t;
extern volatile __INT4Rbits_t INT4Rbits __asm__ ("INT4R") __attribute__((section("sfrs")));
extern volatile unsigned int T2CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T2CKR:4;
} __T2CKRbits_t;
extern volatile __T2CKRbits_t T2CKRbits __asm__ ("T2CKR") __attribute__((section("sfrs")));
extern volatile unsigned int T3CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T3CKR:4;
} __T3CKRbits_t;
extern volatile __T3CKRbits_t T3CKRbits __asm__ ("T3CKR") __attribute__((section("sfrs")));
extern volatile unsigned int T4CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T4CKR:4;
} __T4CKRbits_t;
extern volatile __T4CKRbits_t T4CKRbits __asm__ ("T4CKR") __attribute__((section("sfrs")));
extern volatile unsigned int T5CKR __attribute__((section("sfrs")));
typedef struct {
  unsigned T5CKR:4;
} __T5CKRbits_t;
extern volatile __T5CKRbits_t T5CKRbits __asm__ ("T5CKR") __attribute__((section("sfrs")));
extern volatile unsigned int IC1R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC1R:4;
} __IC1Rbits_t;
extern volatile __IC1Rbits_t IC1Rbits __asm__ ("IC1R") __attribute__((section("sfrs")));
extern volatile unsigned int IC2R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC2R:4;
} __IC2Rbits_t;
extern volatile __IC2Rbits_t IC2Rbits __asm__ ("IC2R") __attribute__((section("sfrs")));
extern volatile unsigned int IC3R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC3R:4;
} __IC3Rbits_t;
extern volatile __IC3Rbits_t IC3Rbits __asm__ ("IC3R") __attribute__((section("sfrs")));
extern volatile unsigned int IC4R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC4R:4;
} __IC4Rbits_t;
extern volatile __IC4Rbits_t IC4Rbits __asm__ ("IC4R") __attribute__((section("sfrs")));
extern volatile unsigned int IC5R __attribute__((section("sfrs")));
typedef struct {
  unsigned IC5R:4;
} __IC5Rbits_t;
extern volatile __IC5Rbits_t IC5Rbits __asm__ ("IC5R") __attribute__((section("sfrs")));
extern volatile unsigned int OCFAR __attribute__((section("sfrs")));
typedef struct {
  unsigned OCFAR:4;
} __OCFARbits_t;
extern volatile __OCFARbits_t OCFARbits __asm__ ("OCFAR") __attribute__((section("sfrs")));
extern volatile unsigned int OCFBR __attribute__((section("sfrs")));
typedef struct {
  unsigned OCFBR:4;
} __OCFBRbits_t;
extern volatile __OCFBRbits_t OCFBRbits __asm__ ("OCFBR") __attribute__((section("sfrs")));
extern volatile unsigned int U1RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U1RXR:4;
} __U1RXRbits_t;
extern volatile __U1RXRbits_t U1RXRbits __asm__ ("U1RXR") __attribute__((section("sfrs")));
extern volatile unsigned int U1CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U1CTSR:4;
} __U1CTSRbits_t;
extern volatile __U1CTSRbits_t U1CTSRbits __asm__ ("U1CTSR") __attribute__((section("sfrs")));
extern volatile unsigned int U2RXR __attribute__((section("sfrs")));
typedef struct {
  unsigned U2RXR:4;
} __U2RXRbits_t;
extern volatile __U2RXRbits_t U2RXRbits __asm__ ("U2RXR") __attribute__((section("sfrs")));
extern volatile unsigned int U2CTSR __attribute__((section("sfrs")));
typedef struct {
  unsigned U2CTSR:4;
} __U2CTSRbits_t;
extern volatile __U2CTSRbits_t U2CTSRbits __asm__ ("U2CTSR") __attribute__((section("sfrs")));
extern volatile unsigned int SDI1R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI1R:4;
} __SDI1Rbits_t;
extern volatile __SDI1Rbits_t SDI1Rbits __asm__ ("SDI1R") __attribute__((section("sfrs")));
extern volatile unsigned int SS1R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS1R:4;
} __SS1Rbits_t;
extern volatile __SS1Rbits_t SS1Rbits __asm__ ("SS1R") __attribute__((section("sfrs")));
extern volatile unsigned int SDI2R __attribute__((section("sfrs")));
typedef struct {
  unsigned SDI2R:4;
} __SDI2Rbits_t;
extern volatile __SDI2Rbits_t SDI2Rbits __asm__ ("SDI2R") __attribute__((section("sfrs")));
extern volatile unsigned int SS2R __attribute__((section("sfrs")));
typedef struct {
  unsigned SS2R:4;
} __SS2Rbits_t;
extern volatile __SS2Rbits_t SS2Rbits __asm__ ("SS2R") __attribute__((section("sfrs")));
extern volatile unsigned int REFCLKIR __attribute__((section("sfrs")));
typedef struct {
  unsigned REFCLKIR:4;
} __REFCLKIRbits_t;
extern volatile __REFCLKIRbits_t REFCLKIRbits __asm__ ("REFCLKIR") __attribute__((section("sfrs")));
extern volatile unsigned int RPA0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA0R:4;
} __RPA0Rbits_t;
extern volatile __RPA0Rbits_t RPA0Rbits __asm__ ("RPA0R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA1R:4;
} __RPA1Rbits_t;
extern volatile __RPA1Rbits_t RPA1Rbits __asm__ ("RPA1R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA2R:4;
} __RPA2Rbits_t;
extern volatile __RPA2Rbits_t RPA2Rbits __asm__ ("RPA2R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA3R:4;
} __RPA3Rbits_t;
extern volatile __RPA3Rbits_t RPA3Rbits __asm__ ("RPA3R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA4R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA4R:4;
} __RPA4Rbits_t;
extern volatile __RPA4Rbits_t RPA4Rbits __asm__ ("RPA4R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA8R:4;
} __RPA8Rbits_t;
extern volatile __RPA8Rbits_t RPA8Rbits __asm__ ("RPA8R") __attribute__((section("sfrs")));
extern volatile unsigned int RPA9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPA9R:4;
} __RPA9Rbits_t;
extern volatile __RPA9Rbits_t RPA9Rbits __asm__ ("RPA9R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB0R:4;
} __RPB0Rbits_t;
extern volatile __RPB0Rbits_t RPB0Rbits __asm__ ("RPB0R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB1R:4;
} __RPB1Rbits_t;
extern volatile __RPB1Rbits_t RPB1Rbits __asm__ ("RPB1R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB2R:4;
} __RPB2Rbits_t;
extern volatile __RPB2Rbits_t RPB2Rbits __asm__ ("RPB2R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB3R:4;
} __RPB3Rbits_t;
extern volatile __RPB3Rbits_t RPB3Rbits __asm__ ("RPB3R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB4R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB4R:4;
} __RPB4Rbits_t;
extern volatile __RPB4Rbits_t RPB4Rbits __asm__ ("RPB4R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB5R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB5R:4;
} __RPB5Rbits_t;
extern volatile __RPB5Rbits_t RPB5Rbits __asm__ ("RPB5R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB7R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB7R:4;
} __RPB7Rbits_t;
extern volatile __RPB7Rbits_t RPB7Rbits __asm__ ("RPB7R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB8R:4;
} __RPB8Rbits_t;
extern volatile __RPB8Rbits_t RPB8Rbits __asm__ ("RPB8R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB9R:4;
} __RPB9Rbits_t;
extern volatile __RPB9Rbits_t RPB9Rbits __asm__ ("RPB9R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB10R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB10R:4;
} __RPB10Rbits_t;
extern volatile __RPB10Rbits_t RPB10Rbits __asm__ ("RPB10R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB11R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB11R:4;
} __RPB11Rbits_t;
extern volatile __RPB11Rbits_t RPB11Rbits __asm__ ("RPB11R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB13R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB13R:4;
} __RPB13Rbits_t;
extern volatile __RPB13Rbits_t RPB13Rbits __asm__ ("RPB13R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB14R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB14R:4;
} __RPB14Rbits_t;
extern volatile __RPB14Rbits_t RPB14Rbits __asm__ ("RPB14R") __attribute__((section("sfrs")));
extern volatile unsigned int RPB15R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPB15R:4;
} __RPB15Rbits_t;
extern volatile __RPB15Rbits_t RPB15Rbits __asm__ ("RPB15R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC0R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC0R:4;
} __RPC0Rbits_t;
extern volatile __RPC0Rbits_t RPC0Rbits __asm__ ("RPC0R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC1R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC1R:4;
} __RPC1Rbits_t;
extern volatile __RPC1Rbits_t RPC1Rbits __asm__ ("RPC1R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC2R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC2R:4;
} __RPC2Rbits_t;
extern volatile __RPC2Rbits_t RPC2Rbits __asm__ ("RPC2R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC3R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC3R:4;
} __RPC3Rbits_t;
extern volatile __RPC3Rbits_t RPC3Rbits __asm__ ("RPC3R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC4R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC4R:4;
} __RPC4Rbits_t;
extern volatile __RPC4Rbits_t RPC4Rbits __asm__ ("RPC4R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC5R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC5R:4;
} __RPC5Rbits_t;
extern volatile __RPC5Rbits_t RPC5Rbits __asm__ ("RPC5R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC6R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC6R:4;
} __RPC6Rbits_t;
extern volatile __RPC6Rbits_t RPC6Rbits __asm__ ("RPC6R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC7R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC7R:4;
} __RPC7Rbits_t;
extern volatile __RPC7Rbits_t RPC7Rbits __asm__ ("RPC7R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC8R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC8R:4;
} __RPC8Rbits_t;
extern volatile __RPC8Rbits_t RPC8Rbits __asm__ ("RPC8R") __attribute__((section("sfrs")));
extern volatile unsigned int RPC9R __attribute__((section("sfrs")));
typedef struct {
  unsigned RPC9R:4;
} __RPC9Rbits_t;
extern volatile __RPC9Rbits_t RPC9Rbits __asm__ ("RPC9R") __attribute__((section("sfrs")));
extern volatile unsigned int INTCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned INT0EP:1;
    unsigned INT1EP:1;
    unsigned INT2EP:1;
    unsigned INT3EP:1;
    unsigned INT4EP:1;
    unsigned :3;
    unsigned TPC:3;
    unsigned :1;
    unsigned MVEC:1;
    unsigned :3;
    unsigned SS0:1;
  };
  struct {
    unsigned w:32;
  };
} __INTCONbits_t;
extern volatile __INTCONbits_t INTCONbits __asm__ ("INTCON") __attribute__((section("sfrs")));
extern volatile unsigned int INTCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int INTCONSET __attribute__((section("sfrs")));
extern volatile unsigned int INTCONINV __attribute__((section("sfrs")));
extern volatile unsigned int INTSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned VEC:6;
  unsigned :2;
  unsigned SRIPL:3;
} __INTSTATbits_t;
extern volatile __INTSTATbits_t INTSTATbits __asm__ ("INTSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int IPTMR __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRCLR __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRSET __attribute__((section("sfrs")));
extern volatile unsigned int IPTMRINV __attribute__((section("sfrs")));
extern volatile unsigned int IFS0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIF:1;
    unsigned CS0IF:1;
    unsigned CS1IF:1;
    unsigned INT0IF:1;
    unsigned T1IF:1;
    unsigned IC1EIF:1;
    unsigned IC1IF:1;
    unsigned OC1IF:1;
    unsigned INT1IF:1;
    unsigned T2IF:1;
    unsigned IC2EIF:1;
    unsigned IC2IF:1;
    unsigned OC2IF:1;
    unsigned INT2IF:1;
    unsigned T3IF:1;
    unsigned IC3EIF:1;
    unsigned IC3IF:1;
    unsigned OC3IF:1;
    unsigned INT3IF:1;
    unsigned T4IF:1;
    unsigned IC4EIF:1;
    unsigned IC4IF:1;
    unsigned OC4IF:1;
    unsigned INT4IF:1;
    unsigned T5IF:1;
    unsigned IC5EIF:1;
    unsigned IC5IF:1;
    unsigned OC5IF:1;
    unsigned AD1IF:1;
    unsigned FSCMIF:1;
    unsigned RTCCIF:1;
    unsigned FCEIF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS0bits_t;
extern volatile __IFS0bits_t IFS0bits __asm__ ("IFS0") __attribute__((section("sfrs")));
extern volatile unsigned int IFS0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS0SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS0INV __attribute__((section("sfrs")));
extern volatile unsigned int IFS1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CMP1IF:1;
    unsigned CMP2IF:1;
    unsigned CMP3IF:1;
    unsigned USBIF:1;
    unsigned SPI1EIF:1;
    unsigned SPI1RXIF:1;
    unsigned SPI1TXIF:1;
    unsigned U1EIF:1;
    unsigned U1RXIF:1;
    unsigned U1TXIF:1;
    unsigned I2C1BIF:1;
    unsigned I2C1SIF:1;
    unsigned I2C1MIF:1;
    unsigned CNAIF:1;
    unsigned CNBIF:1;
    unsigned CNCIF:1;
    unsigned PMPIF:1;
    unsigned PMPEIF:1;
    unsigned SPI2EIF:1;
    unsigned SPI2RXIF:1;
    unsigned SPI2TXIF:1;
    unsigned U2EIF:1;
    unsigned U2RXIF:1;
    unsigned U2TXIF:1;
    unsigned I2C2BIF:1;
    unsigned I2C2SIF:1;
    unsigned I2C2MIF:1;
    unsigned CTMUIF:1;
    unsigned DMA0IF:1;
    unsigned DMA1IF:1;
    unsigned DMA2IF:1;
    unsigned DMA3IF:1;
  };
  struct {
    unsigned w:32;
  };
} __IFS1bits_t;
extern volatile __IFS1bits_t IFS1bits __asm__ ("IFS1") __attribute__((section("sfrs")));
extern volatile unsigned int IFS1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IFS1SET __attribute__((section("sfrs")));
extern volatile unsigned int IFS1INV __attribute__((section("sfrs")));
extern volatile unsigned int IEC0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIE:1;
    unsigned CS0IE:1;
    unsigned CS1IE:1;
    unsigned INT0IE:1;
    unsigned T1IE:1;
    unsigned IC1EIE:1;
    unsigned IC1IE:1;
    unsigned OC1IE:1;
    unsigned INT1IE:1;
    unsigned T2IE:1;
    unsigned IC2EIE:1;
    unsigned IC2IE:1;
    unsigned OC2IE:1;
    unsigned INT2IE:1;
    unsigned T3IE:1;
    unsigned IC3EIE:1;
    unsigned IC3IE:1;
    unsigned OC3IE:1;
    unsigned INT3IE:1;
    unsigned T4IE:1;
    unsigned IC4EIE:1;
    unsigned IC4IE:1;
    unsigned OC4IE:1;
    unsigned INT4IE:1;
    unsigned T5IE:1;
    unsigned IC5EIE:1;
    unsigned IC5IE:1;
    unsigned OC5IE:1;
    unsigned AD1IE:1;
    unsigned FSCMIE:1;
    unsigned RTCCIE:1;
    unsigned FCEIE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC0bits_t;
extern volatile __IEC0bits_t IEC0bits __asm__ ("IEC0") __attribute__((section("sfrs")));
extern volatile unsigned int IEC0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC0SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC0INV __attribute__((section("sfrs")));
extern volatile unsigned int IEC1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CMP1IE:1;
    unsigned CMP2IE:1;
    unsigned CMP3IE:1;
    unsigned USBIE:1;
    unsigned SPI1EIE:1;
    unsigned SPI1RXIE:1;
    unsigned SPI1TXIE:1;
    unsigned U1EIE:1;
    unsigned U1RXIE:1;
    unsigned U1TXIE:1;
    unsigned I2C1BIE:1;
    unsigned I2C1SIE:1;
    unsigned I2C1MIE:1;
    unsigned CNAIE:1;
    unsigned CNBIE:1;
    unsigned CNCIE:1;
    unsigned PMPIE:1;
    unsigned PMPEIE:1;
    unsigned SPI2EIE:1;
    unsigned SPI2RXIE:1;
    unsigned SPI2TXIE:1;
    unsigned U2EIE:1;
    unsigned U2RXIE:1;
    unsigned U2TXIE:1;
    unsigned I2C2BIE:1;
    unsigned I2C2SIE:1;
    unsigned I2C2MIE:1;
    unsigned CTMUIE:1;
    unsigned DMA0IE:1;
    unsigned DMA1IE:1;
    unsigned DMA2IE:1;
    unsigned DMA3IE:1;
  };
  struct {
    unsigned w:32;
  };
} __IEC1bits_t;
extern volatile __IEC1bits_t IEC1bits __asm__ ("IEC1") __attribute__((section("sfrs")));
extern volatile unsigned int IEC1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IEC1SET __attribute__((section("sfrs")));
extern volatile unsigned int IEC1INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CTIS:2;
    unsigned CTIP:3;
    unsigned :3;
    unsigned CS0IS:2;
    unsigned CS0IP:3;
    unsigned :3;
    unsigned CS1IS:2;
    unsigned CS1IP:3;
    unsigned :3;
    unsigned INT0IS:2;
    unsigned INT0IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC0bits_t;
extern volatile __IPC0bits_t IPC0bits __asm__ ("IPC0") __attribute__((section("sfrs")));
extern volatile unsigned int IPC0CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC0SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC0INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T1IS:2;
    unsigned T1IP:3;
    unsigned :3;
    unsigned IC1IS:2;
    unsigned IC1IP:3;
    unsigned :3;
    unsigned OC1IS:2;
    unsigned OC1IP:3;
    unsigned :3;
    unsigned INT1IS:2;
    unsigned INT1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC1bits_t;
extern volatile __IPC1bits_t IPC1bits __asm__ ("IPC1") __attribute__((section("sfrs")));
extern volatile unsigned int IPC1CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC1SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC1INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T2IS:2;
    unsigned T2IP:3;
    unsigned :3;
    unsigned IC2IS:2;
    unsigned IC2IP:3;
    unsigned :3;
    unsigned OC2IS:2;
    unsigned OC2IP:3;
    unsigned :3;
    unsigned INT2IS:2;
    unsigned INT2IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC2bits_t;
extern volatile __IPC2bits_t IPC2bits __asm__ ("IPC2") __attribute__((section("sfrs")));
extern volatile unsigned int IPC2CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC2SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC2INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T3IS:2;
    unsigned T3IP:3;
    unsigned :3;
    unsigned IC3IS:2;
    unsigned IC3IP:3;
    unsigned :3;
    unsigned OC3IS:2;
    unsigned OC3IP:3;
    unsigned :3;
    unsigned INT3IS:2;
    unsigned INT3IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC3bits_t;
extern volatile __IPC3bits_t IPC3bits __asm__ ("IPC3") __attribute__((section("sfrs")));
extern volatile unsigned int IPC3CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC3SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC3INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC4 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T4IS:2;
    unsigned T4IP:3;
    unsigned :3;
    unsigned IC4IS:2;
    unsigned IC4IP:3;
    unsigned :3;
    unsigned OC4IS:2;
    unsigned OC4IP:3;
    unsigned :3;
    unsigned INT4IS:2;
    unsigned INT4IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC4bits_t;
extern volatile __IPC4bits_t IPC4bits __asm__ ("IPC4") __attribute__((section("sfrs")));
extern volatile unsigned int IPC4CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC4SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC4INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC5 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned T5IS:2;
    unsigned T5IP:3;
    unsigned :3;
    unsigned IC5IS:2;
    unsigned IC5IP:3;
    unsigned :3;
    unsigned OC5IS:2;
    unsigned OC5IP:3;
    unsigned :3;
    unsigned AD1IS:2;
    unsigned AD1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC5bits_t;
extern volatile __IPC5bits_t IPC5bits __asm__ ("IPC5") __attribute__((section("sfrs")));
extern volatile unsigned int IPC5CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC5SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC5INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC6 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FSCMIS:2;
    unsigned FSCMIP:3;
    unsigned :3;
    unsigned RTCCIS:2;
    unsigned RTCCIP:3;
    unsigned :3;
    unsigned FCEIS:2;
    unsigned FCEIP:3;
    unsigned :3;
    unsigned CMP1IS:2;
    unsigned CMP1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC6bits_t;
extern volatile __IPC6bits_t IPC6bits __asm__ ("IPC6") __attribute__((section("sfrs")));
extern volatile unsigned int IPC6CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC6SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC6INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC7 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CMP2IS:2;
    unsigned CMP2IP:3;
    unsigned :3;
    unsigned CMP3IS:2;
    unsigned CMP3IP:3;
    unsigned :3;
    unsigned USBIS:2;
    unsigned USBIP:3;
    unsigned :3;
    unsigned SPI1IS:2;
    unsigned SPI1IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC7bits_t;
extern volatile __IPC7bits_t IPC7bits __asm__ ("IPC7") __attribute__((section("sfrs")));
extern volatile unsigned int IPC7CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC7SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC7INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC8 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned U1IS:2;
    unsigned U1IP:3;
    unsigned :3;
    unsigned I2C1IS:2;
    unsigned I2C1IP:3;
    unsigned :3;
    unsigned CNIS:2;
    unsigned CNIP:3;
    unsigned :3;
    unsigned PMPIS:2;
    unsigned PMPIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC8bits_t;
extern volatile __IPC8bits_t IPC8bits __asm__ ("IPC8") __attribute__((section("sfrs")));
extern volatile unsigned int IPC8CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC8SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC8INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC9 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned SPI2IS:2;
    unsigned SPI2IP:3;
    unsigned :3;
    unsigned U2IS:2;
    unsigned U2IP:3;
    unsigned :3;
    unsigned I2C2IS:2;
    unsigned I2C2IP:3;
    unsigned :3;
    unsigned CTMUIS:2;
    unsigned CTMUIP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC9bits_t;
extern volatile __IPC9bits_t IPC9bits __asm__ ("IPC9") __attribute__((section("sfrs")));
extern volatile unsigned int IPC9CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC9SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC9INV __attribute__((section("sfrs")));
extern volatile unsigned int IPC10 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DMA0IS:2;
    unsigned DMA0IP:3;
    unsigned :3;
    unsigned DMA1IS:2;
    unsigned DMA1IP:3;
    unsigned :3;
    unsigned DMA2IS:2;
    unsigned DMA2IP:3;
    unsigned :3;
    unsigned DMA3IS:2;
    unsigned DMA3IP:3;
  };
  struct {
    unsigned w:32;
  };
} __IPC10bits_t;
extern volatile __IPC10bits_t IPC10bits __asm__ ("IPC10") __attribute__((section("sfrs")));
extern volatile unsigned int IPC10CLR __attribute__((section("sfrs")));
extern volatile unsigned int IPC10SET __attribute__((section("sfrs")));
extern volatile unsigned int IPC10INV __attribute__((section("sfrs")));
extern volatile unsigned int BMXCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned BMXARB:3;
    unsigned :3;
    unsigned BMXWSDRM:1;
    unsigned :9;
    unsigned BMXERRIS:1;
    unsigned BMXERRDS:1;
    unsigned BMXERRDMA:1;
    unsigned BMXERRICD:1;
    unsigned BMXERRIXI:1;
    unsigned :5;
    unsigned BMXCHEDMA:1;
  };
  struct {
    unsigned w:32;
  };
} __BMXCONbits_t;
extern volatile __BMXCONbits_t BMXCONbits __asm__ ("BMXCON") __attribute__((section("sfrs")));
extern volatile unsigned int BMXCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXCONSET __attribute__((section("sfrs")));
extern volatile unsigned int BMXCONINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXDKPBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUDBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXDUPBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXDRMSZ __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBA __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBACLR __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBASET __attribute__((section("sfrs")));
extern volatile unsigned int BMXPUPBAINV __attribute__((section("sfrs")));
extern volatile unsigned int BMXPFMSZ __attribute__((section("sfrs")));
extern volatile unsigned int BMXBOOTSZ __attribute__((section("sfrs")));
extern volatile unsigned int DMACON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :11;
    unsigned DMABUSY:1;
    unsigned SUSPEND:1;
    unsigned :2;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __DMACONbits_t;
extern volatile __DMACONbits_t DMACONbits __asm__ ("DMACON") __attribute__((section("sfrs")));
extern volatile unsigned int DMACONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMACONSET __attribute__((section("sfrs")));
extern volatile unsigned int DMACONINV __attribute__((section("sfrs")));
extern volatile unsigned int DMASTAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DMACH:3;
    unsigned RDWR:1;
  };
  struct {
    unsigned w:32;
  };
} __DMASTATbits_t;
extern volatile __DMASTATbits_t DMASTATbits __asm__ ("DMASTAT") __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATSET __attribute__((section("sfrs")));
extern volatile unsigned int DMASTATINV __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDR __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int DMAADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CRCCH:3;
    unsigned :2;
    unsigned CRCTYP:1;
    unsigned CRCAPP:1;
    unsigned CRCEN:1;
    unsigned PLEN:5;
    unsigned :11;
    unsigned BITO:1;
    unsigned :2;
    unsigned WBO:1;
    unsigned BYTO:2;
  };
  struct {
    unsigned w:32;
  };
} __DCRCCONbits_t;
extern volatile __DCRCCONbits_t DCRCCONbits __asm__ ("DCRCCON") __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCCONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATA __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATASET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCDATAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXOR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORSET __attribute__((section("sfrs")));
extern volatile unsigned int DCRCXORINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH0CONbits_t;
extern volatile __DCH0CONbits_t DCH0CONbits __asm__ ("DCH0CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH0ECONbits_t;
extern volatile __DCH0ECONbits_t DCH0ECONbits __asm__ ("DCH0ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH0INTbits_t;
extern volatile __DCH0INTbits_t DCH0INTbits __asm__ ("DCH0INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH0SSAbits_t;
extern volatile __DCH0SSAbits_t DCH0SSAbits __asm__ ("DCH0SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH0DSAbits_t;
extern volatile __DCH0DSAbits_t DCH0DSAbits __asm__ ("DCH0DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH0DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH1CONbits_t;
extern volatile __DCH1CONbits_t DCH1CONbits __asm__ ("DCH1CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH1ECONbits_t;
extern volatile __DCH1ECONbits_t DCH1ECONbits __asm__ ("DCH1ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH1INTbits_t;
extern volatile __DCH1INTbits_t DCH1INTbits __asm__ ("DCH1INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH1SSAbits_t;
extern volatile __DCH1SSAbits_t DCH1SSAbits __asm__ ("DCH1SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH1DSAbits_t;
extern volatile __DCH1DSAbits_t DCH1DSAbits __asm__ ("DCH1DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH1DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH2CONbits_t;
extern volatile __DCH2CONbits_t DCH2CONbits __asm__ ("DCH2CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH2ECONbits_t;
extern volatile __DCH2ECONbits_t DCH2ECONbits __asm__ ("DCH2ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH2INTbits_t;
extern volatile __DCH2INTbits_t DCH2INTbits __asm__ ("DCH2INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH2SSAbits_t;
extern volatile __DCH2SSAbits_t DCH2SSAbits __asm__ ("DCH2SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH2DSAbits_t;
extern volatile __DCH2DSAbits_t DCH2DSAbits __asm__ ("DCH2DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH2DATINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHPRI:2;
    unsigned CHEDET:1;
    unsigned :1;
    unsigned CHAEN:1;
    unsigned CHCHN:1;
    unsigned CHAED:1;
    unsigned CHEN:1;
    unsigned CHCHNS:1;
    unsigned :6;
    unsigned CHBUSY:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH3CONbits_t;
extern volatile __DCH3CONbits_t DCH3CONbits __asm__ ("DCH3CON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :3;
    unsigned AIRQEN:1;
    unsigned SIRQEN:1;
    unsigned PATEN:1;
    unsigned CABORT:1;
    unsigned CFORCE:1;
    unsigned CHSIRQ:8;
    unsigned CHAIRQ:8;
  };
  struct {
    unsigned w:32;
  };
} __DCH3ECONbits_t;
extern volatile __DCH3ECONbits_t DCH3ECONbits __asm__ ("DCH3ECON") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3ECONINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CHERIF:1;
    unsigned CHTAIF:1;
    unsigned CHCCIF:1;
    unsigned CHBCIF:1;
    unsigned CHDHIF:1;
    unsigned CHDDIF:1;
    unsigned CHSHIF:1;
    unsigned CHSDIF:1;
    unsigned :8;
    unsigned CHERIE:1;
    unsigned CHTAIE:1;
    unsigned CHCCIE:1;
    unsigned CHBCIE:1;
    unsigned CHDHIE:1;
    unsigned CHDDIE:1;
    unsigned CHSHIE:1;
    unsigned CHSDIE:1;
  };
  struct {
    unsigned w:32;
  };
} __DCH3INTbits_t;
extern volatile __DCH3INTbits_t DCH3INTbits __asm__ ("DCH3INT") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3INTINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHSSA:32;
} __DCH3SSAbits_t;
extern volatile __DCH3SSAbits_t DCH3SSAbits __asm__ ("DCH3SSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSA __attribute__((section("sfrs")));
typedef struct {
  unsigned CHDSA:32;
} __DCH3DSAbits_t;
extern volatile __DCH3DSAbits_t DCH3DSAbits __asm__ ("DCH3DSA") __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSACLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSASET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSAINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3SPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZ __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CSIZINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3CPTRINV __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DAT __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATCLR __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATSET __attribute__((section("sfrs")));
extern volatile unsigned int DCH3DATINV __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIR __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSVDIF:1;
  unsigned :1;
  unsigned SESENDIF:1;
  unsigned SESVDIF:1;
  unsigned ACTVIF:1;
  unsigned LSTATEIF:1;
  unsigned T1MSECIF:1;
  unsigned IDIF:1;
} __U1OTGIRbits_t;
extern volatile __U1OTGIRbits_t U1OTGIRbits __asm__ ("U1OTGIR") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIE __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSVDIE:1;
  unsigned :1;
  unsigned SESENDIE:1;
  unsigned SESVDIE:1;
  unsigned ACTVIE:1;
  unsigned LSTATEIE:1;
  unsigned T1MSECIE:1;
  unsigned IDIE:1;
} __U1OTGIEbits_t;
extern volatile __U1OTGIEbits_t U1OTGIEbits __asm__ ("U1OTGIE") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIESET __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGIEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGSTAT __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSVD:1;
  unsigned :1;
  unsigned SESEND:1;
  unsigned SESVD:1;
  unsigned :1;
  unsigned LSTATE:1;
  unsigned :1;
  unsigned ID:1;
} __U1OTGSTATbits_t;
extern volatile __U1OTGSTATbits_t U1OTGSTATbits __asm__ ("U1OTGSTAT") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCON __attribute__((section("sfrs")));
typedef struct {
  unsigned VBUSDIS:1;
  unsigned VBUSCHG:1;
  unsigned OTGEN:1;
  unsigned VBUSON:1;
  unsigned DMPULDWN:1;
  unsigned DPPULDWN:1;
  unsigned DMPULUP:1;
  unsigned DPPULUP:1;
} __U1OTGCONbits_t;
extern volatile __U1OTGCONbits_t U1OTGCONbits __asm__ ("U1OTGCON") __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCONCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCONSET __attribute__((section("sfrs")));
extern volatile unsigned int U1OTGCONINV __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRC __attribute__((section("sfrs")));
typedef struct {
  unsigned USBPWR:1;
  unsigned USUSPEND:1;
  unsigned :1;
  unsigned USBBUSY:1;
  unsigned USLPGRD:1;
  unsigned :2;
  unsigned UACTPND:1;
} __U1PWRCbits_t;
extern volatile __U1PWRCbits_t U1PWRCbits __asm__ ("U1PWRC") __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRCCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRCSET __attribute__((section("sfrs")));
extern volatile unsigned int U1PWRCINV __attribute__((section("sfrs")));
extern volatile unsigned int U1IR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URSTIF_DETACHIF:1;
    unsigned UERRIF:1;
    unsigned SOFIF:1;
    unsigned TRNIF:1;
    unsigned IDLEIF:1;
    unsigned RESUMEIF:1;
    unsigned ATTACHIF:1;
    unsigned STALLIF:1;
  };
  struct {
    unsigned DETACHIF:1;
  };
  struct {
    unsigned URSTIF:1;
  };
} __U1IRbits_t;
extern volatile __U1IRbits_t U1IRbits __asm__ ("U1IR") __attribute__((section("sfrs")));
extern volatile unsigned int U1IRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1IE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned URSTIE_DETACHIE:1;
    unsigned UERRIE:1;
    unsigned SOFIE:1;
    unsigned TRNIE:1;
    unsigned IDLEIE:1;
    unsigned RESUMEIE:1;
    unsigned ATTACHIE:1;
    unsigned STALLIE:1;
  };
  struct {
    unsigned DETACHIE:1;
  };
  struct {
    unsigned URSTIE:1;
  };
} __U1IEbits_t;
extern volatile __U1IEbits_t U1IEbits __asm__ ("U1IE") __attribute__((section("sfrs")));
extern volatile unsigned int U1IECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1IESET __attribute__((section("sfrs")));
extern volatile unsigned int U1IEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1EIR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PIDEF:1;
    unsigned CRC5EF_EOFEF:1;
    unsigned CRC16EF:1;
    unsigned DFN8EF:1;
    unsigned BTOEF:1;
    unsigned DMAEF:1;
    unsigned BMXEF:1;
    unsigned BTSEF:1;
  };
  struct {
    unsigned :1;
    unsigned CRC5EF:1;
  };
  struct {
    unsigned :1;
    unsigned EOFEF:1;
  };
} __U1EIRbits_t;
extern volatile __U1EIRbits_t U1EIRbits __asm__ ("U1EIR") __attribute__((section("sfrs")));
extern volatile unsigned int U1EIRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EIE __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned PIDEE:1;
    unsigned CRC5EE_EOFEE:1;
    unsigned CRC16EE:1;
    unsigned DFN8EE:1;
    unsigned BTOEE:1;
    unsigned DMAEE:1;
    unsigned BMXEE:1;
    unsigned BTSEE:1;
  };
  struct {
    unsigned :1;
    unsigned CRC5EE:1;
  };
  struct {
    unsigned :1;
    unsigned EOFEE:1;
  };
} __U1EIEbits_t;
extern volatile __U1EIEbits_t U1EIEbits __asm__ ("U1EIE") __attribute__((section("sfrs")));
extern volatile unsigned int U1EIECLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EIESET __attribute__((section("sfrs")));
extern volatile unsigned int U1EIEINV __attribute__((section("sfrs")));
extern volatile unsigned int U1STAT __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :2;
    unsigned PPBI:1;
    unsigned DIR:1;
    unsigned ENDPT:4;
  };
  struct {
    unsigned :4;
    unsigned ENDPT0:1;
    unsigned ENDPT1:1;
    unsigned ENDPT2:1;
    unsigned ENDPT3:1;
  };
} __U1STATbits_t;
extern volatile __U1STATbits_t U1STATbits __asm__ ("U1STAT") __attribute__((section("sfrs")));
extern volatile unsigned int U1CON __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USBEN_SOFEN:1;
    unsigned PPBRST:1;
    unsigned RESUME:1;
    unsigned HOSTEN:1;
    unsigned USBRST:1;
    unsigned PKTDIS_TOKBUSY:1;
    unsigned SE0:1;
    unsigned JSTATE:1;
  };
  struct {
    unsigned USBEN:1;
  };
  struct {
    unsigned SOFEN:1;
    unsigned :4;
    unsigned PKTDIS:1;
  };
  struct {
    unsigned :5;
    unsigned TOKBUSY:1;
  };
} __U1CONbits_t;
extern volatile __U1CONbits_t U1CONbits __asm__ ("U1CON") __attribute__((section("sfrs")));
extern volatile unsigned int U1CONCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1CONSET __attribute__((section("sfrs")));
extern volatile unsigned int U1CONINV __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDR __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEVADDR:7;
    unsigned LSPDEN:1;
  };
  struct {
    unsigned DEVADDR0:1;
    unsigned DEVADDR1:1;
    unsigned DEVADDR2:1;
    unsigned DEVADDR3:1;
    unsigned DEVADDR4:1;
    unsigned DEVADDR5:1;
    unsigned DEVADDR6:1;
  };
} __U1ADDRbits_t;
extern volatile __U1ADDRbits_t U1ADDRbits __asm__ ("U1ADDR") __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDRCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDRSET __attribute__((section("sfrs")));
extern volatile unsigned int U1ADDRINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1 __attribute__((section("sfrs")));
typedef struct {
  unsigned :1;
  unsigned BDTPTRL:7;
} __U1BDTP1bits_t;
extern volatile __U1BDTP1bits_t U1BDTP1bits __asm__ ("U1BDTP1") __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1SET __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP1INV __attribute__((section("sfrs")));
extern volatile unsigned int U1FRML __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRML:8;
  };
  struct {
    unsigned FRM0:1;
    unsigned FRM1:1;
    unsigned FRM2:1;
    unsigned FRM3:1;
    unsigned FRM4:1;
    unsigned FRM5:1;
    unsigned FRM6:1;
    unsigned FRM7:1;
  };
} __U1FRMLbits_t;
extern volatile __U1FRMLbits_t U1FRMLbits __asm__ ("U1FRML") __attribute__((section("sfrs")));
extern volatile unsigned int U1FRMH __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FRMH:3;
  };
  struct {
    unsigned FRM8:1;
    unsigned FRM9:1;
    unsigned FRM10:1;
  };
} __U1FRMHbits_t;
extern volatile __U1FRMHbits_t U1FRMHbits __asm__ ("U1FRMH") __attribute__((section("sfrs")));
extern volatile unsigned int U1TOK __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned EP:4;
    unsigned PID:4;
  };
  struct {
    unsigned EP0:1;
  };
  struct {
    unsigned :1;
    unsigned EP1:1;
    unsigned EP2:1;
    unsigned EP3:1;
    unsigned PID0:1;
  };
  struct {
    unsigned :5;
    unsigned PID1:1;
    unsigned PID2:1;
    unsigned PID3:1;
  };
} __U1TOKbits_t;
extern volatile __U1TOKbits_t U1TOKbits __asm__ ("U1TOK") __attribute__((section("sfrs")));
extern volatile unsigned int U1TOKCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1TOKSET __attribute__((section("sfrs")));
extern volatile unsigned int U1TOKINV __attribute__((section("sfrs")));
extern volatile unsigned int U1SOF __attribute__((section("sfrs")));
typedef struct {
  unsigned CNT:8;
} __U1SOFbits_t;
extern volatile __U1SOFbits_t U1SOFbits __asm__ ("U1SOF") __attribute__((section("sfrs")));
extern volatile unsigned int U1SOFCLR __attribute__((section("sfrs")));
extern volatile unsigned int U1SOFSET __attribute__((section("sfrs")));
extern volatile unsigned int U1SOFINV __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2 __attribute__((section("sfrs")));
typedef struct {
  unsigned BDTPTRH:8;
} __U1BDTP2bits_t;
extern volatile __U1BDTP2bits_t U1BDTP2bits __asm__ ("U1BDTP2") __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2SET __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP2INV __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3 __attribute__((section("sfrs")));
typedef struct {
  unsigned BDTPTRU:8;
} __U1BDTP3bits_t;
extern volatile __U1BDTP3bits_t U1BDTP3bits __asm__ ("U1BDTP3") __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3SET __attribute__((section("sfrs")));
extern volatile unsigned int U1BDTP3INV __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1 __attribute__((section("sfrs")));
typedef struct {
  unsigned UASUSPND:1;
  unsigned :3;
  unsigned USBSIDL:1;
  unsigned :1;
  unsigned UOEMON:1;
  unsigned UTEYE:1;
} __U1CNFG1bits_t;
extern volatile __U1CNFG1bits_t U1CNFG1bits __asm__ ("U1CNFG1") __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1SET __attribute__((section("sfrs")));
extern volatile unsigned int U1CNFG1INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
  unsigned :1;
  unsigned RETRYDIS:1;
  unsigned LSPD:1;
} __U1EP0bits_t;
extern volatile __U1EP0bits_t U1EP0bits __asm__ ("U1EP0") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP0INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP1bits_t;
extern volatile __U1EP1bits_t U1EP1bits __asm__ ("U1EP1") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP1INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP2bits_t;
extern volatile __U1EP2bits_t U1EP2bits __asm__ ("U1EP2") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP2INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP3bits_t;
extern volatile __U1EP3bits_t U1EP3bits __asm__ ("U1EP3") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP3INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP4bits_t;
extern volatile __U1EP4bits_t U1EP4bits __asm__ ("U1EP4") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP4INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP5bits_t;
extern volatile __U1EP5bits_t U1EP5bits __asm__ ("U1EP5") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP5INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP6bits_t;
extern volatile __U1EP6bits_t U1EP6bits __asm__ ("U1EP6") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP6INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP7bits_t;
extern volatile __U1EP7bits_t U1EP7bits __asm__ ("U1EP7") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP7INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP8bits_t;
extern volatile __U1EP8bits_t U1EP8bits __asm__ ("U1EP8") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP8INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP9bits_t;
extern volatile __U1EP9bits_t U1EP9bits __asm__ ("U1EP9") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP9INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP10bits_t;
extern volatile __U1EP10bits_t U1EP10bits __asm__ ("U1EP10") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP10INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP11bits_t;
extern volatile __U1EP11bits_t U1EP11bits __asm__ ("U1EP11") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP11INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP12bits_t;
extern volatile __U1EP12bits_t U1EP12bits __asm__ ("U1EP12") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP12INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP13bits_t;
extern volatile __U1EP13bits_t U1EP13bits __asm__ ("U1EP13") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP13INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP14bits_t;
extern volatile __U1EP14bits_t U1EP14bits __asm__ ("U1EP14") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP14INV __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15 __attribute__((section("sfrs")));
typedef struct {
  unsigned EPHSHK:1;
  unsigned EPSTALL:1;
  unsigned EPTXEN:1;
  unsigned EPRXEN:1;
  unsigned EPCONDIS:1;
} __U1EP15bits_t;
extern volatile __U1EP15bits_t U1EP15bits __asm__ ("U1EP15") __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15CLR __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15SET __attribute__((section("sfrs")));
extern volatile unsigned int U1EP15INV __attribute__((section("sfrs")));
extern volatile unsigned int ANSELA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ANSA0:1;
    unsigned ANSA1:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELAbits_t;
extern volatile __ANSELAbits_t ANSELAbits __asm__ ("ANSELA") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELACLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELASET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELAINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISA0:1;
    unsigned TRISA1:1;
    unsigned TRISA2:1;
    unsigned TRISA3:1;
    unsigned TRISA4:1;
    unsigned :2;
    unsigned TRISA7:1;
    unsigned TRISA8:1;
    unsigned TRISA9:1;
    unsigned TRISA10:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISAbits_t;
extern volatile __TRISAbits_t TRISAbits __asm__ ("TRISA") __attribute__((section("sfrs")));
extern volatile unsigned int TRISACLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISASET __attribute__((section("sfrs")));
extern volatile unsigned int TRISAINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned :2;
    unsigned RA7:1;
    unsigned RA8:1;
    unsigned RA9:1;
    unsigned RA10:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTAbits_t;
extern volatile __PORTAbits_t PORTAbits __asm__ ("PORTA") __attribute__((section("sfrs")));
extern volatile unsigned int PORTACLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTASET __attribute__((section("sfrs")));
extern volatile unsigned int PORTAINV __attribute__((section("sfrs")));
extern volatile unsigned int LATA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATA0:1;
    unsigned LATA1:1;
    unsigned LATA2:1;
    unsigned LATA3:1;
    unsigned LATA4:1;
    unsigned :2;
    unsigned LATA7:1;
    unsigned LATA8:1;
    unsigned LATA9:1;
    unsigned LATA10:1;
  };
  struct {
    unsigned w:32;
  };
} __LATAbits_t;
extern volatile __LATAbits_t LATAbits __asm__ ("LATA") __attribute__((section("sfrs")));
extern volatile unsigned int LATACLR __attribute__((section("sfrs")));
extern volatile unsigned int LATASET __attribute__((section("sfrs")));
extern volatile unsigned int LATAINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCA0:1;
    unsigned ODCA1:1;
    unsigned ODCA2:1;
    unsigned ODCA3:1;
    unsigned ODCA4:1;
    unsigned :2;
    unsigned ODCA7:1;
    unsigned ODCA8:1;
    unsigned ODCA9:1;
    unsigned ODCA10:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCAbits_t;
extern volatile __ODCAbits_t ODCAbits __asm__ ("ODCA") __attribute__((section("sfrs")));
extern volatile unsigned int ODCACLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCASET __attribute__((section("sfrs")));
extern volatile unsigned int ODCAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPUA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUA0:1;
    unsigned CNPUA1:1;
    unsigned CNPUA2:1;
    unsigned CNPUA3:1;
    unsigned CNPUA4:1;
    unsigned :2;
    unsigned CNPUA7:1;
    unsigned CNPUA8:1;
    unsigned CNPUA9:1;
    unsigned CNPUA10:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUAbits_t;
extern volatile __CNPUAbits_t CNPUAbits __asm__ ("CNPUA") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUASET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPDA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDA0:1;
    unsigned CNPDA1:1;
    unsigned CNPDA2:1;
    unsigned CNPDA3:1;
    unsigned CNPDA4:1;
    unsigned :2;
    unsigned CNPDA7:1;
    unsigned CNPDA8:1;
    unsigned CNPDA9:1;
    unsigned CNPDA10:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDAbits_t;
extern volatile __CNPDAbits_t CNPDAbits __asm__ ("CNPDA") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDASET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNCONA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :13;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONAbits_t;
extern volatile __CNCONAbits_t CNCONAbits __asm__ ("CNCONA") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONASET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNENA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEA0:1;
    unsigned CNIEA1:1;
    unsigned CNIEA2:1;
    unsigned CNIEA3:1;
    unsigned CNIEA4:1;
    unsigned :2;
    unsigned CNIEA7:1;
    unsigned CNIEA8:1;
    unsigned CNIEA9:1;
    unsigned CNIEA10:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENAbits_t;
extern volatile __CNENAbits_t CNENAbits __asm__ ("CNENA") __attribute__((section("sfrs")));
extern volatile unsigned int CNENACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENASET __attribute__((section("sfrs")));
extern volatile unsigned int CNENAINV __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATA __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATA0:1;
    unsigned CNSTATA1:1;
    unsigned CNSTATA2:1;
    unsigned CNSTATA3:1;
    unsigned CNSTATA4:1;
    unsigned :2;
    unsigned CNSTATA7:1;
    unsigned CNSTATA8:1;
    unsigned CNSTATA9:1;
    unsigned CNSTATA10:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATAbits_t;
extern volatile __CNSTATAbits_t CNSTATAbits __asm__ ("CNSTATA") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATACLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATASET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATAINV __attribute__((section("sfrs")));
extern volatile unsigned int ANSELB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ANSB0:1;
    unsigned ANSB1:1;
    unsigned ANSB2:1;
    unsigned ANSB3:1;
    unsigned :9;
    unsigned ANSB13:1;
    unsigned ANSB14:1;
    unsigned ANSB15:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELBbits_t;
extern volatile __ANSELBbits_t ANSELBbits __asm__ ("ANSELB") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELBCLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELBSET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELBINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISB0:1;
    unsigned TRISB1:1;
    unsigned TRISB2:1;
    unsigned TRISB3:1;
    unsigned TRISB4:1;
    unsigned TRISB5:1;
    unsigned :1;
    unsigned TRISB7:1;
    unsigned TRISB8:1;
    unsigned TRISB9:1;
    unsigned TRISB10:1;
    unsigned TRISB11:1;
    unsigned :1;
    unsigned TRISB13:1;
    unsigned TRISB14:1;
    unsigned TRISB15:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISBbits_t;
extern volatile __TRISBbits_t TRISBbits __asm__ ("TRISB") __attribute__((section("sfrs")));
extern volatile unsigned int TRISBCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISBSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISBINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned :1;
    unsigned RB7:1;
    unsigned RB8:1;
    unsigned RB9:1;
    unsigned RB10:1;
    unsigned RB11:1;
    unsigned :1;
    unsigned RB13:1;
    unsigned RB14:1;
    unsigned RB15:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTBbits_t;
extern volatile __PORTBbits_t PORTBbits __asm__ ("PORTB") __attribute__((section("sfrs")));
extern volatile unsigned int PORTBCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTBSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTBINV __attribute__((section("sfrs")));
extern volatile unsigned int LATB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATB0:1;
    unsigned LATB1:1;
    unsigned LATB2:1;
    unsigned LATB3:1;
    unsigned LATB4:1;
    unsigned LATB5:1;
    unsigned :1;
    unsigned LATB7:1;
    unsigned LATB8:1;
    unsigned LATB9:1;
    unsigned LATB10:1;
    unsigned LATB11:1;
    unsigned :1;
    unsigned LATB13:1;
    unsigned LATB14:1;
    unsigned LATB15:1;
  };
  struct {
    unsigned w:32;
  };
} __LATBbits_t;
extern volatile __LATBbits_t LATBbits __asm__ ("LATB") __attribute__((section("sfrs")));
extern volatile unsigned int LATBCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATBSET __attribute__((section("sfrs")));
extern volatile unsigned int LATBINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCB0:1;
    unsigned ODCB1:1;
    unsigned ODCB2:1;
    unsigned ODCB3:1;
    unsigned ODCB4:1;
    unsigned ODCB5:1;
    unsigned :1;
    unsigned ODCB7:1;
    unsigned ODCB8:1;
    unsigned ODCB9:1;
    unsigned ODCB10:1;
    unsigned ODCB11:1;
    unsigned :1;
    unsigned ODCB13:1;
    unsigned ODCB14:1;
    unsigned ODCB15:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCBbits_t;
extern volatile __ODCBbits_t ODCBbits __asm__ ("ODCB") __attribute__((section("sfrs")));
extern volatile unsigned int ODCBCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCBSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPUB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUB0:1;
    unsigned CNPUB1:1;
    unsigned CNPUB2:1;
    unsigned CNPUB3:1;
    unsigned CNPUB4:1;
    unsigned CNPUB5:1;
    unsigned :1;
    unsigned CNPUB7:1;
    unsigned CNPUB8:1;
    unsigned CNPUB9:1;
    unsigned CNPUB10:1;
    unsigned CNPUB11:1;
    unsigned :1;
    unsigned CNPUB13:1;
    unsigned CNPUB14:1;
    unsigned CNPUB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUBbits_t;
extern volatile __CNPUBbits_t CNPUBbits __asm__ ("CNPUB") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPDB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDB0:1;
    unsigned CNPDB1:1;
    unsigned CNPDB2:1;
    unsigned CNPDB3:1;
    unsigned CNPDB4:1;
    unsigned CNPDB5:1;
    unsigned :1;
    unsigned CNPDB7:1;
    unsigned CNPDB8:1;
    unsigned CNPDB9:1;
    unsigned CNPDB10:1;
    unsigned CNPDB11:1;
    unsigned :1;
    unsigned CNPDB13:1;
    unsigned CNPDB14:1;
    unsigned CNPDB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDBbits_t;
extern volatile __CNPDBbits_t CNPDBbits __asm__ ("CNPDB") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNCONB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :13;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONBbits_t;
extern volatile __CNCONBbits_t CNCONBbits __asm__ ("CNCONB") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNENB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEB0:1;
    unsigned CNIEB1:1;
    unsigned CNIEB2:1;
    unsigned CNIEB3:1;
    unsigned CNIEB4:1;
    unsigned CNIEB5:1;
    unsigned :1;
    unsigned CNIEB7:1;
    unsigned CNIEB8:1;
    unsigned CNIEB9:1;
    unsigned CNIEB10:1;
    unsigned CNIEB11:1;
    unsigned :1;
    unsigned CNIEB13:1;
    unsigned CNIEB14:1;
    unsigned CNIEB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENBbits_t;
extern volatile __CNENBbits_t CNENBbits __asm__ ("CNENB") __attribute__((section("sfrs")));
extern volatile unsigned int CNENBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENBINV __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATB __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATB0:1;
    unsigned CNSTATB1:1;
    unsigned CNSTATB2:1;
    unsigned CNSTATB3:1;
    unsigned CNSTATB4:1;
    unsigned CNSTATB5:1;
    unsigned :1;
    unsigned CNSTATB7:1;
    unsigned CNSTATB8:1;
    unsigned CNSTATB9:1;
    unsigned CNSTATB10:1;
    unsigned CNSTATB11:1;
    unsigned :1;
    unsigned CNSTATB13:1;
    unsigned CNSTATB14:1;
    unsigned CNSTATB15:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATBbits_t;
extern volatile __CNSTATBbits_t CNSTATBbits __asm__ ("CNSTATB") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATBCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATBSET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATBINV __attribute__((section("sfrs")));
extern volatile unsigned int ANSELC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ANSC0:1;
    unsigned ANSC1:1;
    unsigned ANSC2:1;
    unsigned ANSC3:1;
  };
  struct {
    unsigned w:32;
  };
} __ANSELCbits_t;
extern volatile __ANSELCbits_t ANSELCbits __asm__ ("ANSELC") __attribute__((section("sfrs")));
extern volatile unsigned int ANSELCCLR __attribute__((section("sfrs")));
extern volatile unsigned int ANSELCSET __attribute__((section("sfrs")));
extern volatile unsigned int ANSELCINV __attribute__((section("sfrs")));
extern volatile unsigned int TRISC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned TRISC0:1;
    unsigned TRISC1:1;
    unsigned TRISC2:1;
    unsigned TRISC3:1;
    unsigned TRISC4:1;
    unsigned TRISC5:1;
    unsigned TRISC6:1;
    unsigned TRISC7:1;
    unsigned TRISC8:1;
    unsigned TRISC9:1;
  };
  struct {
    unsigned w:32;
  };
} __TRISCbits_t;
extern volatile __TRISCbits_t TRISCbits __asm__ ("TRISC") __attribute__((section("sfrs")));
extern volatile unsigned int TRISCCLR __attribute__((section("sfrs")));
extern volatile unsigned int TRISCSET __attribute__((section("sfrs")));
extern volatile unsigned int TRISCINV __attribute__((section("sfrs")));
extern volatile unsigned int PORTC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned RC3:1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
    unsigned RC8:1;
    unsigned RC9:1;
  };
  struct {
    unsigned w:32;
  };
} __PORTCbits_t;
extern volatile __PORTCbits_t PORTCbits __asm__ ("PORTC") __attribute__((section("sfrs")));
extern volatile unsigned int PORTCCLR __attribute__((section("sfrs")));
extern volatile unsigned int PORTCSET __attribute__((section("sfrs")));
extern volatile unsigned int PORTCINV __attribute__((section("sfrs")));
extern volatile unsigned int LATC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned LATC0:1;
    unsigned LATC1:1;
    unsigned LATC2:1;
    unsigned LATC3:1;
    unsigned LATC4:1;
    unsigned LATC5:1;
    unsigned LATC6:1;
    unsigned LATC7:1;
    unsigned LATC8:1;
    unsigned LATC9:1;
  };
  struct {
    unsigned w:32;
  };
} __LATCbits_t;
extern volatile __LATCbits_t LATCbits __asm__ ("LATC") __attribute__((section("sfrs")));
extern volatile unsigned int LATCCLR __attribute__((section("sfrs")));
extern volatile unsigned int LATCSET __attribute__((section("sfrs")));
extern volatile unsigned int LATCINV __attribute__((section("sfrs")));
extern volatile unsigned int ODCC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned ODCC0:1;
    unsigned ODCC1:1;
    unsigned ODCC2:1;
    unsigned ODCC3:1;
    unsigned ODCC4:1;
    unsigned ODCC5:1;
    unsigned ODCC6:1;
    unsigned ODCC7:1;
    unsigned ODCC8:1;
    unsigned ODCC9:1;
  };
  struct {
    unsigned w:32;
  };
} __ODCCbits_t;
extern volatile __ODCCbits_t ODCCbits __asm__ ("ODCC") __attribute__((section("sfrs")));
extern volatile unsigned int ODCCCLR __attribute__((section("sfrs")));
extern volatile unsigned int ODCCSET __attribute__((section("sfrs")));
extern volatile unsigned int ODCCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPUC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPUC0:1;
    unsigned CNPUC1:1;
    unsigned CNPUC2:1;
    unsigned CNPUC3:1;
    unsigned CNPUC4:1;
    unsigned CNPUC5:1;
    unsigned CNPUC6:1;
    unsigned CNPUC7:1;
    unsigned CNPUC8:1;
    unsigned CNPUC9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPUCbits_t;
extern volatile __CNPUCbits_t CNPUCbits __asm__ ("CNPUC") __attribute__((section("sfrs")));
extern volatile unsigned int CNPUCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPUCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPUCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNPDC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNPDC0:1;
    unsigned CNPDC1:1;
    unsigned CNPDC2:1;
    unsigned CNPDC3:1;
    unsigned CNPDC4:1;
    unsigned CNPDC5:1;
    unsigned CNPDC6:1;
    unsigned CNPDC7:1;
    unsigned CNPDC8:1;
    unsigned CNPDC9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNPDCbits_t;
extern volatile __CNPDCbits_t CNPDCbits __asm__ ("CNPDC") __attribute__((section("sfrs")));
extern volatile unsigned int CNPDCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNPDCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNPDCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNCONC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned :13;
    unsigned SIDL:1;
    unsigned :1;
    unsigned ON:1;
  };
  struct {
    unsigned w:32;
  };
} __CNCONCbits_t;
extern volatile __CNCONCbits_t CNCONCbits __asm__ ("CNCONC") __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNCONCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNENC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNIEC0:1;
    unsigned CNIEC1:1;
    unsigned CNIEC2:1;
    unsigned CNIEC3:1;
    unsigned CNIEC4:1;
    unsigned CNIEC5:1;
    unsigned CNIEC6:1;
    unsigned CNIEC7:1;
    unsigned CNIEC8:1;
    unsigned CNIEC9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNENCbits_t;
extern volatile __CNENCbits_t CNENCbits __asm__ ("CNENC") __attribute__((section("sfrs")));
extern volatile unsigned int CNENCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNENCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNENCINV __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATC __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned CNSTATC0:1;
    unsigned CNSTATC1:1;
    unsigned CNSTATC2:1;
    unsigned CNSTATC3:1;
    unsigned CNSTATC4:1;
    unsigned CNSTATC5:1;
    unsigned CNSTATC6:1;
    unsigned CNSTATC7:1;
    unsigned CNSTATC8:1;
    unsigned CNSTATC9:1;
  };
  struct {
    unsigned w:32;
  };
} __CNSTATCbits_t;
extern volatile __CNSTATCbits_t CNSTATCbits __asm__ ("CNSTATC") __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATCCLR __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATCSET __attribute__((section("sfrs")));
extern volatile unsigned int CNSTATCINV __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG3 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned USERID:16;
    unsigned :12;
    unsigned PMDL1WAY:1;
    unsigned IOL1WAY:1;
    unsigned FUSBIDIO:1;
    unsigned FVBUSONIO:1;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG3bits_t;
extern volatile __DEVCFG3bits_t DEVCFG3bits __asm__ ("DEVCFG3") __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG2 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FPLLIDIV:3;
    unsigned :1;
    unsigned FPLLMUL:3;
    unsigned :1;
    unsigned UPLLIDIV:3;
    unsigned :4;
    unsigned UPLLEN:1;
    unsigned FPLLODIV:3;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG2bits_t;
extern volatile __DEVCFG2bits_t DEVCFG2bits __asm__ ("DEVCFG2") __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG1 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned FNOSC:3;
    unsigned :2;
    unsigned FSOSCEN:1;
    unsigned :1;
    unsigned IESO:1;
    unsigned POSCMOD:2;
    unsigned OSCIOFNC:1;
    unsigned :1;
    unsigned FPBDIV:2;
    unsigned FCKSM:2;
    unsigned WDTPS:5;
    unsigned :1;
    unsigned WINDIS:1;
    unsigned FWDTEN:1;
    unsigned FWDTWINSZ:2;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG1bits_t;
extern volatile __DEVCFG1bits_t DEVCFG1bits __asm__ ("DEVCFG1") __attribute__((section("sfrs")));
extern volatile unsigned int DEVCFG0 __attribute__((section("sfrs")));
typedef union {
  struct {
    unsigned DEBUG:2;
    unsigned JTAGEN:1;
    unsigned ICESEL:2;
    unsigned :5;
    unsigned PWP:9;
    unsigned :5;
    unsigned BWP:1;
    unsigned :3;
    unsigned CP:1;
  };
  struct {
    unsigned FDEBUG:2;
  };
  struct {
    unsigned w:32;
  };
} __DEVCFG0bits_t;
extern volatile __DEVCFG0bits_t DEVCFG0bits __asm__ ("DEVCFG0") __attribute__((section("sfrs")));
# 14534 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx270f256d.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/ppic32mx.h" 1 3
# 14535 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/proc/p32mx270f256d.h" 2 3
# 168 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 2 3
# 450 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
extern int __XC_UART;
# 464 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
typedef unsigned long _reg_t;
# 628 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
extern unsigned int _xchsrspss (unsigned int);
# 642 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/cp0defs.h" 1 3
# 35 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/cp0defs.h" 3
       
# 643 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 2 3


# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/appio.h" 1 3
# 39 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/appio.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/string.h" 1 3
# 11 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/string.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 1 3
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/ansi.h" 1 3
# 76 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stddef.h" 2 3


typedef long unsigned int size_t;




typedef long int ptrdiff_t;







typedef int wchar_t;




typedef unsigned int wint_t;
# 12 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/string.h" 2 3


extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);

extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);

extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strrchr(const char *, int);
# 40 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/appio.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 1 3
# 23 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdarg.h" 1 3
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdarg.h" 3
typedef __builtin_va_list __va_list;





typedef __builtin_va_list __gnuc_va_list;
# 126 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdarg.h" 3
typedef __va_list va_list;
# 24 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 2 3





extern struct _iobuf {
 char * _ptr;
 int _cnt;
 char * _base;
 unsigned short _flag;
 short _file;
 size_t _size;
} _iob[8];


    extern struct _iobuf *_Files;
# 49 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
    extern struct _tfiles
        {
          char tname[81];
          struct _iobuf * tfp;
        } * _tfilesptr;
# 137 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
    extern int _mon_getc (int canblock);
    extern void _mon_putc (char c);
    extern void _mon_puts (const char * s);
    extern void _mon_write (const char * s, unsigned int count);
# 230 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
    extern int _flsbuf(char, struct _iobuf *);
    extern int _filbuf(struct _iobuf *);
    extern int fclose(struct _iobuf *);
    extern int fflush(struct _iobuf *);
    extern int fgetc(struct _iobuf *);
    extern int ungetc(int, struct _iobuf *);
    extern int fputc(int, struct _iobuf *);
    extern int getw(struct _iobuf *);
    extern int putw(int, struct _iobuf *);
    extern int fputs(const char *, struct _iobuf *);
    extern int fread(void *, size_t, size_t, struct _iobuf *);
    extern size_t fwrite(const void *, size_t, size_t, struct _iobuf *);
    extern int fseek(struct _iobuf *, long, int);
    extern int rewind(struct _iobuf *);
    extern void setbuf(struct _iobuf *, char *);
    extern int setvbuf(struct _iobuf *, char *, int, size_t);
    extern int fprintf(struct _iobuf *, const char *, ...);
    extern int _fprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fprintf_eE (struct _iobuf *, const char *, ...); extern int _fprintf_eEfF (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _fprintf_eEgG (struct _iobuf *, const char *, ...); extern int _fprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _fprintf_eEs (struct _iobuf *, const char *, ...); extern int _fprintf_fF (struct _iobuf *, const char *, ...); extern int _fprintf_fFgG (struct _iobuf *, const char *, ...); extern int _fprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _fprintf_fFs (struct _iobuf *, const char *, ...); extern int _fprintf_gG (struct _iobuf *, const char *, ...); extern int _fprintf_gGs (struct _iobuf *, const char *, ...); extern int _fprintf_s (struct _iobuf *, const char *, ...); extern int _fprintf (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfprintf_eE (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfF (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgG (struct _iobuf *, const char *, ...); extern int _dfprintf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_eEs (struct _iobuf *, const char *, ...); extern int _dfprintf_fF (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgG (struct _iobuf *, const char *, ...); extern int _dfprintf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfprintf_fFs (struct _iobuf *, const char *, ...); extern int _dfprintf_gG (struct _iobuf *, const char *, ...); extern int _dfprintf_gGs (struct _iobuf *, const char *, ...); extern int _dfprintf_s (struct _iobuf *, const char *, ...); extern int _dfprintf (struct _iobuf *, const char *, ...);
    extern int fscanf(struct _iobuf *, const char *, ...);
    extern int _fscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _fscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _fscanf_eE (struct _iobuf *, const char *, ...); extern int _fscanf_eEfF (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _fscanf_eEgG (struct _iobuf *, const char *, ...); extern int _fscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _fscanf_eEs (struct _iobuf *, const char *, ...); extern int _fscanf_fF (struct _iobuf *, const char *, ...); extern int _fscanf_fFgG (struct _iobuf *, const char *, ...); extern int _fscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _fscanf_fFs (struct _iobuf *, const char *, ...); extern int _fscanf_gG (struct _iobuf *, const char *, ...); extern int _fscanf_gGs (struct _iobuf *, const char *, ...); extern int _fscanf_s (struct _iobuf *, const char *, ...); extern int _fscanf (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdeEnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdfFnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdgGnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopsuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_cdnopuxX (struct _iobuf *, const char *, ...); extern int _dfscanf_eE (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfF (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEfFs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgG (struct _iobuf *, const char *, ...); extern int _dfscanf_eEgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_eEs (struct _iobuf *, const char *, ...); extern int _dfscanf_fF (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgG (struct _iobuf *, const char *, ...); extern int _dfscanf_fFgGs (struct _iobuf *, const char *, ...); extern int _dfscanf_fFs (struct _iobuf *, const char *, ...); extern int _dfscanf_gG (struct _iobuf *, const char *, ...); extern int _dfscanf_gGs (struct _iobuf *, const char *, ...); extern int _dfscanf_s (struct _iobuf *, const char *, ...); extern int _dfscanf (struct _iobuf *, const char *, ...);
    extern int vfprintf(struct _iobuf *, const char *, va_list);
    extern int _vfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfprintf_eE (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fF (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _vfprintf_gG (struct _iobuf *, const char *, va_list); extern int _vfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _vfprintf_s (struct _iobuf *, const char *, va_list); extern int _vfprintf (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eE (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fF (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gG (struct _iobuf *, const char *, va_list); extern int _dvfprintf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfprintf_s (struct _iobuf *, const char *, va_list); extern int _dvfprintf (struct _iobuf *, const char *, va_list);
    extern int vfscanf(struct _iobuf *, const char *, va_list);
    extern int _vfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _vfscanf_eE (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fF (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _vfscanf_gG (struct _iobuf *, const char *, va_list); extern int _vfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _vfscanf_s (struct _iobuf *, const char *, va_list); extern int _vfscanf (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdeEnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdfFnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdgGnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopsuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_cdnopuxX (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eE (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEfFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_eEs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fF (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFgGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_fFs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gG (struct _iobuf *, const char *, va_list); extern int _dvfscanf_gGs (struct _iobuf *, const char *, va_list); extern int _dvfscanf_s (struct _iobuf *, const char *, va_list); extern int _dvfscanf (struct _iobuf *, const char *, va_list);
    extern int remove(const char *);
    extern int rename(const char *, const char *);
    extern struct _iobuf * fopen(const char *, const char *);
    extern struct _iobuf * freopen(const char *, const char *, struct _iobuf *);
    extern struct _iobuf * fdopen(int, const char *);
    extern long ftell(struct _iobuf *);
    extern char * fgets(char *, int, struct _iobuf *);
    extern void perror(const char *);
    extern char* _bufallo (void);
    extern void _buffree (char *pp);
    extern char * tmpnam(char *);
    extern struct _iobuf * tmpfile(void);





    extern void (*_atexitptr)(void);
# 302 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdio.h" 3
    extern char * gets(char *);
    extern int puts(const char *);

    extern int scanf(const char *, ...);
    extern int _scanf_cdeEfFgGnopsuxX (const char *, ...); extern int _scanf_cdeEfFgGnopuxX (const char *, ...); extern int _scanf_cdeEfFnopsuxX (const char *, ...); extern int _scanf_cdeEfFnopuxX (const char *, ...); extern int _scanf_cdeEgGnopsuxX (const char *, ...); extern int _scanf_cdeEgGnopuxX (const char *, ...); extern int _scanf_cdeEnopsuxX (const char *, ...); extern int _scanf_cdeEnopuxX (const char *, ...); extern int _scanf_cdfFgGnopsuxX (const char *, ...); extern int _scanf_cdfFgGnopuxX (const char *, ...); extern int _scanf_cdfFnopsuxX (const char *, ...); extern int _scanf_cdfFnopuxX (const char *, ...); extern int _scanf_cdgGnopsuxX (const char *, ...); extern int _scanf_cdgGnopuxX (const char *, ...); extern int _scanf_cdnopsuxX (const char *, ...); extern int _scanf_cdnopuxX (const char *, ...); extern int _scanf_eE (const char *, ...); extern int _scanf_eEfF (const char *, ...); extern int _scanf_eEfFgG (const char *, ...); extern int _scanf_eEfFgGs (const char *, ...); extern int _scanf_eEfFs (const char *, ...); extern int _scanf_eEgG (const char *, ...); extern int _scanf_eEgGs (const char *, ...); extern int _scanf_eEs (const char *, ...); extern int _scanf_fF (const char *, ...); extern int _scanf_fFgG (const char *, ...); extern int _scanf_fFgGs (const char *, ...); extern int _scanf_fFs (const char *, ...); extern int _scanf_gG (const char *, ...); extern int _scanf_gGs (const char *, ...); extern int _scanf_s (const char *, ...); extern int _scanf (const char *, ...); extern int _dscanf_cdeEfFgGnopsuxX (const char *, ...); extern int _dscanf_cdeEfFgGnopuxX (const char *, ...); extern int _dscanf_cdeEfFnopsuxX (const char *, ...); extern int _dscanf_cdeEfFnopuxX (const char *, ...); extern int _dscanf_cdeEgGnopsuxX (const char *, ...); extern int _dscanf_cdeEgGnopuxX (const char *, ...); extern int _dscanf_cdeEnopsuxX (const char *, ...); extern int _dscanf_cdeEnopuxX (const char *, ...); extern int _dscanf_cdfFgGnopsuxX (const char *, ...); extern int _dscanf_cdfFgGnopuxX (const char *, ...); extern int _dscanf_cdfFnopsuxX (const char *, ...); extern int _dscanf_cdfFnopuxX (const char *, ...); extern int _dscanf_cdgGnopsuxX (const char *, ...); extern int _dscanf_cdgGnopuxX (const char *, ...); extern int _dscanf_cdnopsuxX (const char *, ...); extern int _dscanf_cdnopuxX (const char *, ...); extern int _dscanf_eE (const char *, ...); extern int _dscanf_eEfF (const char *, ...); extern int _dscanf_eEfFgG (const char *, ...); extern int _dscanf_eEfFgGs (const char *, ...); extern int _dscanf_eEfFs (const char *, ...); extern int _dscanf_eEgG (const char *, ...); extern int _dscanf_eEgGs (const char *, ...); extern int _dscanf_eEs (const char *, ...); extern int _dscanf_fF (const char *, ...); extern int _dscanf_fFgG (const char *, ...); extern int _dscanf_fFgGs (const char *, ...); extern int _dscanf_fFs (const char *, ...); extern int _dscanf_gG (const char *, ...); extern int _dscanf_gGs (const char *, ...); extern int _dscanf_s (const char *, ...); extern int _dscanf (const char *, ...);
    extern int sscanf(const char *, const char *, ...);
    extern int _sscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _sscanf_cdeEnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _sscanf_cdfFnopuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _sscanf_cdgGnopuxX (const char *, const char *, ...); extern int _sscanf_cdnopsuxX (const char *, const char *, ...); extern int _sscanf_cdnopuxX (const char *, const char *, ...); extern int _sscanf_eE (const char *, const char *, ...); extern int _sscanf_eEfF (const char *, const char *, ...); extern int _sscanf_eEfFgG (const char *, const char *, ...); extern int _sscanf_eEfFgGs (const char *, const char *, ...); extern int _sscanf_eEfFs (const char *, const char *, ...); extern int _sscanf_eEgG (const char *, const char *, ...); extern int _sscanf_eEgGs (const char *, const char *, ...); extern int _sscanf_eEs (const char *, const char *, ...); extern int _sscanf_fF (const char *, const char *, ...); extern int _sscanf_fFgG (const char *, const char *, ...); extern int _sscanf_fFgGs (const char *, const char *, ...); extern int _sscanf_fFs (const char *, const char *, ...); extern int _sscanf_gG (const char *, const char *, ...); extern int _sscanf_gGs (const char *, const char *, ...); extern int _sscanf_s (const char *, const char *, ...); extern int _sscanf (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdeEnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdfFnopuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdgGnopuxX (const char *, const char *, ...); extern int _dsscanf_cdnopsuxX (const char *, const char *, ...); extern int _dsscanf_cdnopuxX (const char *, const char *, ...); extern int _dsscanf_eE (const char *, const char *, ...); extern int _dsscanf_eEfF (const char *, const char *, ...); extern int _dsscanf_eEfFgG (const char *, const char *, ...); extern int _dsscanf_eEfFgGs (const char *, const char *, ...); extern int _dsscanf_eEfFs (const char *, const char *, ...); extern int _dsscanf_eEgG (const char *, const char *, ...); extern int _dsscanf_eEgGs (const char *, const char *, ...); extern int _dsscanf_eEs (const char *, const char *, ...); extern int _dsscanf_fF (const char *, const char *, ...); extern int _dsscanf_fFgG (const char *, const char *, ...); extern int _dsscanf_fFgGs (const char *, const char *, ...); extern int _dsscanf_fFs (const char *, const char *, ...); extern int _dsscanf_gG (const char *, const char *, ...); extern int _dsscanf_gGs (const char *, const char *, ...); extern int _dsscanf_s (const char *, const char *, ...); extern int _dsscanf (const char *, const char *, ...);

    extern int vprintf(const char *, va_list);
    extern int _vprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _vprintf_cdeEfFnopsuxX (const char *, va_list); extern int _vprintf_cdeEfFnopuxX (const char *, va_list); extern int _vprintf_cdeEgGnopsuxX (const char *, va_list); extern int _vprintf_cdeEgGnopuxX (const char *, va_list); extern int _vprintf_cdeEnopsuxX (const char *, va_list); extern int _vprintf_cdeEnopuxX (const char *, va_list); extern int _vprintf_cdfFgGnopsuxX (const char *, va_list); extern int _vprintf_cdfFgGnopuxX (const char *, va_list); extern int _vprintf_cdfFnopsuxX (const char *, va_list); extern int _vprintf_cdfFnopuxX (const char *, va_list); extern int _vprintf_cdgGnopsuxX (const char *, va_list); extern int _vprintf_cdgGnopuxX (const char *, va_list); extern int _vprintf_cdnopsuxX (const char *, va_list); extern int _vprintf_cdnopuxX (const char *, va_list); extern int _vprintf_eE (const char *, va_list); extern int _vprintf_eEfF (const char *, va_list); extern int _vprintf_eEfFgG (const char *, va_list); extern int _vprintf_eEfFgGs (const char *, va_list); extern int _vprintf_eEfFs (const char *, va_list); extern int _vprintf_eEgG (const char *, va_list); extern int _vprintf_eEgGs (const char *, va_list); extern int _vprintf_eEs (const char *, va_list); extern int _vprintf_fF (const char *, va_list); extern int _vprintf_fFgG (const char *, va_list); extern int _vprintf_fFgGs (const char *, va_list); extern int _vprintf_fFs (const char *, va_list); extern int _vprintf_gG (const char *, va_list); extern int _vprintf_gGs (const char *, va_list); extern int _vprintf_s (const char *, va_list); extern int _vprintf (const char *, va_list); extern int _dvprintf_cdeEfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopsuxX (const char *, va_list); extern int _dvprintf_cdeEfFnopuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopsuxX (const char *, va_list); extern int _dvprintf_cdeEgGnopuxX (const char *, va_list); extern int _dvprintf_cdeEnopsuxX (const char *, va_list); extern int _dvprintf_cdeEnopuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopsuxX (const char *, va_list); extern int _dvprintf_cdfFgGnopuxX (const char *, va_list); extern int _dvprintf_cdfFnopsuxX (const char *, va_list); extern int _dvprintf_cdfFnopuxX (const char *, va_list); extern int _dvprintf_cdgGnopsuxX (const char *, va_list); extern int _dvprintf_cdgGnopuxX (const char *, va_list); extern int _dvprintf_cdnopsuxX (const char *, va_list); extern int _dvprintf_cdnopuxX (const char *, va_list); extern int _dvprintf_eE (const char *, va_list); extern int _dvprintf_eEfF (const char *, va_list); extern int _dvprintf_eEfFgG (const char *, va_list); extern int _dvprintf_eEfFgGs (const char *, va_list); extern int _dvprintf_eEfFs (const char *, va_list); extern int _dvprintf_eEgG (const char *, va_list); extern int _dvprintf_eEgGs (const char *, va_list); extern int _dvprintf_eEs (const char *, va_list); extern int _dvprintf_fF (const char *, va_list); extern int _dvprintf_fFgG (const char *, va_list); extern int _dvprintf_fFgGs (const char *, va_list); extern int _dvprintf_fFs (const char *, va_list); extern int _dvprintf_gG (const char *, va_list); extern int _dvprintf_gGs (const char *, va_list); extern int _dvprintf_s (const char *, va_list); extern int _dvprintf (const char *, va_list);
    extern int vsprintf(char *, const char *, va_list);
    extern int _vsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _vsprintf_cdnopsuxX (char *, const char *, va_list); extern int _vsprintf_cdnopuxX (char *, const char *, va_list); extern int _vsprintf_eE (char *, const char *, va_list); extern int _vsprintf_eEfF (char *, const char *, va_list); extern int _vsprintf_eEfFgG (char *, const char *, va_list); extern int _vsprintf_eEfFgGs (char *, const char *, va_list); extern int _vsprintf_eEfFs (char *, const char *, va_list); extern int _vsprintf_eEgG (char *, const char *, va_list); extern int _vsprintf_eEgGs (char *, const char *, va_list); extern int _vsprintf_eEs (char *, const char *, va_list); extern int _vsprintf_fF (char *, const char *, va_list); extern int _vsprintf_fFgG (char *, const char *, va_list); extern int _vsprintf_fFgGs (char *, const char *, va_list); extern int _vsprintf_fFs (char *, const char *, va_list); extern int _vsprintf_gG (char *, const char *, va_list); extern int _vsprintf_gGs (char *, const char *, va_list); extern int _vsprintf_s (char *, const char *, va_list); extern int _vsprintf (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdeEnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdfFnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdgGnopuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopsuxX (char *, const char *, va_list); extern int _dvsprintf_cdnopuxX (char *, const char *, va_list); extern int _dvsprintf_eE (char *, const char *, va_list); extern int _dvsprintf_eEfF (char *, const char *, va_list); extern int _dvsprintf_eEfFgG (char *, const char *, va_list); extern int _dvsprintf_eEfFgGs (char *, const char *, va_list); extern int _dvsprintf_eEfFs (char *, const char *, va_list); extern int _dvsprintf_eEgG (char *, const char *, va_list); extern int _dvsprintf_eEgGs (char *, const char *, va_list); extern int _dvsprintf_eEs (char *, const char *, va_list); extern int _dvsprintf_fF (char *, const char *, va_list); extern int _dvsprintf_fFgG (char *, const char *, va_list); extern int _dvsprintf_fFgGs (char *, const char *, va_list); extern int _dvsprintf_fFs (char *, const char *, va_list); extern int _dvsprintf_gG (char *, const char *, va_list); extern int _dvsprintf_gGs (char *, const char *, va_list); extern int _dvsprintf_s (char *, const char *, va_list); extern int _dvsprintf (char *, const char *, va_list);
    extern int vscanf(const char *, va_list ap);
    extern int _vscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _vscanf_cdeEnopsuxX (const char *, va_list ap); extern int _vscanf_cdeEnopuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _vscanf_cdfFnopsuxX (const char *, va_list ap); extern int _vscanf_cdfFnopuxX (const char *, va_list ap); extern int _vscanf_cdgGnopsuxX (const char *, va_list ap); extern int _vscanf_cdgGnopuxX (const char *, va_list ap); extern int _vscanf_cdnopsuxX (const char *, va_list ap); extern int _vscanf_cdnopuxX (const char *, va_list ap); extern int _vscanf_eE (const char *, va_list ap); extern int _vscanf_eEfF (const char *, va_list ap); extern int _vscanf_eEfFgG (const char *, va_list ap); extern int _vscanf_eEfFgGs (const char *, va_list ap); extern int _vscanf_eEfFs (const char *, va_list ap); extern int _vscanf_eEgG (const char *, va_list ap); extern int _vscanf_eEgGs (const char *, va_list ap); extern int _vscanf_eEs (const char *, va_list ap); extern int _vscanf_fF (const char *, va_list ap); extern int _vscanf_fFgG (const char *, va_list ap); extern int _vscanf_fFgGs (const char *, va_list ap); extern int _vscanf_fFs (const char *, va_list ap); extern int _vscanf_gG (const char *, va_list ap); extern int _vscanf_gGs (const char *, va_list ap); extern int _vscanf_s (const char *, va_list ap); extern int _vscanf (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopsuxX (const char *, va_list ap); extern int _dvscanf_cdeEnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopsuxX (const char *, va_list ap); extern int _dvscanf_cdfFnopuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopsuxX (const char *, va_list ap); extern int _dvscanf_cdgGnopuxX (const char *, va_list ap); extern int _dvscanf_cdnopsuxX (const char *, va_list ap); extern int _dvscanf_cdnopuxX (const char *, va_list ap); extern int _dvscanf_eE (const char *, va_list ap); extern int _dvscanf_eEfF (const char *, va_list ap); extern int _dvscanf_eEfFgG (const char *, va_list ap); extern int _dvscanf_eEfFgGs (const char *, va_list ap); extern int _dvscanf_eEfFs (const char *, va_list ap); extern int _dvscanf_eEgG (const char *, va_list ap); extern int _dvscanf_eEgGs (const char *, va_list ap); extern int _dvscanf_eEs (const char *, va_list ap); extern int _dvscanf_fF (const char *, va_list ap); extern int _dvscanf_fFgG (const char *, va_list ap); extern int _dvscanf_fFgGs (const char *, va_list ap); extern int _dvscanf_fFs (const char *, va_list ap); extern int _dvscanf_gG (const char *, va_list ap); extern int _dvscanf_gGs (const char *, va_list ap); extern int _dvscanf_s (const char *, va_list ap); extern int _dvscanf (const char *, va_list ap);
    extern int vsscanf(const char *, const char *, va_list);
    extern int _vsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _vsscanf_cdnopuxX (const char *, const char *, va_list); extern int _vsscanf_eE (const char *, const char *, va_list); extern int _vsscanf_eEfF (const char *, const char *, va_list); extern int _vsscanf_eEfFgG (const char *, const char *, va_list); extern int _vsscanf_eEfFgGs (const char *, const char *, va_list); extern int _vsscanf_eEfFs (const char *, const char *, va_list); extern int _vsscanf_eEgG (const char *, const char *, va_list); extern int _vsscanf_eEgGs (const char *, const char *, va_list); extern int _vsscanf_eEs (const char *, const char *, va_list); extern int _vsscanf_fF (const char *, const char *, va_list); extern int _vsscanf_fFgG (const char *, const char *, va_list); extern int _vsscanf_fFgGs (const char *, const char *, va_list); extern int _vsscanf_fFs (const char *, const char *, va_list); extern int _vsscanf_gG (const char *, const char *, va_list); extern int _vsscanf_gGs (const char *, const char *, va_list); extern int _vsscanf_s (const char *, const char *, va_list); extern int _vsscanf (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdeEnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdfFnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdgGnopuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopsuxX (const char *, const char *, va_list); extern int _dvsscanf_cdnopuxX (const char *, const char *, va_list); extern int _dvsscanf_eE (const char *, const char *, va_list); extern int _dvsscanf_eEfF (const char *, const char *, va_list); extern int _dvsscanf_eEfFgG (const char *, const char *, va_list); extern int _dvsscanf_eEfFgGs (const char *, const char *, va_list); extern int _dvsscanf_eEfFs (const char *, const char *, va_list); extern int _dvsscanf_eEgG (const char *, const char *, va_list); extern int _dvsscanf_eEgGs (const char *, const char *, va_list); extern int _dvsscanf_eEs (const char *, const char *, va_list); extern int _dvsscanf_fF (const char *, const char *, va_list); extern int _dvsscanf_fFgG (const char *, const char *, va_list); extern int _dvsscanf_fFgGs (const char *, const char *, va_list); extern int _dvsscanf_fFs (const char *, const char *, va_list); extern int _dvsscanf_gG (const char *, const char *, va_list); extern int _dvsscanf_gGs (const char *, const char *, va_list); extern int _dvsscanf_s (const char *, const char *, va_list); extern int _dvsscanf (const char *, const char *, va_list);


    extern int snprintf (char *, size_t, const char *, ...);
    extern int _snprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _snprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _snprintf_eE (char *, size_t, const char *, ...); extern int _snprintf_eEfF (char *, size_t, const char *, ...); extern int _snprintf_eEfFgG (char *, size_t, const char *, ...); extern int _snprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _snprintf_eEfFs (char *, size_t, const char *, ...); extern int _snprintf_eEgG (char *, size_t, const char *, ...); extern int _snprintf_eEgGs (char *, size_t, const char *, ...); extern int _snprintf_eEs (char *, size_t, const char *, ...); extern int _snprintf_fF (char *, size_t, const char *, ...); extern int _snprintf_fFgG (char *, size_t, const char *, ...); extern int _snprintf_fFgGs (char *, size_t, const char *, ...); extern int _snprintf_fFs (char *, size_t, const char *, ...); extern int _snprintf_gG (char *, size_t, const char *, ...); extern int _snprintf_gGs (char *, size_t, const char *, ...); extern int _snprintf_s (char *, size_t, const char *, ...); extern int _snprintf (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdeEnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdfFnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdgGnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopsuxX (char *, size_t, const char *, ...); extern int _dsnprintf_cdnopuxX (char *, size_t, const char *, ...); extern int _dsnprintf_eE (char *, size_t, const char *, ...); extern int _dsnprintf_eEfF (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEfFs (char *, size_t, const char *, ...); extern int _dsnprintf_eEgG (char *, size_t, const char *, ...); extern int _dsnprintf_eEgGs (char *, size_t, const char *, ...); extern int _dsnprintf_eEs (char *, size_t, const char *, ...); extern int _dsnprintf_fF (char *, size_t, const char *, ...); extern int _dsnprintf_fFgG (char *, size_t, const char *, ...); extern int _dsnprintf_fFgGs (char *, size_t, const char *, ...); extern int _dsnprintf_fFs (char *, size_t, const char *, ...); extern int _dsnprintf_gG (char *, size_t, const char *, ...); extern int _dsnprintf_gGs (char *, size_t, const char *, ...); extern int _dsnprintf_s (char *, size_t, const char *, ...); extern int _dsnprintf (char *, size_t, const char *, ...);
    extern int vsnprintf (char *, size_t, const char *, __va_list);
    extern int _vsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _vsnprintf_eE (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fF (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _vsnprintf_gG (char *, size_t, const char *, __va_list); extern int _vsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _vsnprintf_s (char *, size_t, const char *, __va_list); extern int _vsnprintf (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdeEnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdfFnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdgGnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopsuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_cdnopuxX (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eE (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEfFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_eEs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fF (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFgGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_fFs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gG (char *, size_t, const char *, __va_list); extern int _dvsnprintf_gGs (char *, size_t, const char *, __va_list); extern int _dvsnprintf_s (char *, size_t, const char *, __va_list); extern int _dvsnprintf (char *, size_t, const char *, __va_list);
    extern int asprintf (char **, const char *, ...);
    extern int _asprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _asprintf_cdeEnopsuxX (char **, const char *, ...); extern int _asprintf_cdeEnopuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _asprintf_cdfFnopsuxX (char **, const char *, ...); extern int _asprintf_cdfFnopuxX (char **, const char *, ...); extern int _asprintf_cdgGnopsuxX (char **, const char *, ...); extern int _asprintf_cdgGnopuxX (char **, const char *, ...); extern int _asprintf_cdnopsuxX (char **, const char *, ...); extern int _asprintf_cdnopuxX (char **, const char *, ...); extern int _asprintf_eE (char **, const char *, ...); extern int _asprintf_eEfF (char **, const char *, ...); extern int _asprintf_eEfFgG (char **, const char *, ...); extern int _asprintf_eEfFgGs (char **, const char *, ...); extern int _asprintf_eEfFs (char **, const char *, ...); extern int _asprintf_eEgG (char **, const char *, ...); extern int _asprintf_eEgGs (char **, const char *, ...); extern int _asprintf_eEs (char **, const char *, ...); extern int _asprintf_fF (char **, const char *, ...); extern int _asprintf_fFgG (char **, const char *, ...); extern int _asprintf_fFgGs (char **, const char *, ...); extern int _asprintf_fFs (char **, const char *, ...); extern int _asprintf_gG (char **, const char *, ...); extern int _asprintf_gGs (char **, const char *, ...); extern int _asprintf_s (char **, const char *, ...); extern int _asprintf (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopsuxX (char **, const char *, ...); extern int _dasprintf_cdeEnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopsuxX (char **, const char *, ...); extern int _dasprintf_cdfFnopuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopsuxX (char **, const char *, ...); extern int _dasprintf_cdgGnopuxX (char **, const char *, ...); extern int _dasprintf_cdnopsuxX (char **, const char *, ...); extern int _dasprintf_cdnopuxX (char **, const char *, ...); extern int _dasprintf_eE (char **, const char *, ...); extern int _dasprintf_eEfF (char **, const char *, ...); extern int _dasprintf_eEfFgG (char **, const char *, ...); extern int _dasprintf_eEfFgGs (char **, const char *, ...); extern int _dasprintf_eEfFs (char **, const char *, ...); extern int _dasprintf_eEgG (char **, const char *, ...); extern int _dasprintf_eEgGs (char **, const char *, ...); extern int _dasprintf_eEs (char **, const char *, ...); extern int _dasprintf_fF (char **, const char *, ...); extern int _dasprintf_fFgG (char **, const char *, ...); extern int _dasprintf_fFgGs (char **, const char *, ...); extern int _dasprintf_fFs (char **, const char *, ...); extern int _dasprintf_gG (char **, const char *, ...); extern int _dasprintf_gGs (char **, const char *, ...); extern int _dasprintf_s (char **, const char *, ...); extern int _dasprintf (char **, const char *, ...);
    extern int vasprintf (char **, const char *, __va_list);
    extern int _vasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _vasprintf_cdnopuxX (char **, const char *, __va_list); extern int _vasprintf_eE (char **, const char *, __va_list); extern int _vasprintf_eEfF (char **, const char *, __va_list); extern int _vasprintf_eEfFgG (char **, const char *, __va_list); extern int _vasprintf_eEfFgGs (char **, const char *, __va_list); extern int _vasprintf_eEfFs (char **, const char *, __va_list); extern int _vasprintf_eEgG (char **, const char *, __va_list); extern int _vasprintf_eEgGs (char **, const char *, __va_list); extern int _vasprintf_eEs (char **, const char *, __va_list); extern int _vasprintf_fF (char **, const char *, __va_list); extern int _vasprintf_fFgG (char **, const char *, __va_list); extern int _vasprintf_fFgGs (char **, const char *, __va_list); extern int _vasprintf_fFs (char **, const char *, __va_list); extern int _vasprintf_gG (char **, const char *, __va_list); extern int _vasprintf_gGs (char **, const char *, __va_list); extern int _vasprintf_s (char **, const char *, __va_list); extern int _vasprintf (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _dvasprintf_cdnopuxX (char **, const char *, __va_list); extern int _dvasprintf_eE (char **, const char *, __va_list); extern int _dvasprintf_eEfF (char **, const char *, __va_list); extern int _dvasprintf_eEfFgG (char **, const char *, __va_list); extern int _dvasprintf_eEfFgGs (char **, const char *, __va_list); extern int _dvasprintf_eEfFs (char **, const char *, __va_list); extern int _dvasprintf_eEgG (char **, const char *, __va_list); extern int _dvasprintf_eEgGs (char **, const char *, __va_list); extern int _dvasprintf_eEs (char **, const char *, __va_list); extern int _dvasprintf_fF (char **, const char *, __va_list); extern int _dvasprintf_fFgG (char **, const char *, __va_list); extern int _dvasprintf_fFgGs (char **, const char *, __va_list); extern int _dvasprintf_fFs (char **, const char *, __va_list); extern int _dvasprintf_gG (char **, const char *, __va_list); extern int _dvasprintf_gGs (char **, const char *, __va_list); extern int _dvasprintf_s (char **, const char *, __va_list); extern int _dvasprintf (char **, const char *, __va_list);
    extern int __vasprintf (char **, const char *, __va_list);
    extern int ___vasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int ___vasprintf_cdnopsuxX (char **, const char *, __va_list); extern int ___vasprintf_cdnopuxX (char **, const char *, __va_list); extern int ___vasprintf_eE (char **, const char *, __va_list); extern int ___vasprintf_eEfF (char **, const char *, __va_list); extern int ___vasprintf_eEfFgG (char **, const char *, __va_list); extern int ___vasprintf_eEfFgGs (char **, const char *, __va_list); extern int ___vasprintf_eEfFs (char **, const char *, __va_list); extern int ___vasprintf_eEgG (char **, const char *, __va_list); extern int ___vasprintf_eEgGs (char **, const char *, __va_list); extern int ___vasprintf_eEs (char **, const char *, __va_list); extern int ___vasprintf_fF (char **, const char *, __va_list); extern int ___vasprintf_fFgG (char **, const char *, __va_list); extern int ___vasprintf_fFgGs (char **, const char *, __va_list); extern int ___vasprintf_fFs (char **, const char *, __va_list); extern int ___vasprintf_gG (char **, const char *, __va_list); extern int ___vasprintf_gGs (char **, const char *, __va_list); extern int ___vasprintf_s (char **, const char *, __va_list); extern int ___vasprintf (char **, const char *, __va_list); extern int _d__vasprintf_cdeEfFgGnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEfFgGnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEfFnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEfFnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEgGnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEgGnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdeEnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdfFgGnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdfFgGnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdfFnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdfFnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdgGnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdgGnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdnopsuxX (char **, const char *, __va_list); extern int _d__vasprintf_cdnopuxX (char **, const char *, __va_list); extern int _d__vasprintf_eE (char **, const char *, __va_list); extern int _d__vasprintf_eEfF (char **, const char *, __va_list); extern int _d__vasprintf_eEfFgG (char **, const char *, __va_list); extern int _d__vasprintf_eEfFgGs (char **, const char *, __va_list); extern int _d__vasprintf_eEfFs (char **, const char *, __va_list); extern int _d__vasprintf_eEgG (char **, const char *, __va_list); extern int _d__vasprintf_eEgGs (char **, const char *, __va_list); extern int _d__vasprintf_eEs (char **, const char *, __va_list); extern int _d__vasprintf_fF (char **, const char *, __va_list); extern int _d__vasprintf_fFgG (char **, const char *, __va_list); extern int _d__vasprintf_fFgGs (char **, const char *, __va_list); extern int _d__vasprintf_fFs (char **, const char *, __va_list); extern int _d__vasprintf_gG (char **, const char *, __va_list); extern int _d__vasprintf_gGs (char **, const char *, __va_list); extern int _d__vasprintf_s (char **, const char *, __va_list); extern int _d__vasprintf (char **, const char *, __va_list);







    extern int sprintf(char *, const char *, ...);
    extern int _sprintf_cdeEfFgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEfFgGnopuxX (char *, const char *, ...); extern int _sprintf_cdeEfFnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEfFnopuxX (char *, const char *, ...); extern int _sprintf_cdeEgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEgGnopuxX (char *, const char *, ...); extern int _sprintf_cdeEnopsuxX (char *, const char *, ...); extern int _sprintf_cdeEnopuxX (char *, const char *, ...); extern int _sprintf_cdfFgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdfFgGnopuxX (char *, const char *, ...); extern int _sprintf_cdfFnopsuxX (char *, const char *, ...); extern int _sprintf_cdfFnopuxX (char *, const char *, ...); extern int _sprintf_cdgGnopsuxX (char *, const char *, ...); extern int _sprintf_cdgGnopuxX (char *, const char *, ...); extern int _sprintf_cdnopsuxX (char *, const char *, ...); extern int _sprintf_cdnopuxX (char *, const char *, ...); extern int _sprintf_eE (char *, const char *, ...); extern int _sprintf_eEfF (char *, const char *, ...); extern int _sprintf_eEfFgG (char *, const char *, ...); extern int _sprintf_eEfFgGs (char *, const char *, ...); extern int _sprintf_eEfFs (char *, const char *, ...); extern int _sprintf_eEgG (char *, const char *, ...); extern int _sprintf_eEgGs (char *, const char *, ...); extern int _sprintf_eEs (char *, const char *, ...); extern int _sprintf_fF (char *, const char *, ...); extern int _sprintf_fFgG (char *, const char *, ...); extern int _sprintf_fFgGs (char *, const char *, ...); extern int _sprintf_fFs (char *, const char *, ...); extern int _sprintf_gG (char *, const char *, ...); extern int _sprintf_gGs (char *, const char *, ...); extern int _sprintf_s (char *, const char *, ...); extern int _sprintf (char *, const char *, ...); extern int _dsprintf_cdeEfFgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEfFnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdeEnopsuxX (char *, const char *, ...); extern int _dsprintf_cdeEnopuxX (char *, const char *, ...); extern int _dsprintf_cdfFgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdfFgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdfFnopsuxX (char *, const char *, ...); extern int _dsprintf_cdfFnopuxX (char *, const char *, ...); extern int _dsprintf_cdgGnopsuxX (char *, const char *, ...); extern int _dsprintf_cdgGnopuxX (char *, const char *, ...); extern int _dsprintf_cdnopsuxX (char *, const char *, ...); extern int _dsprintf_cdnopuxX (char *, const char *, ...); extern int _dsprintf_eE (char *, const char *, ...); extern int _dsprintf_eEfF (char *, const char *, ...); extern int _dsprintf_eEfFgG (char *, const char *, ...); extern int _dsprintf_eEfFgGs (char *, const char *, ...); extern int _dsprintf_eEfFs (char *, const char *, ...); extern int _dsprintf_eEgG (char *, const char *, ...); extern int _dsprintf_eEgGs (char *, const char *, ...); extern int _dsprintf_eEs (char *, const char *, ...); extern int _dsprintf_fF (char *, const char *, ...); extern int _dsprintf_fFgG (char *, const char *, ...); extern int _dsprintf_fFgGs (char *, const char *, ...); extern int _dsprintf_fFs (char *, const char *, ...); extern int _dsprintf_gG (char *, const char *, ...); extern int _dsprintf_gGs (char *, const char *, ...); extern int _dsprintf_s (char *, const char *, ...); extern int _dsprintf (char *, const char *, ...);
    extern int printf(const char *, ...);
    extern int _printf_cdeEfFgGnopsuxX (const char *, ...); extern int _printf_cdeEfFgGnopuxX (const char *, ...); extern int _printf_cdeEfFnopsuxX (const char *, ...); extern int _printf_cdeEfFnopuxX (const char *, ...); extern int _printf_cdeEgGnopsuxX (const char *, ...); extern int _printf_cdeEgGnopuxX (const char *, ...); extern int _printf_cdeEnopsuxX (const char *, ...); extern int _printf_cdeEnopuxX (const char *, ...); extern int _printf_cdfFgGnopsuxX (const char *, ...); extern int _printf_cdfFgGnopuxX (const char *, ...); extern int _printf_cdfFnopsuxX (const char *, ...); extern int _printf_cdfFnopuxX (const char *, ...); extern int _printf_cdgGnopsuxX (const char *, ...); extern int _printf_cdgGnopuxX (const char *, ...); extern int _printf_cdnopsuxX (const char *, ...); extern int _printf_cdnopuxX (const char *, ...); extern int _printf_eE (const char *, ...); extern int _printf_eEfF (const char *, ...); extern int _printf_eEfFgG (const char *, ...); extern int _printf_eEfFgGs (const char *, ...); extern int _printf_eEfFs (const char *, ...); extern int _printf_eEgG (const char *, ...); extern int _printf_eEgGs (const char *, ...); extern int _printf_eEs (const char *, ...); extern int _printf_fF (const char *, ...); extern int _printf_fFgG (const char *, ...); extern int _printf_fFgGs (const char *, ...); extern int _printf_fFs (const char *, ...); extern int _printf_gG (const char *, ...); extern int _printf_gGs (const char *, ...); extern int _printf_s (const char *, ...); extern int _printf (const char *, ...); extern int _dprintf_cdeEfFgGnopsuxX (const char *, ...); extern int _dprintf_cdeEfFgGnopuxX (const char *, ...); extern int _dprintf_cdeEfFnopsuxX (const char *, ...); extern int _dprintf_cdeEfFnopuxX (const char *, ...); extern int _dprintf_cdeEgGnopsuxX (const char *, ...); extern int _dprintf_cdeEgGnopuxX (const char *, ...); extern int _dprintf_cdeEnopsuxX (const char *, ...); extern int _dprintf_cdeEnopuxX (const char *, ...); extern int _dprintf_cdfFgGnopsuxX (const char *, ...); extern int _dprintf_cdfFgGnopuxX (const char *, ...); extern int _dprintf_cdfFnopsuxX (const char *, ...); extern int _dprintf_cdfFnopuxX (const char *, ...); extern int _dprintf_cdgGnopsuxX (const char *, ...); extern int _dprintf_cdgGnopuxX (const char *, ...); extern int _dprintf_cdnopsuxX (const char *, ...); extern int _dprintf_cdnopuxX (const char *, ...); extern int _dprintf_eE (const char *, ...); extern int _dprintf_eEfF (const char *, ...); extern int _dprintf_eEfFgG (const char *, ...); extern int _dprintf_eEfFgGs (const char *, ...); extern int _dprintf_eEfFs (const char *, ...); extern int _dprintf_eEgG (const char *, ...); extern int _dprintf_eEgGs (const char *, ...); extern int _dprintf_eEs (const char *, ...); extern int _dprintf_fF (const char *, ...); extern int _dprintf_fFgG (const char *, ...); extern int _dprintf_fFgGs (const char *, ...); extern int _dprintf_fFs (const char *, ...); extern int _dprintf_gG (const char *, ...); extern int _dprintf_gGs (const char *, ...); extern int _dprintf_s (const char *, ...); extern int _dprintf (const char *, ...);
# 41 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/appio.h" 2 3
# 646 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 1 3
# 48 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 3
       
# 58 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 1 3
# 24 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 unsigned quot;
 unsigned rem;
} udiv_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 unsigned long quot;
 unsigned long rem;
} uldiv_t;



extern double atof(const char *);
extern long double _datof(const char *);
extern float strtof(const char *, char **);
extern double strtod(const char *, char **);
extern long double _dstrtod(const char *, char **);
# 60 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdlib.h" 3
extern int atoi(const char *);
extern unsigned xtoi(const char *);
extern long atol(const char *);
extern long strtol(const char *, char **, int);
extern unsigned long strtoul(const char *, char **, int);

extern long long atoll(const char *);
extern long long strtoll(const char *, char **, int);
extern unsigned long long strtoull(const char *, char **, int);

extern int rand(void);
extern void srand(unsigned int);
extern void * calloc(size_t, size_t);
extern div_t div(int numer, int denom);
extern udiv_t udiv(unsigned numer, unsigned denom);
extern ldiv_t ldiv(long numer, long denom);
extern uldiv_t uldiv(unsigned long numer,unsigned long denom);




extern void * malloc(size_t);
extern void free(void *);
extern void * realloc(void *, size_t);

extern void

__attribute__((noreturn))

abort(void);

extern void

__attribute__((noreturn))

exit(int);

extern int atexit(void (*)(void));
extern char * getenv(const char *);
extern char ** environ;


extern int __attribute__((weak)) system(const char *);




extern void qsort(void *, size_t, size_t, int (*)(const void *, const void *));
extern void * bsearch(const void *, void *, size_t, size_t, int(*)(const void *, const void *));
extern int abs(int);
extern long labs(long);

extern char * itoa(char * buf, int val, int base);
extern char * utoa(char * buf, unsigned val, int base);
extern char * ltoa(char * buf, long val, int base);


extern char * ultoa(char * buf, unsigned long val, int base);
# 59 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 2 3
# 83 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/l1cache.h" 3
static __inline__ void * __attribute__((always_inline)) __pic32_alloc_coherent(size_t size)
{
  void *retptr;
  retptr = malloc (size);
  if (retptr == ((void *)0)) {
    return ((void *)0);
  }
  return (malloc (size));
}

static __inline__ void __attribute__((always_inline)) __pic32_free_coherent(void* ptr)
{
  free ((ptr));
}
# 647 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/xc.h" 2 3
# 6 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/p32xxxx.h" 2 3
# 2 "badgemain.c" 2
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 1 3
# 49 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/adc10.h" 1 3
# 45 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/adc10.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 1 3
# 59 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/attribs.h" 1 3
# 48 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/attribs.h" 3
       
# 60 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 2 3
# 82 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 1 3
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_1xx_2xx_legacy.h" 1 3
# 76 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 2 3
# 94 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 3
typedef enum
{
    INT_CT = 0,

    INT_CS0,
    INT_CS1,

    INT_INT0,
    INT_INT1,
    INT_INT2,
    INT_INT3,
    INT_INT4,

    INT_T1,
    INT_T2,
    INT_T3,
    INT_T4,
    INT_T5,



    INT_IC1E,
    INT_IC2E,
    INT_IC3E,
    INT_IC4E,
    INT_IC5E,



    INT_IC1,
    INT_IC2,
    INT_IC3,
    INT_IC4,
    INT_IC5,

    INT_OC1,
    INT_OC2,
    INT_OC3,
    INT_OC4,
    INT_OC5,

    INT_CNA,
    INT_CNB,
    INT_CNC,

    INT_SPI1,
    INT_SPI2A,

    INT_SPI1E,
    INT_SPI2AE,

    INT_SPI1TX,
    INT_SPI2ATX,

    INT_SPI1RX,
    INT_SPI2ARX,

    INT_I2C1,
    INT_I2C2,

    INT_I2C1B,
    INT_I2C2B,

    INT_I2C1S,
    INT_I2C2S,

    INT_I2C1M,
    INT_I2C2M,

    INT_U1A,
    INT_U3A,

    INT_U1AE,
    INT_U3AE,

    INT_U1ARX,
    INT_U3ARX,

    INT_U1ATX,
    INT_U3ATX,

    INT_AD1,

    INT_PMP,
    INT_PMPE,

    INT_CMP1,
    INT_CMP2,
    INT_CMP3,

    INT_FSCM,

    INT_FCE,

    INT_RTCC,

    INT_CTMU,

    INT_DMA0,
    INT_DMA1,
    INT_DMA2,
    INT_DMA3,

    INT_USB,

    INT_NUM
}INT_SOURCE;
# 258 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int_1xx_2xx.h" 3
typedef enum
{
    INT_CORE_TIMER_VECTOR,

    INT_CORE_SOFTWARE_0_VECTOR,
    INT_CORE_SOFTWARE_1_VECTOR,

    INT_EXTERNAL_0_VECTOR,
    INT_EXTERNAL_1_VECTOR,
    INT_EXTERNAL_2_VECTOR,
    INT_EXTERNAL_3_VECTOR,
    INT_EXTERNAL_4_VECTOR,

    INT_TIMER_1_VECTOR,
    INT_TIMER_2_VECTOR,
    INT_TIMER_3_VECTOR,
    INT_TIMER_4_VECTOR,
    INT_TIMER_5_VECTOR,

    INT_INPUT_CAPTURE_1_VECTOR,
    INT_INPUT_CAPTURE_2_VECTOR,
    INT_INPUT_CAPTURE_3_VECTOR,
    INT_INPUT_CAPTURE_4_VECTOR,
    INT_INPUT_CAPTURE_5_VECTOR,

    INT_OUTPUT_COMPARE_1_VECTOR,
    INT_OUTPUT_COMPARE_2_VECTOR,
    INT_OUTPUT_COMPARE_3_VECTOR,
    INT_OUTPUT_COMPARE_4_VECTOR,
    INT_OUTPUT_COMPARE_5_VECTOR,

    INT_SPI_1_VECTOR,
    INT_SPI_2A_VECTOR,

    INT_UART_1A_VECTOR,
    INT_UART_3A_VECTOR,

    INT_I2C_1_VECTOR,
    INT_I2C_2_VECTOR,

    INT_CHANGE_NOTICE_VECTOR,
    INT_ADC_VECTOR,
    INT_PMP_VECTOR,

    INT_COMPARATOR_1_VECTOR,
    INT_COMPARATOR_2_VECTOR,
    INT_COMPARATOR_3_VECTOR,

    INT_FAIL_SAFE_MONITOR_VECTOR,
    INT_RTCC_VECTOR,

    INT_CTMU_VECTOR,

    INT_DMA_0_VECTOR,
    INT_DMA_1_VECTOR,
    INT_DMA_2_VECTOR,
    INT_DMA_3_VECTOR,

    INT_FCE_VECTOR,

    INT_USB_1_VECTOR,

}INT_VECTOR;
# 83 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 2 3
# 96 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 1 3
# 64 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__ ((nomips16)) INTEnableSystemMultiVectoredInt(void);
# 78 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__ ((nomips16)) INTEnableSystemSingleVectoredInt(void);
# 416 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) SetCoreSW0(void);
# 447 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) SetCoreSW1(void);
# 481 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) ClearCoreSW0(void);
# 515 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/int_legacy.h" 3
void __attribute__((nomips16)) ClearCoreSW1(void);
# 97 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 2 3
# 114 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_REGISTOR_SET_SELECT_NONE = 0 ,

    INT_REGISTOR_SET_SELECT_SS0 = (0x00010000)

}INT_SV_SS;
# 133 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_PRIORITY_DISABLED = 0 ,

    INT_PRIORITY_LEVEL_1 = 1 ,

    INT_PRIORITY_LEVEL_2 = 2 ,

    INT_PRIORITY_LEVEL_3 = 3 ,

    INT_PRIORITY_LEVEL_4 = 4 ,

    INT_PRIORITY_LEVEL_5 = 5 ,

    INT_PRIORITY_LEVEL_6 = 6 ,

    INT_PRIORITY_LEVEL_7 = 7
}INT_PRIORITY;
# 163 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_SUB_PRIORITY_LEVEL_0 = 0 ,

    INT_SUB_PRIORITY_LEVEL_1 = 1 ,

    INT_SUB_PRIORITY_LEVEL_2 = 2 ,

    INT_SUB_PRIORITY_LEVEL_3 = 3
}INT_SUB_PRIORITY;
# 184 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_DISABLED = 0 ,

    INT_ENABLED = 1
}INT_EN_DIS;
# 200 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_TPC_DISABLE = 0x00000700 ,

    INT_TPC_GROUP_PRI_LEVEL_1 = 1 ,

    INT_TPC_GROUP_PRI_LEVEL_2 = 2 ,

    INT_TPC_GROUP_PRI_LEVEL_3 = 3 ,

    INT_TPC_GROUP_PRI_LEVEL_4 = 4 ,

    INT_TPC_GROUP_PRI_LEVEL_5 = 5 ,

    INT_TPC_GROUP_PRI_LEVEL_6 = 6 ,

    INT_TPC_GROUP_PRI_LEVEL_7 = 7
}INT_TPC_GROUP;
# 229 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_VS_32 = 32 ,

    INT_VS_64 = 64 ,

    INT_VS_128 = 128 ,

    INT_VS_256 = 256 ,

    INT_VS_512 = 512
}INT_VS;
# 252 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
typedef enum
{

    INT_SYSTEM_CONFIG_MULT_VECTOR,

    INT_SYSTEM_CONFIG_SINGLE_VECTOR
}INT_SYSTEM_CONFIG;
# 296 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int __attribute__((nomips16)) INTDisableInterrupts(void);
# 328 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int __attribute__((nomips16)) INTEnableInterrupts(void);
# 363 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) INTRestoreInterrupts(unsigned int status);
# 413 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__ ((nomips16)) INTConfigureSystem(INT_SYSTEM_CONFIG config);
# 445 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) INTSetEBASE(unsigned int ebase_address);
# 475 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) INTSetVectorSpacing(INT_VS vector_spacing);
# 505 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTSingleVectorRegisterSet(INT_SV_SS reg_set)
{
    INTCONCLR = reg_set;
    INTCONSET = reg_set;
}
# 545 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline unsigned int __attribute__ ((always_inline)) INTGetInterruptVectorNumber(void)
{
    return (unsigned int)(INTSTATbits.VEC);
}
# 578 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline INT_PRIORITY __attribute__ ((always_inline)) INTGetInterruptVectorPriority(void)
{
    return (INT_PRIORITY)(INTSTATbits.SRIPL);
}
# 620 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTGetInterruptVectorNumberAndPriority(unsigned int *number, INT_PRIORITY *priority)
{
    *number = INTSTAT;
    *priority = (INT_PRIORITY)((*number >> 8) & 7);
    *number &= 0x3F;
}
# 654 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTClearFlag(INT_SOURCE source);
# 684 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTSetFlag(INT_SOURCE source);
# 717 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int INTGetFlag(INT_SOURCE source);
# 747 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTEnable(INT_SOURCE source, INT_EN_DIS enable);
# 780 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
unsigned int INTGetEnable(INT_SOURCE source);
# 810 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTSetVectorPriority(INT_VECTOR vector, INT_PRIORITY priority);
# 841 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
INT_PRIORITY INTGetVectorPriority(INT_VECTOR vector);
# 871 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void INTSetVectorSubPriority(INT_VECTOR vector, INT_SUB_PRIORITY subPriority);
# 902 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
INT_SUB_PRIORITY INTGetVectorSubPriority(INT_VECTOR vector);
# 932 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTSetIntProximityTimerReload(unsigned int time)
{
    IPTMR = time;
}
# 965 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline unsigned int __attribute__ ((always_inline)) INTGetIntProximityTimer(void)
{
    return IPTMR;
}
# 996 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
extern inline void __attribute__ ((always_inline)) INTSetTemporalProximityControl(INT_TPC_GROUP level)
{
    INTCONCLR = INT_TPC_DISABLE;

    if(level != INT_TPC_DISABLE)
        INTCONSET = (level << 0x00000008);
}
# 1043 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreSetSoftwareInterrupt0(void);
# 1074 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreSetSoftwareInterrupt1(void);
# 1108 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreClearSoftwareInterrupt0(void);
# 1142 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/int.h" 3
void __attribute__((nomips16)) CoreClearSoftwareInterrupt1(void);
# 46 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/adc10.h" 2 3
# 50 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/bmx.h" 1 3
# 51 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/cmp.h" 1 3
# 52 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/cvref.h" 1 3
# 53 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma.h" 1 3
# 70 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 1 3
# 65 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    typedef enum
    {
        DMA_CHANNEL0,

        DMA_CHANNEL1,

        DMA_CHANNEL2,

        DMA_CHANNEL3,





        DMA_CHANNELS
    }DmaChannel;



    typedef enum
    {
        DMA_CHN_PRI0,
        DMA_CHN_PRI1,
        DMA_CHN_PRI2,
        DMA_CHN_PRI3
    }DmaChannelPri;





    typedef enum
    {
        DMA_OPEN_DEFAULT = 0,
        DMA_OPEN_AUTO = 0x00000010,
        DMA_OPEN_CHAIN_LOW = (0x00000020|0x00000100),
        DMA_OPEN_CHAIN_HI = (0x00000020),
        DMA_OPEN_DET_EN = 0x00000040,
        DMA_OPEN_ENABLE = 0x00000080,
        DMA_OPEN_MATCH = 0x80000000,
    }DmaOpenFlags;


    typedef enum
    {
        DMA_EV_ERR = 0x1,
        DMA_EV_ABORT = 0x2,
        DMA_EV_CELL_DONE = 0x4,
        DMA_EV_BLOCK_DONE = 0x8,
        DMA_EV_DST_HALF = 0x10,
        DMA_EV_DST_FULL = 0x20,
        DMA_EV_SRC_HALF = 0x40,
        DMA_EV_SRC_FULL = 0x80,

        DMA_EV_ALL_EVNTS= (DMA_EV_ERR|DMA_EV_ABORT|DMA_EV_CELL_DONE|DMA_EV_BLOCK_DONE|DMA_EV_DST_HALF|
                                    DMA_EV_DST_FULL|DMA_EV_SRC_HALF|DMA_EV_SRC_FULL)
    }DmaEvFlags;


    typedef enum
    {
        DMA_TXFER_OK,
        DMA_TXFER_ADD_ERR,
        DMA_TXFER_ABORT,
        DMA_TXFER_BC_ERR,
        DMA_TXFER_CC_ERR,
        DMA_TXFER_TMO
    }DmaTxferRes;

    typedef enum
    {
        DMA_WAIT_NOT,
        DMA_WAIT_CELL,
        DMA_WAIT_BLOCK
    }DmaWaitMode;

    typedef enum
    {
        DMA_CHKSUM_CRC,
        DMA_CHKSUM_IP,
    }DmaChksumType;

    typedef enum
    {
        DMA_BITO_MSb,
        DMA_BITO_LSb,
    }DmaBitOrder;

    typedef enum
    {
        DMA_REORDER_NOT,
        DMA_REORDER_ENDIAN,
        DMA_REORDER_SWAP_HALF,
        DMA_REORDER_SWAP_BYTE,
    }DmaReorderMode;
# 199 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnOpen(DmaChannel chn, DmaChannelPri chPri, DmaOpenFlags oFlags);
# 218 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnEnable(DmaChannel chn);
# 237 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnDisable(DmaChannel chn);
# 269 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetTxfer(DmaChannel chn, const void* vSrcAdd, void* vDstAdd, int srcSize, int dstSize, int cellSize);
# 289 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetSrcAdd(DmaChannel chn, const void* vSrcAdd);
# 308 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetDstAdd(DmaChannel chn, void* vDstAdd);
# 328 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetMatchPattern(DmaChannel chn, int pattern);
# 347 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetMatchPattern(DmaChannel chn);
# 381 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnStartTxfer(DmaChannel chn, DmaWaitMode wMode, unsigned long retries);
# 400 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnForceTxfer(DmaChannel chn);
# 419 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnAbortTxfer(DmaChannel chn);
# 452 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetEvEnableFlags(DmaChannel chn, DmaEvFlags eFlags);
# 483 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnClrEvEnableFlags(DmaChannel chn, DmaEvFlags eFlags);
# 513 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnWriteEvEnableFlags(DmaChannel chn, DmaEvFlags eFlags);
# 541 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaEvFlags DmaChnGetEvEnableFlags(DmaChannel chn);
# 572 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnClrEvFlags(DmaChannel chn, DmaEvFlags eFlags);
# 600 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaEvFlags DmaChnGetEvFlags(DmaChannel chn);
# 636 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnMemcpy(void* s1, const void* s2, int n, DmaChannel chn, DmaChannelPri chPri);
# 668 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnStrcpy(char* s1, const char* s2, DmaChannel chn, DmaChannelPri chPri);
# 703 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnStrncpy(char* s1, const char* s2, int n, DmaChannel chn, DmaChannelPri chPri);
# 736 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnMemCrc(void* d, const void* s, int n, DmaChannel chn, DmaChannelPri chPri);
# 769 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaTxferRes DmaChnMemChecksum(void* d, const void* s, int n, DmaChannel chn, DmaChannelPri chPri);
# 796 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmConfigure(DmaChksumType cType, DmaBitOrder bitO, DmaReorderMode rMode)
    {
        DCRCCONCLR=0x00000020|0x01000000|0x30000000;
        DCRCCONSET=(cType<<0x00000005)|(bitO<<0x00000018)|(rMode<<0x0000001C);
    }
# 826 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmTxferReorder(int enable)
    {
        DCRCCONCLR=0x08000000;
        DCRCCONSET=(enable<<0x0000001B);
    }
# 869 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmCrcConfigure(unsigned int polynomial, int pLen, unsigned int seed)
    {
        DCRCCONCLR=0x00001F00;
        DCRCCONSET=(pLen-1)<<0x00000008;
        DCRCDATA=seed;
        DCRCXOR=polynomial;
    }
# 905 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    void DmaSfmAttachChannel(DmaChannel chn, int appendMode);
# 926 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaSfmChecksum(void)
    {
        return DCRCDATA;
    }
# 952 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmSetSeed(unsigned int seed)
    {
        DCRCDATA=seed;
    }
# 964 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    typedef struct
    {
        union
        {
            struct
            {
                unsigned int chn: 3;
                unsigned int rdOp: 1;
            };
            unsigned int w;
        }lastAccess;
        void* lastAddress;
    }DmaStatus;

    typedef enum
    {
        DMA_GFLG_SUSPEND = 0x00001000,
        DMA_GFLG_ON = 0x00008000,

        DMA_GFLG_ALL_FLAGS= DMA_GFLG_SUSPEND|DMA_GFLG_ON
    }DmaGlblFlags;




    typedef enum
    {
        DMA_EV_ABORT_IRQ_EN = 0x00000008,
        DMA_EV_START_IRQ_EN = 0x00000010,


        DMA_EV_MATCH_EN = 0x00000020,



        _DMA_EV_MAX_MASK = 0x00FF0000,
    }DmaEvCtrlFlags;
# 1011 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    typedef enum
    {
        DMA_CTL_AUTO_EN = 0x00000010,
        DMA_CTL_CHAIN_EN = 0x00000020,
        DMA_CTL_DET_EN = 0x00000040,
        DMA_CTL_CHN_EN = 0x00000080,
        DMA_CTL_CHAIN_DIR = 0x00000100,


    }DmaChnCtrlFlags;






    typedef struct
    {
        void* vSrcAdd;
        void* vDstAdd;
        int srcSize;
        int dstSize;
        int cellSize;
    }DmaTxferCtrl;
# 1060 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaEnable(int enable)
    {
        if(enable)
        {
            DMACONSET=0x00008000;
        }
        else
        {
            DMACONCLR=0x00008000;
            while(DMACONbits.ON);
        }
    }
# 1112 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ int __attribute__((always_inline)) DmaSuspend(void)
    {
        int suspSt;
        if(!(suspSt=DMACONbits.SUSPEND))
        {
            DMACONSET=0x00001000;
            while((DMACONbits.DMABUSY));
        }
        return suspSt;
    }
# 1142 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaResume(int susp)
    {
        if(susp)
        {
            DmaSuspend();
        }
        else
        {
            DMACONCLR=0x00001000;
        }
    }
# 1176 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaGetStatus(DmaStatus* pStat);
# 1200 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaSetGlobalFlags(DmaGlblFlags gFlags)
    {
        DMACONSET=gFlags;
    }
# 1227 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaClrGlobalFlags(DmaGlblFlags gFlags)
    {
        DMACONCLR=gFlags;
    }
# 1254 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ void __attribute__((always_inline)) DmaWriteGlobalFlags(DmaGlblFlags gFlags)
    {
        DMACON=gFlags;
    }
# 1278 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
        extern __inline__ DmaGlblFlags __attribute__((always_inline)) DmaGetGlobalFlags(void)
    {
        return (DmaGlblFlags)DMACON;
    }
# 1301 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaGetMaxTxferSize(void)
    {
        return 65536;
    }



    typedef enum
    {
        DMA_CONFIG_DEFAULT = 0,
        DMA_CONFIG_AUTO = 0x00000010,
        DMA_CONFIG_CHAIN_LOW = (0x00000020|0x00000100),
        DMA_CONFIG_CHAIN_HI = (0x00000020),
        DMA_CONFIG_DET_EN = 0x00000040,
        DMA_CONFIG_ENABLE = 0x00000080,
        DMA_CONFIG_MATCH = 0x80000000,
    }DmaConfigFlags;
# 1356 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    void DmaChnConfigure(DmaChannel chn, DmaChannelPri chPri, DmaConfigFlags cFlags);
# 1377 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetSrcPnt(DmaChannel chn);
# 1397 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetDstPnt(DmaChannel chn);
# 1417 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetCellPnt(DmaChannel chn);
# 1453 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetEventControlFlags(DmaChannel chn, DmaEvCtrlFlags dmaEvCtrl);
# 1488 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnClrEventControlFlags(DmaChannel chn, DmaEvCtrlFlags dmaEvCtrl);
# 1524 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnWriteEventControlFlags(DmaChannel chn, DmaEvCtrlFlags dmaEvCtrl);
# 1595 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaEvCtrlFlags DmaChnGetEventControl(DmaChannel chn);
# 1631 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetControlFlags(DmaChannel chn, DmaChnCtrlFlags dmaChnCtrl);
# 1666 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnClrControlFlags(DmaChannel chn, DmaChnCtrlFlags dmaChnCtrl);
# 1700 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnWriteControlFlags(DmaChannel chn, DmaChnCtrlFlags dmaChnCtrl);
# 1767 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     DmaChnCtrlFlags DmaChnGetControlFlags(DmaChannel chn);
# 1788 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     int DmaChnGetEvDetect(DmaChannel chn);
# 1818 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnGetTxfer(DmaChannel chn, DmaTxferCtrl* pTxCtrl, int mapToK0);
# 1840 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmEnable(int enable)
    {
        if(enable)
        {
            DCRCCONSET=0x00000080;
        }
        else
        {
            DCRCCONCLR=0x00000080;
        }
    }
# 1872 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaSfmGetEnable(void)
    {
        return DCRCCONbits.CRCEN!=0;
    }
# 1900 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmAppendEnable(int enable)
    {
        if(enable)
        {
            DCRCCONSET=0x00000040;
        }
        else
        {
            DCRCCONCLR=0x00000040;
        }
    }
# 1932 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaSfmGetAppendMode(void)
    {
        return DCRCCONbits.CRCAPP!=0;
    }
# 1956 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaSfmSetAttach(DmaChannel chn)
    {
        DCRCCONCLR=0x00000007;
        DCRCCONSET=chn;
    }
# 1981 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ DmaChannel __attribute__((always_inline)) DmaSfmGetAttach(void)
    {
        return (DmaChannel)DCRCCONbits.CRCCH;
    }
# 2004 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaCrcSetPLen(int pLen)
    {
        DCRCCONCLR=0x00001F00;
        DCRCCONSET=(pLen)-1;
    }
# 2028 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ int __attribute__((always_inline)) DmaCrcGetPLen(void)
    {
        return DCRCCONbits.PLEN+1;
    }
# 2052 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ void __attribute__((always_inline)) DmaCrcSetShiftFeedback(unsigned int feedback)
    {
        DCRCXOR=feedback;
    }
# 2077 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
    extern __inline__ unsigned int __attribute__((always_inline)) DmaCrcGetShiftFeedback(void)
    {
        return DCRCXOR;
    }
# 2115 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnSetEvFlags(DmaChannel chn, DmaEvFlags eFlags);
# 2145 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
     void DmaChnWriteEvFlags(DmaChannel chn, DmaEvFlags eFlags);
# 2155 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 1 3
# 48 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma.h" 1 3
# 49 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 2 3
# 734 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
typedef enum
{

    DMA_REG_IX_CON,
    DMA_REG_IX_CON_CLR,
    DMA_REG_IX_CON_SET,
    DMA_REG_IX_CON_INV,

    DMA_REG_IX_ECON,
    DMA_REG_IX_ECON_CLR,
    DMA_REG_IX_ECON_SET,
    DMA_REG_IX_ECON_INV,

    DMA_REG_IX_INTR,
    DMA_REG_IX_INTR_CLR,
    DMA_REG_IX_INTR_SET,
    DMA_REG_IX_INTR_INV,

    DMA_REG_IX_SSA,
    DMA_REG_IX_SSA_CLR,
    DMA_REG_IX_SSA_SET,
    DMA_REG_IX_SSA_INV,

    DMA_REG_IX_DSA,
    DMA_REG_IX_DSA_CLR,
    DMA_REG_IX_DSA_SET,
    DMA_REG_IX_DSA_INV,

    DMA_REG_IX_SSIZ,
    DMA_REG_IX_SSIZ_CLR,
    DMA_REG_IX_SSIZ_SET,
    DMA_REG_IX_SSIZ_INV,

    DMA_REG_IX_DSIZ,
    DMA_REG_IX_DSIZ_CLR,
    DMA_REG_IX_DSIZ_SET,
    DMA_REG_IX_DSIZ_INV,

    DMA_REG_IX_SPTR,
    DMA_REG_IX_RESERVED0,
    DMA_REG_IX_RESERVED1,
    DMA_REG_IX_RESERVED2,

    DMA_REG_IX_DPTR,
    DMA_REG_IX_RESERVED3,
    DMA_REG_IX_RESERVED4,
    DMA_REG_IX_RESERVED5,

    DMA_REG_IX_CSIZ,
    DMA_REG_IX_CSIZ_CLR,
    DMA_REG_IX_CSIZ_SET,
    DMA_REG_IX_CSIZ_INV,

    DMA_REG_IX_CPTR,
    DMA_REG_IX_RESERVED6,
    DMA_REG_IX_RESERVED7,
    DMA_REG_IX_RESERVED8,

    DMA_REG_IX_DAT,
    DMA_REG_IX_DAT_CLR,
    DMA_REG_IX_DAT_SET,
    DMA_REG_IX_DAT_INV,
}DmaChnRegIx;
# 817 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
 void DmaChnSetRegister(DmaChannel chn, DmaChnRegIx regIx, unsigned int value);
# 838 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/dma_legacy.h" 3
 unsigned int DmaChnGetRegister(DmaChannel chn, DmaChnRegIx regIx);
# 2156 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma_1xx_2xx.h" 2 3
# 71 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/dma.h" 2 3
# 54 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 1 3
# 50 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/GenericTypeDefs.h" 1 3
# 65 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/GenericTypeDefs.h" 3
typedef enum _BOOL { FALSE = 0, TRUE } BOOL;
typedef enum _BIT { CLEAR = 0, SET } BIT;






typedef signed int INT;
typedef signed char INT8;
typedef signed short int INT16;
typedef signed long int INT32;



__extension__ typedef signed long long INT64;



typedef unsigned int UINT;
typedef unsigned char UINT8;
typedef unsigned short int UINT16;




typedef unsigned long int UINT32;


__extension__ typedef unsigned long long UINT64;


typedef union
{
    UINT8 Val;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
    } bits;
} UINT8_VAL, UINT8_BITS;

typedef union
{
    UINT16 Val;
    UINT8 v[2];
    struct
    {
        UINT8 LB;
        UINT8 HB;
    } byte;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
        __extension__ UINT8 b8:1;
        __extension__ UINT8 b9:1;
        __extension__ UINT8 b10:1;
        __extension__ UINT8 b11:1;
        __extension__ UINT8 b12:1;
        __extension__ UINT8 b13:1;
        __extension__ UINT8 b14:1;
        __extension__ UINT8 b15:1;
    } bits;
} UINT16_VAL, UINT16_BITS;
# 185 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/GenericTypeDefs.h" 3
typedef union
{
    UINT32 Val;
    UINT16 w[2];
    UINT8 v[4];
    struct
    {
        UINT16 LW;
        UINT16 HW;
    } word;
    struct
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
        UINT8 MB;
    } byte;
    struct
    {
        UINT16_VAL low;
        UINT16_VAL high;
    }wordUnion;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
        __extension__ UINT8 b8:1;
        __extension__ UINT8 b9:1;
        __extension__ UINT8 b10:1;
        __extension__ UINT8 b11:1;
        __extension__ UINT8 b12:1;
        __extension__ UINT8 b13:1;
        __extension__ UINT8 b14:1;
        __extension__ UINT8 b15:1;
        __extension__ UINT8 b16:1;
        __extension__ UINT8 b17:1;
        __extension__ UINT8 b18:1;
        __extension__ UINT8 b19:1;
        __extension__ UINT8 b20:1;
        __extension__ UINT8 b21:1;
        __extension__ UINT8 b22:1;
        __extension__ UINT8 b23:1;
        __extension__ UINT8 b24:1;
        __extension__ UINT8 b25:1;
        __extension__ UINT8 b26:1;
        __extension__ UINT8 b27:1;
        __extension__ UINT8 b28:1;
        __extension__ UINT8 b29:1;
        __extension__ UINT8 b30:1;
        __extension__ UINT8 b31:1;
    } bits;
} UINT32_VAL;



typedef union
{
    UINT64 Val;
    UINT32 d[2];
    UINT16 w[4];
    UINT8 v[8];
    struct
    {
        UINT32 LD;
        UINT32 HD;
    } dword;
    struct
    {
        UINT16 LW;
        UINT16 HW;
        UINT16 UW;
        UINT16 MW;
    } word;
    struct
    {
        __extension__ UINT8 b0:1;
        __extension__ UINT8 b1:1;
        __extension__ UINT8 b2:1;
        __extension__ UINT8 b3:1;
        __extension__ UINT8 b4:1;
        __extension__ UINT8 b5:1;
        __extension__ UINT8 b6:1;
        __extension__ UINT8 b7:1;
        __extension__ UINT8 b8:1;
        __extension__ UINT8 b9:1;
        __extension__ UINT8 b10:1;
        __extension__ UINT8 b11:1;
        __extension__ UINT8 b12:1;
        __extension__ UINT8 b13:1;
        __extension__ UINT8 b14:1;
        __extension__ UINT8 b15:1;
        __extension__ UINT8 b16:1;
        __extension__ UINT8 b17:1;
        __extension__ UINT8 b18:1;
        __extension__ UINT8 b19:1;
        __extension__ UINT8 b20:1;
        __extension__ UINT8 b21:1;
        __extension__ UINT8 b22:1;
        __extension__ UINT8 b23:1;
        __extension__ UINT8 b24:1;
        __extension__ UINT8 b25:1;
        __extension__ UINT8 b26:1;
        __extension__ UINT8 b27:1;
        __extension__ UINT8 b28:1;
        __extension__ UINT8 b29:1;
        __extension__ UINT8 b30:1;
        __extension__ UINT8 b31:1;
        __extension__ UINT8 b32:1;
        __extension__ UINT8 b33:1;
        __extension__ UINT8 b34:1;
        __extension__ UINT8 b35:1;
        __extension__ UINT8 b36:1;
        __extension__ UINT8 b37:1;
        __extension__ UINT8 b38:1;
        __extension__ UINT8 b39:1;
        __extension__ UINT8 b40:1;
        __extension__ UINT8 b41:1;
        __extension__ UINT8 b42:1;
        __extension__ UINT8 b43:1;
        __extension__ UINT8 b44:1;
        __extension__ UINT8 b45:1;
        __extension__ UINT8 b46:1;
        __extension__ UINT8 b47:1;
        __extension__ UINT8 b48:1;
        __extension__ UINT8 b49:1;
        __extension__ UINT8 b50:1;
        __extension__ UINT8 b51:1;
        __extension__ UINT8 b52:1;
        __extension__ UINT8 b53:1;
        __extension__ UINT8 b54:1;
        __extension__ UINT8 b55:1;
        __extension__ UINT8 b56:1;
        __extension__ UINT8 b57:1;
        __extension__ UINT8 b58:1;
        __extension__ UINT8 b59:1;
        __extension__ UINT8 b60:1;
        __extension__ UINT8 b61:1;
        __extension__ UINT8 b62:1;
        __extension__ UINT8 b63:1;
    } bits;
} UINT64_VAL;





typedef void VOID;

typedef char CHAR8;
typedef unsigned char UCHAR8;

typedef unsigned char BYTE;
typedef unsigned short int WORD;
typedef unsigned long DWORD;


__extension__
typedef unsigned long long QWORD;

typedef signed char CHAR;
typedef signed short int SHORT;
typedef signed long LONG;


__extension__
typedef signed long long LONGLONG;

typedef union
{
    BYTE Val;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
    } bits;
} BYTE_VAL, BYTE_BITS;

typedef union
{
    WORD Val;
    BYTE v[2];
    struct
    {
        BYTE LB;
        BYTE HB;
    } byte;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
        __extension__ BYTE b8:1;
        __extension__ BYTE b9:1;
        __extension__ BYTE b10:1;
        __extension__ BYTE b11:1;
        __extension__ BYTE b12:1;
        __extension__ BYTE b13:1;
        __extension__ BYTE b14:1;
        __extension__ BYTE b15:1;
    } bits;
} WORD_VAL, WORD_BITS;

typedef union
{
    DWORD Val;
    WORD w[2];
    BYTE v[4];
    struct
    {
        WORD LW;
        WORD HW;
    } word;
    struct
    {
        BYTE LB;
        BYTE HB;
        BYTE UB;
        BYTE MB;
    } byte;
    struct
    {
        WORD_VAL low;
        WORD_VAL high;
    }wordUnion;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
        __extension__ BYTE b8:1;
        __extension__ BYTE b9:1;
        __extension__ BYTE b10:1;
        __extension__ BYTE b11:1;
        __extension__ BYTE b12:1;
        __extension__ BYTE b13:1;
        __extension__ BYTE b14:1;
        __extension__ BYTE b15:1;
        __extension__ BYTE b16:1;
        __extension__ BYTE b17:1;
        __extension__ BYTE b18:1;
        __extension__ BYTE b19:1;
        __extension__ BYTE b20:1;
        __extension__ BYTE b21:1;
        __extension__ BYTE b22:1;
        __extension__ BYTE b23:1;
        __extension__ BYTE b24:1;
        __extension__ BYTE b25:1;
        __extension__ BYTE b26:1;
        __extension__ BYTE b27:1;
        __extension__ BYTE b28:1;
        __extension__ BYTE b29:1;
        __extension__ BYTE b30:1;
        __extension__ BYTE b31:1;
    } bits;
} DWORD_VAL;



typedef union
{
    QWORD Val;
    DWORD d[2];
    WORD w[4];
    BYTE v[8];
    struct
    {
        DWORD LD;
        DWORD HD;
    } dword;
    struct
    {
        WORD LW;
        WORD HW;
        WORD UW;
        WORD MW;
    } word;
    struct
    {
        __extension__ BYTE b0:1;
        __extension__ BYTE b1:1;
        __extension__ BYTE b2:1;
        __extension__ BYTE b3:1;
        __extension__ BYTE b4:1;
        __extension__ BYTE b5:1;
        __extension__ BYTE b6:1;
        __extension__ BYTE b7:1;
        __extension__ BYTE b8:1;
        __extension__ BYTE b9:1;
        __extension__ BYTE b10:1;
        __extension__ BYTE b11:1;
        __extension__ BYTE b12:1;
        __extension__ BYTE b13:1;
        __extension__ BYTE b14:1;
        __extension__ BYTE b15:1;
        __extension__ BYTE b16:1;
        __extension__ BYTE b17:1;
        __extension__ BYTE b18:1;
        __extension__ BYTE b19:1;
        __extension__ BYTE b20:1;
        __extension__ BYTE b21:1;
        __extension__ BYTE b22:1;
        __extension__ BYTE b23:1;
        __extension__ BYTE b24:1;
        __extension__ BYTE b25:1;
        __extension__ BYTE b26:1;
        __extension__ BYTE b27:1;
        __extension__ BYTE b28:1;
        __extension__ BYTE b29:1;
        __extension__ BYTE b30:1;
        __extension__ BYTE b31:1;
        __extension__ BYTE b32:1;
        __extension__ BYTE b33:1;
        __extension__ BYTE b34:1;
        __extension__ BYTE b35:1;
        __extension__ BYTE b36:1;
        __extension__ BYTE b37:1;
        __extension__ BYTE b38:1;
        __extension__ BYTE b39:1;
        __extension__ BYTE b40:1;
        __extension__ BYTE b41:1;
        __extension__ BYTE b42:1;
        __extension__ BYTE b43:1;
        __extension__ BYTE b44:1;
        __extension__ BYTE b45:1;
        __extension__ BYTE b46:1;
        __extension__ BYTE b47:1;
        __extension__ BYTE b48:1;
        __extension__ BYTE b49:1;
        __extension__ BYTE b50:1;
        __extension__ BYTE b51:1;
        __extension__ BYTE b52:1;
        __extension__ BYTE b53:1;
        __extension__ BYTE b54:1;
        __extension__ BYTE b55:1;
        __extension__ BYTE b56:1;
        __extension__ BYTE b57:1;
        __extension__ BYTE b58:1;
        __extension__ BYTE b59:1;
        __extension__ BYTE b60:1;
        __extension__ BYTE b61:1;
        __extension__ BYTE b62:1;
        __extension__ BYTE b63:1;
    } bits;
} QWORD_VAL;
# 51 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 2 3
# 64 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 1 3
# 568 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
    void IdleI2C1( void );



    void IdleI2C2( void );
# 594 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
    unsigned char MasterReadI2C1( void );



    unsigned char MasterReadI2C2( void );
# 620 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
    unsigned int MasterWriteI2C1( unsigned char data );



    unsigned int MasterWriteI2C2( unsigned char data );
# 650 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
    unsigned int MastergetsI2C1( unsigned int length, unsigned char *data,
                                    unsigned int I2cDataWait );



    unsigned int MastergetsI2C2( unsigned int length, unsigned char *data,
                                    unsigned int I2cDataWait );
# 678 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
    unsigned int MasterputsI2C1( unsigned char *data );



    unsigned int MasterputsI2C2( unsigned char *data );
# 704 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
    unsigned char SlaveReadI2C1( void );



    unsigned char SlaveReadI2C2( void );
# 729 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
    void SlaveWriteI2C1( unsigned char data );



    void SlaveWriteI2C2( unsigned char data );
# 756 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
    unsigned int SlavegetsI2C1( unsigned char *data,
                                   unsigned int I2cDataWait );



    unsigned int SlavegetsI2C2( unsigned char *data,
                                   unsigned int I2cDataWait );
# 784 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/i2c_legacy.h" 3
    unsigned int SlaveputsI2C1( unsigned char *data );



    unsigned int SlaveputsI2C2( unsigned char *data );
# 65 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 2 3
# 90 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{


    I2C1,




    I2C2,
# 118 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
    I2C_NUMBER_OF_MODULES

} I2C_MODULE;
# 133 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef union
{


    UINT8 byte;

    struct
    {

        UINT8 rw : 1;


        UINT8 address : 7;
    };

} I2C_7_BIT_ADDRESS;
# 161 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef union
{

    UINT16 both_bytes;

    struct
    {

        BYTE first_byte;


        BYTE second_byte;
    };

    struct
    {

        UINT16 rw : 1;


        UINT16 high_bits : 2;


        UINT16 const_bits : 5;


        UINT16 low_bits : 8;
    };

} I2C_10_BIT_ADDRESS;
# 281 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{

    I2C_SUCCESS = 0,


    I2C_ERROR,


    I2C_MASTER_BUS_COLLISION,



    I2C_RECEIVE_OVERFLOW

} I2C_RESULT;
# 315 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{


    I2C_ENABLE_SLAVE_CLOCK_STRETCHING
                             = 0x00000040 ,



    I2C_ENABLE_SMB_SUPPORT
                             = 0x00000100 ,


    I2C_ENABLE_HIGH_SPEED
                             = 0x00000200 ,


    I2C_STOP_IN_IDLE
                             = 0x00002000

} I2C_CONFIGURATION;
# 353 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{

    I2C_USE_7BIT_ADDRESS
                             = 0x00000000 ,


    I2C_USE_10BIT_ADDRESS
                             = 0x00000400 ,



    I2C_ENABLE_GENERAL_CALL_ADDRESS
                             = 0x00000080 ,



    I2C_USE_RESERVED_ADDRESSES
                             = 0x00000800

} I2C_ADDRESS_MODE;
# 392 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
typedef enum
{


    I2C_TRANSMITTER_FULL
                             = 0x00000001 ,



    I2C_DATA_AVAILABLE
                            = 0x00000002 ,




    I2C_SLAVE_READ
                             = 0x00000004 ,


    I2C_START
                             = 0x00000008 ,


    I2C_STOP
                             = 0x00000010 ,



    I2C_SLAVE_DATA
                             = 0x00000020 ,



    I2C_RECEIVER_OVERFLOW
                             = 0x00000040 ,



    I2C_TRANSMITTER_OVERFLOW
                             = 0x00000080 ,



    I2C_10BIT_ADDRESS
                             = 0x00000100 ,


    I2C_GENERAL_CALL
                             = 0x00000200 ,



    I2C_ARBITRATION_LOSS
                             = 0x00000400 ,


    I2C_TRANSMITTER_BUSY
                             = 0x00004000 ,


    I2C_BYTE_ACKNOWLEDGED
                             = 0x00008000

} I2C_STATUS;
# 728 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CEnable( I2C_MODULE id, BOOL enable );
# 765 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CConfigure ( I2C_MODULE id, I2C_CONFIGURATION flags );
# 809 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
UINT32 I2CSetFrequency ( I2C_MODULE id, UINT32 sourceClock, UINT32 i2cClock );
# 862 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CSetSlaveAddress ( I2C_MODULE id, UINT16 address, UINT16 mask, I2C_ADDRESS_MODE flags );
# 902 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CBusIsIdle( I2C_MODULE id );
# 941 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CStart( I2C_MODULE id );
# 978 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CRepeatStart ( I2C_MODULE id );
# 1012 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CStop ( I2C_MODULE id );
# 1051 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CTransmitterIsReady ( I2C_MODULE id );
# 1093 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CSendByte ( I2C_MODULE id, BYTE data );
# 1136 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CTransmissionHasCompleted ( I2C_MODULE id );
# 1179 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CByteWasAcknowledged ( I2C_MODULE id );
# 1220 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_RESULT I2CReceiverEnable ( I2C_MODULE id, BOOL enable );
# 1258 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CReceivedDataIsAvailable ( I2C_MODULE id );
# 1304 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CReceivedByteIsAnAddress ( I2C_MODULE id );
# 1342 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BYTE I2CGetByte ( I2C_MODULE id );
# 1384 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CAcknowledgeByte ( I2C_MODULE id, BOOL ack );
# 1426 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CAcknowledgeHasCompleted ( I2C_MODULE id );
# 1471 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
BOOL I2CSlaveDataReadRequested ( I2C_MODULE id );
# 1505 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CSlaveClockHold ( I2C_MODULE id );
# 1541 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CSlaveClockRelease ( I2C_MODULE id );
# 1579 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
I2C_STATUS I2CGetStatus ( I2C_MODULE id );
# 1619 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/i2c.h" 3
void I2CClearStatus ( I2C_MODULE id, I2C_STATUS status );
# 55 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/incap.h" 1 3
# 350 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/incap.h" 3
    void ReadCapture1(unsigned int * buffer);



    void ReadCapture2(unsigned int * buffer);



    void ReadCapture3(unsigned int * buffer);



    void ReadCapture4(unsigned int * buffer);



    void ReadCapture5(unsigned int * buffer);
# 56 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3

# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 1 3
# 44 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/kmem.h" 1 3
# 50 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/kmem.h" 3
       
# 71 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/sys/kmem.h" 3
typedef unsigned long _paddr_t;
typedef unsigned long _vaddr_t;
# 45 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 2 3
# 80 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMProgram(void * address, const void * data, unsigned int size, void* pagebuff);
# 98 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMWriteWord(void* address, unsigned int data);
# 117 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMWriteRow(void* address, void* data);
# 135 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMErasePage(void* address);
# 151 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/nvm.h" 3
unsigned int NVMClearError(void);
# 58 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/outcompare.h" 1 3
# 59 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pcache.h" 1 3
# 383 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pcache.h" 3
void __attribute__ ((nomips16)) CheKseg0CacheOff();
# 398 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pcache.h" 3
void __attribute__ ((nomips16)) CheKseg0CacheOn();
# 60 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 1 3
# 57 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
typedef enum {BUF0, BUF1, BUF2, BUF3}BUFFER ;
# 323 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
extern inline void __attribute__((always_inline)) PMPSetAddress(unsigned int addrs)
{
    while((PMMODEbits.BUSY));
    PMADDR = addrs;
}
# 404 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
extern inline unsigned int __attribute__((always_inline)) PMPMasterRead(void)
{
    while((PMMODEbits.BUSY));
    return(PMDIN);
}
# 434 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterReadByteBlock(unsigned int addrs, unsigned int bytes, unsigned char* pDest);
# 460 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterReadWordBlock(unsigned int addrs, unsigned int words, unsigned short* pDest);
# 488 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
extern inline void __attribute__((always_inline)) PMPMasterWrite(unsigned short value)
{
    while((PMMODEbits.BUSY));
    PMDIN = value;
}
# 518 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterWriteByteBlock(unsigned int addrs, unsigned int bytes, unsigned char* source);
# 544 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPMasterWriteWordBlock(unsigned int addrs, unsigned int words, unsigned short* source);
# 565 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
unsigned char PMPSlaveReadBuffer(BUFFER);
# 587 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPSlaveReadBuffers(unsigned char* pDest);
# 612 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPSlaveWriteBuffer(BUFFER, unsigned char value);
# 635 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pmp.h" 3
void PMPSlaveWriteBuffers(unsigned char* source);
# 61 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 1 3
# 46 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/SPI_Port_Mappings.h" 1 3
# 47 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/Ethernet_Port_Mappings.h" 1 3
# 48 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 2 3
# 2026 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
typedef enum {

        IOPORT_A,


        IOPORT_B,


        IOPORT_C,
# 2048 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
    IOPORT_NUM
} IoPortId;
# 2073 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsDigitalIn(IoPortId portId, unsigned int inputs);
# 2097 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsDigitalOut(IoPortId portId, unsigned int outputs);
# 2121 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsAnalogIn(IoPortId portId, unsigned int inputs);
# 2145 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetPinsAnalogOut(IoPortId portId, unsigned int outputs);
# 2166 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTResetPins(IoPortId portId, unsigned int pins);
# 2184 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
unsigned int PORTRead(IoPortId portId);
# 2204 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
unsigned int PORTReadBits(IoPortId portId, unsigned int bits);
# 2222 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTWrite(IoPortId portId, unsigned int bits);
# 2242 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTSetBits(IoPortId portId, unsigned int bits);
# 2262 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTClearBits(IoPortId portId, unsigned int bits);
# 2282 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/ports.h" 3
void PORTToggleBits(IoPortId portId, unsigned int bits);
# 62 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/pps.h" 1 3
# 63 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/power.h" 1 3
# 70 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/power.h" 3
void __attribute__((nomips16)) PowerSaveSleep(void);
# 88 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/power.h" 3
void __attribute__((nomips16)) PowerSaveIdle(void);
# 64 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 1 3
# 45 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/lock.h" 1 3
# 46 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 2 3
# 149 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 3
void __attribute__((noreturn)) SoftReset(void);
# 172 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/reset.h" 3
char isWU(void);
# 65 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 1 3
# 66 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
typedef union
{
    struct
    {
        unsigned char rsvd;
        unsigned char sec;
        unsigned char min;
        unsigned char hour;
    };
    unsigned char b[4];
    unsigned short w[2];
    unsigned long l;
}rtccTime;


typedef union
{
    struct
    {
        unsigned char wday;
        unsigned char mday;
        unsigned char mon;
        unsigned char year;
    };
    unsigned char b[4];
    unsigned short w[2];
    unsigned long l;
}rtccDate;


typedef enum
{
    RTCC_RPT_HALF_SEC,
    RTCC_RPT_SEC,
    RTCC_RPT_TEN_SEC,
    RTCC_RPT_MIN,
    RTCC_RPT_TEN_MIN,
    RTCC_RPT_HOUR,
    RTCC_RPT_DAY,
    RTCC_RPT_WEEK,
    RTCC_RPT_MON,
    RTCC_RPT_YEAR
}rtccRepeat;


typedef enum
{
    RTCC_CLK_ON,
    RTCC_SOSC_NRDY,
    RTCC_CLK_NRDY,
    RTCC_WR_DSBL,
}rtccRes;
# 146 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
rtccRes RtccInit(void);
# 185 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
rtccRes RtccOpen(unsigned long tm, unsigned long dt, int drift);
# 206 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccShutdown(void);
# 241 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetTime(unsigned long tm);
# 262 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetTime(void)
{
    unsigned int t0, t1;
    do
    {
        t0=RTCTIME;
        t1=RTCTIME;
    }while(t0!=t1);
    return t0;
}
# 303 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetDate(unsigned long dt);
# 324 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetDate(void)
{
    unsigned int d0, d1;
    do
    {
        d0=RTCDATE;
        d1=RTCDATE;
    }while(d0!=d1);

    return d0;
}
# 373 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetTimeDate(unsigned long tm, unsigned long dt);
# 396 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccGetTimeDate(rtccTime* pTm, rtccDate* pDt)
{
    rtccTime t0;
    rtccDate d0;
    do
    {
        d0.l=RTCDATE;
        t0.l=RTCTIME;
        pTm->l=RTCTIME;
        pDt->l=RTCDATE;
    }while((d0.l!=pDt->l) || (t0.l!=pTm->l));
}
# 434 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmTime(unsigned long tm);
# 453 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetAlarmTime(void)
{
    return ALRMTIME;
}
# 484 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmDate(unsigned long dt);
# 503 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ unsigned long __attribute__((always_inline)) RtccGetAlarmDate(void)
{
    return ALRMDATE;
}
# 541 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmTimeDate(unsigned long tm, unsigned long dt);
# 562 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccGetAlarmTimeDate(rtccTime* pTm, rtccDate* pDt)
{
    pTm->l=ALRMTIME;
    pDt->l=ALRMDATE;
}
# 587 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
 void RtccAlarmEnable(void);
# 609 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
 void RtccAlarmDisable(void);
# 629 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlarmEnable(void)
{
    int isAlrm0, isAlrm1;
    do
    {
        isAlrm0=RTCALRMbits.ALRMEN;
        isAlrm1=RTCALRMbits.ALRMEN;
    }while(isAlrm0!=isAlrm1);

    return isAlrm0;
}
# 661 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccChimeEnable(void);
# 682 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccChimeDisable(void);
# 702 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetChimeEnable(void)
{
    int ch0, ch1;
    do
    {
        ch0=RTCALRMbits.CHIME;
        ch1=RTCALRMbits.CHIME;
    }while(ch0!=ch1);

    return ch0;

}
# 734 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmRpt(rtccRepeat rpt);
# 753 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ rtccRepeat __attribute__((always_inline)) RtccGetAlarmRpt(void)
{
    rtccRepeat r0, r1;

    do
    {
        r0=(rtccRepeat)(RTCALRM&0x00000F00);
        r1=(rtccRepeat)(RTCALRM&0x00000F00);
    }while(r0!=r1);

    return (rtccRepeat)(r0>>0x00000008);
}
# 791 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetAlarmRptCount(int rptCnt);
# 811 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlarmRptCount(void)
{
    int rpt0, rpt1;
    do
    {
        rpt0=RTCALRMbits.ARPT;
        rpt1=RTCALRMbits.ARPT;
    }while(rpt0!=rpt1);

    return rpt0;
}
# 844 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
int RtccWeekDay(int year, int month, int day);
# 870 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
rtccRes RtccEnable(void);
# 896 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
int RtccDisable(void);
# 915 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetEnable(void)
{
    return (RTCCON&(0x00008000|0x00000040));
}
# 938 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ rtccRes __attribute__((always_inline)) RtccGetClkStat(void)
{

    if( (!(OSCCONbits.SOSCEN)) || (!(OSCCONbits.SOSCRDY)) )
    {
        return RTCC_SOSC_NRDY;
    }
    else if(!(RTCCONbits.RTCCLKON))
    {
        return RTCC_CLK_NRDY;
    }

    return RTCC_CLK_ON;
}
# 984 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccSetCalibration(int drift);
# 1005 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetCalibration(void)
{
    return RTCCONbits.CAL;
}
# 1032 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccWrEnable(int enable)
{
    if(enable)
    {
        do{int intStat, dmaSusp; intStat=INTDisableInterrupts(); dmaSusp=DmaSuspend(); SYSKEY = 0, SYSKEY = 0xAA996655, SYSKEY = 0x556699AA; (RTCCONSET=0x00000008); SYSKEY = 0x33333333; DmaResume(dmaSusp); INTRestoreInterrupts(intStat);}while(0);
    }
    else
    {
        RTCCONCLR=0x00000008;
    }
}
# 1062 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetWrEnable(void)
{
    return RTCCONbits.RTCWREN!=0;
}
# 1084 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetSync(void)
{
    return RTCCONbits.RTCSYNC!=0;
}
# 1107 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetHalfSecond(void)
{
    return RTCCONbits.HALFSEC!=0;
}
# 1129 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlrmSync(void)
{
    return RTCALRMbits.ALRMSYNC!=0;
}
# 1152 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccSelectPulseOutput(int secPulse)
{
    if(secPulse)
    {
        RTCCONSET=0x00000080;
    }
    else
    {
        RTCCONCLR=0x00000080;
    }
}
# 1187 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccAlarmPulseHigh(void);
# 1210 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccAlarmPulseLow(void);
# 1233 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
void RtccAlarmPulseToggle(void);
# 1253 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetAlarmPulse(void)
{
    return RTCALRMbits.PIV!=0;
}
# 1276 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ void __attribute__((always_inline)) RtccOutputEnable(int enable)
{
    if(enable)
    {
        RTCCONSET=0x00000001;
    }
    else
    {
        RTCCONCLR=0x00000001;
    }
}
# 1305 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
extern __inline__ int __attribute__((always_inline)) RtccGetOutputEnable(void)
{
    return RTCCONbits.RTCOE!=0;
}
# 1320 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/rtcc_legacy.h" 1 3
# 1321 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/rtcc.h" 2 3
# 66 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi.h" 1 3
# 74 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 1 3
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
typedef enum
{

    SPI_CHANNEL1 = 1,



    SPI_CHANNEL2 = 2,


    SPI_CHANNELS = 0

                        + 1


                        + 1


}SpiChannel;
# 114 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
typedef enum
{

    SPI_OPEN_MSTEN = 0x00000020,
    SPI_OPEN_SMP_END = 0x00000200,
    SPI_OPEN_MSSEN = 0x10000000,
    SPI_OPEN_MSSEN_HIGH = 0x20000000,


    SPI_OPEN_SLVEN = 0,
    SPI_OPEN_SSEN = 0x00000080,

    SPI_OPEN_MCLKSEL = 0x00800000,


    SPI_OPEN_CKP_HIGH = 0x00000040,
    SPI_OPEN_CKE_REV = 0x00000100,


    SPI_OPEN_MODE8 = 0,
    SPI_OPEN_MODE16 = 0x00000400,
    SPI_OPEN_MODE32 = 0x00000800,


    SPI_OPEN_FRMEN = 0x80000000,
    SPI_OPEN_FSP_IN = 0x40000000,

    SPI_OPEN_FSP_HIGH = 0x20000000,
    SPI_OPEN_FSP_CLK1 = 0x00020000,

    SPI_OPEN_FSP_WIDE = 0x08000000,

    SPI_OPEN_FRM_CNT1 = (0 << 0x00000018),
    SPI_OPEN_FRM_CNT2 = (1 << 0x00000018),
    SPI_OPEN_FRM_CNT4 = (2 << 0x00000018),
    SPI_OPEN_FRM_CNT8 = (3 << 0x00000018),
    SPI_OPEN_FRM_CNT16 = (4 << 0x00000018),
    SPI_OPEN_FRM_CNT32 = (5 << 0x00000018),


    SPI_OPEN_ENHBUF = 0x00010000,

    SPI_OPEN_TBE_NOT_FULL = (3 << 0x00000002),
    SPI_OPEN_TBE_HALF_EMPTY = (2 << 0x00000002),
    SPI_OPEN_TBE_EMPTY = (1 << 0x00000002),
    SPI_OPEN_TBE_SR_EMPTY = (0 << 0x00000002),


    SPI_OPEN_RBF_FULL = (3 << 0x00000000),
    SPI_OPEN_RBF_HALF_FULL = (2 << 0x00000000),
    SPI_OPEN_RBF_NOT_EMPTY = (1 << 0x00000000),
    SPI_OPEN_RBF_EMPTY = (0 << 0x00000000),


    SPI_OPEN_DISSDO = 0x00001000,
    SPI_OPEN_DISSDI = 0x00000010,
    SPI_OPEN_SIDL = 0x00002000,
    SPI_OPEN_ON = 0x00008000,
}SpiOpenFlags;

typedef enum {
    SPI_OPEN2_SPISGNEXT = 0x00008000,
    SPI_OPEN2_FRMERREN = 0x00001000,
    SPI_OPEN2_SPIROVEN = 0x00000800,
    SPI_OPEN2_SPITUREN = 0x00000400,
    SPI_OPEN2_IGNROV = 0x00000200,
    SPI_OPEN2_IGNTUR = 0x00000100,
    SPI_OPEN2_AUDEN = 0x00000080,
    SPI_OPEN2_AUDMONO = 0x00000008,
    SPI_OPEN2_AUDMOD = 0x00000003,
    SPI_OPEN2_AUDMOD_DSP = 0x00000003,
    SPI_OPEN2_AUDMOD0 = 0x00000001,
    SPI_OPEN2_AUDMOD_LJ = 0x00000001,
    SPI_OPEN2_AUDMOD1 = 0x00000002,
    SPI_OPEN2_AUDMOD_RJ = 0x00000002,
    SPI_OPEN2_AUDMOD_I2S = 0x0,
} SpiOpen2Flags;

typedef enum
{
    SPI_STAT_SPIRBF = 0x00000001,
    SPI_STAT_SPITBF = 0x00000002,
    SPI_STAT_SPITBE = 0x00000008,
    SPI_STAT_SPIRBE = 0x00000020,
    SPI_STAT_FRMERR = 0x00001000,
    SPI_STAT_SPIROV = 0x00000040,
    SPI_STAT_SPISRMT = 0x00000080,
    SPI_STAT_SPITUR = 0x00000100,
    SPI_STAT_SPIBUSY = 0x00000800,
}SpiStatusFlags;
# 248 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnOpen(SpiChannel chn, SpiOpenFlags oFlags, unsigned int srcClkDiv);
# 293 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnOpenEx(SpiChannel chn, SpiOpenFlags oFlags, SpiOpen2Flags oFlags2, unsigned int srcClkDiv);
# 314 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnClose(SpiChannel chn);
# 347 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnChangeMode(SpiChannel chn, int isMaster, int isFrmMaster, int waitBusy);
# 369 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnDataRdy(SpiChannel chn);
# 389 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnRxBuffEmpty(SpiChannel chn);
# 410 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnRxBuffFull(SpiChannel chn);
# 429 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnRxBuffCount(SpiChannel chn);
# 457 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
unsigned int SpiChnReadC(SpiChannel chn);
# 484 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
unsigned int SpiChnGetC(SpiChannel chn);
# 519 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnGetS(SpiChannel chn, unsigned int *pBuff, unsigned int nChars);
# 541 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnTxBuffEmpty(SpiChannel chn);
# 561 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnTxBuffFull(SpiChannel chn);
# 580 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnTxBuffCount(SpiChannel chn);
# 602 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnWriteC(SpiChannel chn, unsigned int data);
# 624 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnPutC(SpiChannel chn, unsigned int data);
# 648 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnPutS(SpiChannel chn, unsigned int* pBuff, unsigned int nChars);
# 670 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnGetRov(SpiChannel chn, int clear);
# 692 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnIsBusy(SpiChannel chn);
# 713 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnIsSrEmpty(SpiChannel chn);
# 738 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
int SpiChnGetTur(SpiChannel chn);
# 759 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
SpiStatusFlags SpiChnGetStatus(SpiChannel chn);
# 782 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
volatile void* SpiChnBuffer(SpiChannel chn);







typedef enum
{

    SPI_CONFIG_MSTEN = 0x00000020,
    SPI_CONFIG_SMP_END = 0x00000200,
    SPI_CONFIG_MSSEN = 0x10000000,
    SPI_CONFIG_MSSEN_HIGH = 0x20000000,


    SPI_CONFIG_SLVEN = 0,
    SPI_CONFIG_SSEN = 0x00000080,


    SPI_CONFIG_CKP_HIGH = 0x00000040,
    SPI_CONFIG_CKE_REV = 0x00000100,


    SPI_CONFIG_MODE8 = 0,
    SPI_CONFIG_MODE16 = 0x00000400,
    SPI_CONFIG_MODE32 = 0x00000800,


    SPI_CONFIG_FRMEN = 0x80000000,
    SPI_CONFIG_FSP_IN = 0x40000000,

    SPI_CONFIG_FSP_HIGH = 0x20000000,
    SPI_CONFIG_FSP_CLK1 = 0x00020000,

    SPI_CONFIG_FSP_WIDE = 0x08000000,

    SPI_CONFIG_FRM_CNT1 = (0 << 0x00000018),
    SPI_CONFIG_FRM_CNT2 = (1 << 0x00000018),
    SPI_CONFIG_FRM_CNT4 = (2 << 0x00000018),
    SPI_CONFIG_FRM_CNT8 = (3 << 0x00000018),
    SPI_CONFIG_FRM_CNT16 = (4 << 0x00000018),
    SPI_CONFIG_FRM_CNT32 = (5 << 0x00000018),


    SPI_CONFIG_ENHBUF = 0x00010000,

    SPI_CONFIG_TBE_NOT_FULL = (3 << 0x00000002),
    SPI_CONFIG_TBE_HALF_EMPTY = (2 << 0x00000002),
    SPI_CONFIG_TBE_EMPTY = (1 << 0x00000002),
    SPI_CONFIG_TBE_SR_EMPTY = (0 << 0x00000002),


    SPI_CONFIG_RBF_FULL = (3 << 0x00000000),
    SPI_CONFIG_RBF_HALF_FULL = (2 << 0x00000000),
    SPI_CONFIG_RBF_NOT_EMPTY = (1 << 0x00000000),
    SPI_CONFIG_RBF_EMPTY = (0 << 0x00000000),


    SPI_CONFIG_DISSDO = 0x00001000,
    SPI_CONFIG_DISSDI = 0x00000010,
    SPI_CONFIG_SIDL = 0x00002000,
    SPI_CONFIG_ON = 0x00008000,
} SpiConfigFlags;

typedef enum {
    SPI_CONFIG2_SPISGNEXT = 0x00008000,
    SPI_CONFIG2_FRMERREN = 0x00001000,
    SPI_CONFIG2_SPIROVEN = 0x00000800,
    SPI_CONFIG2_SPITUREN = 0x00000400,
    SPI_CONFIG2_IGNROV = 0x00000200,
    SPI_CONFIG2_IGNTUR = 0x00000100,
    SPI_CONFIG2_AUDEN = 0x00000080,
    SPI_CONFIG2_AUDMONO = 0x00000008,
    SPI_CONFIG2_AUDMOD = 0x00000003,
    SPI_CONFIG2_AUDMOD_DSP =
                          0x00000003,
    SPI_CONFIG2_AUDMOD0 = 0x00000001,
    SPI_CONFIG2_AUDMOD_LJ = 0x00000001,
    SPI_CONFIG2_AUDMOD1 = 0x00000002,
    SPI_CONFIG2_AUDMOD_RJ = 0x00000002,
    SPI_CONFIG2_AUDMOD_I2S = 0x0,
} SpiConfig2Flags;
# 898 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnConfigure(SpiChannel chn, SpiConfigFlags config);
# 932 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnConfigureEx(SpiChannel chn, SpiConfigFlags config, SpiConfig2Flags config2);
# 954 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnEnable(SpiChannel chn, int enable);
# 987 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
unsigned int SpiChnSetBitRate(SpiChannel chn, unsigned int srcClk, unsigned int spiClk);
# 1009 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
void SpiChnSetBrg(SpiChannel chn, unsigned int brg);
# 1028 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
extern __inline__ unsigned int __attribute__((always_inline)) SpiBrgVal(unsigned int srcClk, unsigned int spiClk)
{
    return (srcClk / (2 * spiClk)) - 1;
}
# 1041 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 1 3
# 71 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef enum
{

    SPI_CON_MSTEN = 0x00000020,
    SPI_CON_SMP = 0x00000200,


    SPI_CON_SLVEN = 0,
    SPI_CON_SSEN = 0x00000080,


    SPI_CON_CKP = 0x00000040,
    SPI_CON_CKE = 0x00000100,


    SPI_CON_MODE8 = 0,
    SPI_CON_MODE16 = 0x00000400,
    SPI_CON_MODE32 = 0x00000800,


    SPI_CON_FRMEN = 0x80000000,
    SPI_CON_FRMSYNC = 0x40000000,

    SPI_CON_FRMPOL = 0x20000000,
    SPI_CON_SPIFE = 0x00020000,



    SPI_CON_DISSDO = 0x00001000,
    SPI_CON_SIDL = 0x00002000,
    SPI_CON_ON = 0x00008000,
}SpiCtrlFlags;
# 614 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef union
{
    struct
    {
        unsigned PPRE: 2;
        unsigned SPRE: 3;
        unsigned MSTEN: 1;
        unsigned CKP: 1;
        unsigned SSEN: 1;
        unsigned CKE: 1;
        unsigned SMP: 1;
        unsigned MODE16: 1;
        unsigned MODE32: 1;
        unsigned DISSDO: 1;
        unsigned: 17;
        unsigned FRMSYNC: 1;
        unsigned FRMEN: 1;
    };
    unsigned int w;
}SpiOpenConfig1;
# 688 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef union
{
    struct
    {
        unsigned: 6;
        unsigned SPIROV: 1;
        unsigned: 6;
        unsigned SIDL: 1;
        unsigned: 1;
        unsigned ON: 1;
        unsigned: 1;
        unsigned SPIFE: 1;
        unsigned: 11;
        unsigned FRMPOL: 1;
    };
    unsigned int w;
}SpiOpenConfig2;
# 731 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
typedef union
{
    struct
    {
        unsigned ipl: 3;
        unsigned ispl: 2;
        unsigned fie: 1;
        unsigned txie: 1;
        unsigned rxie: 1;
    };
    unsigned int w;
}SpiConfigInt;
# 839 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
    void OpenSPI1(unsigned int config1, unsigned int config2);
# 1091 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
    unsigned int getcSPI1(void);
# 1146 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
    unsigned int getsSPI1(unsigned int length, unsigned int *rdptr, unsigned int spi_data_wait);
# 1170 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
    void putsSPI1(unsigned int length, unsigned int *wrptr);
# 1233 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
    void OpenSPI2(unsigned int config1, unsigned int config2 );
# 1478 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
    unsigned int getcSPI2(void);
# 1531 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
    unsigned int getsSPI2(unsigned int length, unsigned int *rdptr, unsigned int spi_data_wait);
# 1555 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/spi_legacy.h" 3
    void putsSPI2(unsigned int length, unsigned int *wrptr);
# 1042 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi_1xx_2xx.h" 2 3
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/spi.h" 2 3
# 67 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 1 3
# 58 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/osc.h" 1 3
# 77 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/osc.h" 3
void OSCConfig(unsigned long int source, unsigned long int mult, unsigned long int post, unsigned long int div);
# 179 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/osc.h" 3
    typedef enum
    {
            OSC_REFOCON_RLSPEN =(1 << 0x0000000B ) ,
            OSC_REFOCON_OE =(1 << 0x0000000C ),
            OSC_REFOCON_SIDLEN =(1 << 0x0000000D ),
            OSC_REFOCON_ON =(1 << 0x0000000F )
    } OSCREFConfigFlags;

    void OSCREFConfig(unsigned long int source, OSCREFConfigFlags config, unsigned long int div);
# 211 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/osc.h" 3
extern inline void __attribute__((always_inline)) OSCSetPBDIV(unsigned int oscPbDiv)
{
    unsigned int dma_status;
    unsigned int int_status;
    __OSCCONbits_t oscBits;

    do{int_status=INTDisableInterrupts(); dma_status=DmaSuspend(); SYSKEY = 0, SYSKEY = 0xAA996655, SYSKEY = 0x556699AA;}while(0);

    oscBits.w=OSCCON;
    oscBits.PBDIV=0;
    oscBits.w|=oscPbDiv;
    OSCCON=oscBits.w;
    oscBits.w=OSCCON;

    do{SYSKEY = 0x33333333; DmaResume(dma_status); INTRestoreInterrupts(int_status);}while(0);
}
# 59 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 2 3
# 121 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfigPB(unsigned int sys_clock)
{
    unsigned int pb_div;
    unsigned int pb_clock;

    pb_clock = sys_clock;

    if(sys_clock > 80000000)
    {
        pb_div=(1 << 0x00000013);
        pb_clock >>= 1;
    }
    else
    {
        pb_div=(0 << 0x00000013);
    }

    OSCSetPBDIV(pb_div);

    return pb_clock;
}
# 172 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline void __attribute__((always_inline)) SYSTEMConfigWaitStates(unsigned int sys_clock)
{
# 193 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
}
# 223 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfigWaitStatesAndPB(unsigned int sys_clock)
{



    unsigned int pb_clock;
    unsigned int int_status;

    pb_clock = SYSTEMConfigPB(sys_clock);
# 251 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
    return pb_clock;
}
# 282 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfigPerformance(unsigned int sys_clock)
{

    unsigned int pb_clk;



    unsigned int int_status;

    pb_clk = SYSTEMConfigWaitStatesAndPB(sys_clock);

    int_status=INTDisableInterrupts();

    (BMXCONCLR = 0x00000040);
# 304 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
    INTRestoreInterrupts(int_status);

    return pb_clk;

}
# 346 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
extern inline unsigned int __attribute__((always_inline)) SYSTEMConfig(unsigned int sys_clock, unsigned int flags)
{
    unsigned int pb_clk;
    unsigned int int_status;




    int_status=INTDisableInterrupts();

    (BMXCONCLR = 0x00000040);

    if(flags & 0x00000001)
    {
        SYSTEMConfigWaitStates(sys_clock);
    }

    if(flags & 0x00000002)
    {
        SYSTEMConfigPB(sys_clock);
    }
# 379 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/system.h" 3
    pb_clk = sys_clock;
    pb_clk >>= OSCCONbits.PBDIV;

    INTRestoreInterrupts(int_status);

    return pb_clk;

}
# 68 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 1 3
# 71 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 3
void __attribute__((nomips16)) OpenCoreTimer(unsigned int period);
# 89 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 3
 void __attribute__((nomips16)) UpdateCoreTimer(unsigned int period);
# 201 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 3
unsigned int __attribute__((nomips16)) ReadCoreTimer(void);
# 218 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/timer.h" 3
void __attribute__((nomips16)) WriteCoreTimer(unsigned int timer);
# 69 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 1 3
# 59 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/uart_legacy.h" 1 3
# 515 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/uart_legacy.h" 3
void putsUART1(const char* buffer);



void putsUART2(const char* buffer);
# 672 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/legacy/uart_legacy.h" 3
unsigned int getsUART1(unsigned int length, char* buffer, unsigned int uart_data_wait);



unsigned int getsUART2(unsigned int length, char* buffer, unsigned int uart_data_wait);
# 60 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 2 3
# 89 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef struct
{
    volatile UINT reg;
    volatile UINT clr;
    volatile UINT set;
    volatile UINT inv;
}REG_SET;

typedef struct
{
    volatile REG_SET mode;
    volatile REG_SET sta;
    volatile REG_SET tx;
    volatile REG_SET rx;
    volatile REG_SET brg;
}UART_REGS;

extern UART_REGS * const uartReg[];
# 119 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{


    UART1 = 0,



    UART3A,
# 146 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
    UART_NUMBER_OF_MODULES

} UART_MODULE;
# 170 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_DISABLE = 0x00 ,


    UART_ENABLE = 0x80 ,




    UART_PERIPHERAL = 0x01 ,


    UART_RX = 0x02 ,


    UART_TX = 0x04


} UART_ENABLE_MODE;
# 252 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_ENABLE_HIGH_SPEED = 0x00000008 ,


    UART_INVERT_RECEIVE_POLARITY = 0x00000010 ,


    UART_ENABLE_LOOPBACK = 0x00000040 ,


    UART_ENABLE_WAKE_ON_START = 0x00000080 ,



    UART_ENABLE_PINS_BIT_CLOCK = 0x00000300 ,



    UART_ENABLE_PINS_CTS_RTS = 0x00000200 ,



    UART_ENABLE_PINS_RTS = 0x00000100 ,



    UART_ENABLE_PINS_TX_RX_ONLY = 0x00000000 ,




    UART_RTS_WHEN_RX_NOT_FULL = 0x00000000 ,




    UART_RTS_WHEN_TX_NOT_EMPTY = 0x00000800 ,


    UART_ENABLE_IRDA = 0x00001000 ,



    UART_ENABLE_STOP_ON_IDLE = 0x00002000 ,


    UART_INVERT_TRANSMIT_POLARITY = 0x20000000 ,





    UART_SUPPORT_IEEE_485 = 0x00000900

} UART_CONFIGURATION;
# 331 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_INTERRUPT_ON_TX_BUFFER_EMPTY = 0x8000 ,


    UART_INTERRUPT_ON_TX_DONE = 0x4000 ,



    UART_INTERRUPT_ON_TX_NOT_FULL = 0x0000 ,



    UART_INTERRUPT_ON_RX_FULL = 0x00C0 ,



    UART_INTERRUPT_ON_RX_3_QUARTER_FULL = 0x0080 ,



    UART_INTERRUPT_ON_RX_HALF_FULL = 0x0040 ,



    UART_INTERRUPT_ON_RX_NOT_EMPTY = 0x0000

} UART_FIFO_MODE;
# 381 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_DATA_SIZE_8_BITS = 0x0000 ,


    UART_DATA_SIZE_9_BITS = 0x0006 ,


    UART_PARITY_ODD = 0x0004 ,


    UART_PARITY_EVEN = 0x0002 ,


    UART_PARITY_NONE = 0x0000 ,


    UART_STOP_BITS_2 = 0x0001 ,


    UART_STOP_BITS_1 = 0x0000

} UART_LINE_CONTROL_MODE;
# 422 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef enum
{

    UART_TRANSMITTER_NOT_FULL = 0x00000200 ,


    UART_TRANSMITTER_EMPTY = 0x00000100 ,


    UART_RECEIVER_IDLE = 0x00000010 ,


    UART_PARITY_ERROR = 0x00000008 ,




    UART_FRAMING_ERROR = 0x00000004 ,


    UART_OVERRUN_ERROR = 0x00000002 ,


    UART_DATA_READY = 0x00000001

} UART_LINE_STATUS;
# 465 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
typedef union
{

    struct
    {
        UINT16 data8bit : 8;
    };


    struct
    {
        UINT16 data9bit : 9;
    };

    UINT16 __data;
} UART_DATA;
# 522 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTEnable( UART_MODULE id, UART_ENABLE_MODE mode );
# 559 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTConfigure ( UART_MODULE id, UART_CONFIGURATION flags );
# 597 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTSetFifoMode ( UART_MODULE id, UART_FIFO_MODE mode );
# 644 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
UINT32 UARTSetDataRate ( UART_MODULE id, UINT32 sourceClock, UINT32 dataRate );
# 684 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
UINT32 UARTGetDataRate( UART_MODULE id, UINT32 sourceClock );
# 721 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTSetLineControl ( UART_MODULE id, UART_LINE_CONTROL_MODE mode );
# 766 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline UART_LINE_STATUS __attribute__((always_inline)) UARTGetLineStatus ( UART_MODULE id )
{
    return (UART_LINE_STATUS)(uartReg[id]->sta.reg & ((UART_TRANSMITTER_NOT_FULL | UART_TRANSMITTER_EMPTY | UART_RECEIVER_IDLE | UART_PARITY_ERROR | UART_FRAMING_ERROR | UART_OVERRUN_ERROR | UART_DATA_READY)));
}
# 809 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__ ((always_inline)) UARTTransmitterIsReady ( UART_MODULE id )
{
    return (BOOL)(!(uartReg[id]->sta.reg & 0x00000200));
}
# 856 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTSendDataByte ( UART_MODULE id, BYTE data )
{
    uartReg[id]->tx.reg = data;
}
# 901 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTSendData( UART_MODULE id, UART_DATA data )
{
    uartReg[id]->tx.reg = data.__data;
}
# 941 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__((always_inline)) UARTTransmissionHasCompleted ( UART_MODULE id )
{
    return (BOOL)(0x00000100 == (uartReg[id]->sta.reg & 0x00000100));
}
# 984 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__((always_inline)) UARTReceivedDataIsAvailable ( UART_MODULE id )
{
    return (BOOL)(0x00000001 == (uartReg[id]->sta.reg & 0x00000001));
}
# 1025 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BYTE __attribute__((always_inline)) UARTGetDataByte ( UART_MODULE id )
{
    return (BYTE)uartReg[id]->rx.reg;
}
# 1066 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline UART_DATA __attribute__((always_inline)) UARTGetData ( UART_MODULE id )
{
    UART_DATA data;

    data.__data = uartReg[id]->rx.reg;

    return data;
}
# 1115 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTSetAddress ( UART_MODULE id, BYTE address, BOOL watch );
# 1164 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
void UARTWatchForAddress ( UART_MODULE id, BOOL watch );
# 1201 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTSendBreak ( UART_MODULE id )
{
    uartReg[id]->sta.set = 0x00000800;
}
# 1250 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline void __attribute__((always_inline)) UARTStartAutoDataRateDetect ( UART_MODULE id )
{
   uartReg[id]->mode.set = 0x00000020;
}
# 1295 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/uart.h" 3
extern inline BOOL __attribute__((always_inline)) UARTDataRateDetected ( UART_MODULE id )
{
    return (BOOL)(!(uartReg[id]->mode.reg & 0x00000020));
}
# 70 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/wdt.h" 1 3
# 71 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/eth.h" 1 3
# 72 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 1 3
# 88 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
# 98 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
    CAN_NUMBER_OF_MODULES

}CAN_MODULE;
# 115 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_CHANNEL0,
    CAN_CHANNEL1,
    CAN_CHANNEL2,
    CAN_CHANNEL3,
    CAN_CHANNEL4,
    CAN_CHANNEL5,
    CAN_CHANNEL6,
    CAN_CHANNEL7,
    CAN_CHANNEL8,
    CAN_CHANNEL9,
    CAN_CHANNEL10,
    CAN_CHANNEL11,
    CAN_CHANNEL12,
    CAN_CHANNEL13,
    CAN_CHANNEL14,
    CAN_CHANNEL15,
    CAN_CHANNEL16,
    CAN_CHANNEL17,
    CAN_CHANNEL18,
    CAN_CHANNEL19,
    CAN_CHANNEL20,
    CAN_CHANNEL21,
    CAN_CHANNEL22,
    CAN_CHANNEL23,
    CAN_CHANNEL24,
    CAN_CHANNEL25,
    CAN_CHANNEL26,
    CAN_CHANNEL27,
    CAN_CHANNEL28,
    CAN_CHANNEL29,
    CAN_CHANNEL30,
    CAN_CHANNEL31,
    CAN_ALL_CHANNELS


}CAN_CHANNEL;
# 167 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{


    CAN_NORMAL_OPERATION,



    CAN_DISABLE,




    CAN_LOOPBACK,




    CAN_LISTEN_ONLY,



    CAN_CONFIGURATION,



    CAN_LISTEN_ALL_MESSAGES = 7

}CAN_OP_MODE;
# 217 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_RX_CHANNEL_NOT_EMPTY = 0x1,
    CAN_RX_CHANNEL_HALF_FULL = 0x2,
    CAN_RX_CHANNEL_FULL = 0x4,
    CAN_RX_CHANNEL_OVERFLOW = 0x8,
    CAN_RX_CHANNEL_ANY_EVENT = 0xF,
    CAN_TX_CHANNEL_EMPTY = 0x100,
    CAN_TX_CHANNEL_HALF_EMPTY = 0x200,
    CAN_TX_CHANNEL_NOT_FULL = 0x400,
    CAN_TX_CHANNEL_ANY_EVENT = 0x700

}CAN_CHANNEL_EVENT;
# 242 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_BIT_1TQ,
    CAN_BIT_2TQ,
    CAN_BIT_3TQ,
    CAN_BIT_4TQ,
    CAN_BIT_5TQ,
    CAN_BIT_6TQ,
    CAN_BIT_7TQ,
    CAN_BIT_8TQ

}CAN_BIT_TQ;
# 270 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{


    CAN_BIT_TQ phaseSeg2Tq;



    CAN_BIT_TQ phaseSeg1Tq;



    CAN_BIT_TQ propagationSegTq;





    BOOL phaseSeg2TimeSelect;





    BOOL sample3Time;



    CAN_BIT_TQ syncJumpWidth;

}CAN_BIT_CONFIG;
# 313 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_CHANNEL0_EVENT,
    CAN_CHANNEL1_EVENT,
    CAN_CHANNEL2_EVENT,
    CAN_CHANNEL3_EVENT,
    CAN_CHANNEL4_EVENT,
    CAN_CHANNEL5_EVENT,
    CAN_CHANNEL6_EVENT,
    CAN_CHANNEL7_EVENT,
    CAN_CHANNEL8_EVENT,
    CAN_CHANNEL9_EVENT,
    CAN_CHANNEL10_EVENT,
    CAN_CHANNEL11_EVENT,
    CAN_CHANNEL12_EVENT,
    CAN_CHANNEL13_EVENT,
    CAN_CHANNEL14_EVENT,
    CAN_CHANNEL15_EVENT,
    CAN_CHANNEL16_EVENT,
    CAN_CHANNEL17_EVENT,
    CAN_CHANNEL18_EVENT,
    CAN_CHANNEL19_EVENT,
    CAN_CHANNEL20_EVENT,
    CAN_CHANNEL21_EVENT,
    CAN_CHANNEL22_EVENT,
    CAN_CHANNEL23_EVENT,
    CAN_CHANNEL24_EVENT,
    CAN_CHANNEL25_EVENT,
    CAN_CHANNEL26_EVENT,
    CAN_CHANNEL27_EVENT,
    CAN_CHANNEL28_EVENT,
    CAN_CHANNEL29_EVENT,
    CAN_CHANNEL30_EVENT,
    CAN_CHANNEL31_EVENT,
    CAN_NO_EVENT = 0x40,
    CAN_ERROR_EVENT,
    CAN_WAKEUP_EVENT,
    CAN_RX_CHANNEL_OVERFLOW_EVENT,
    CAN_ADDRESS_ERROR_EVENT,
    CAN_BUS_BANDWIDTH_ERROR,
    CAN_TIMESTAMP_TIMER_EVENT,
    CAN_MODE_CHANGE_EVENT,
    CAN_INVALID_MESSAGE_RECEIVED_EVENT

}CAN_EVENT_CODE;
# 369 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_FILTER0,
    CAN_FILTER1,
    CAN_FILTER2,
    CAN_FILTER3,
    CAN_FILTER4,
    CAN_FILTER5,
    CAN_FILTER6,
    CAN_FILTER7,
    CAN_FILTER8,
    CAN_FILTER9,
    CAN_FILTER10,
    CAN_FILTER11,
    CAN_FILTER12,
    CAN_FILTER13,
    CAN_FILTER14,
    CAN_FILTER15,
    CAN_FILTER16,
    CAN_FILTER17,
    CAN_FILTER18,
    CAN_FILTER19,
    CAN_FILTER20,
    CAN_FILTER21,
    CAN_FILTER22,
    CAN_FILTER23,
    CAN_FILTER24,
    CAN_FILTER25,
    CAN_FILTER26,
    CAN_FILTER27,
    CAN_FILTER28,
    CAN_FILTER29,
    CAN_FILTER30,
    CAN_FILTER31,




    CAN_NUMBER_OF_FILTERS


}CAN_FILTER;
# 422 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_FILTER_MASK0,
    CAN_FILTER_MASK1,
    CAN_FILTER_MASK2,
    CAN_FILTER_MASK3,




    CAN_NUMBER_OF_FILTER_MASKS

}CAN_FILTER_MASK;
# 448 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_EID,
    CAN_SID

}CAN_ID_TYPE;
# 470 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_TX_RTR_ENABLED,
    CAN_TX_RTR_DISABLED

}CAN_TX_RTR;
# 491 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_RX_DATA_ONLY,
    CAN_RX_FULL_RECEIVE

}CAN_RX_DATA_MODE;
# 514 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_FILTER_MASK_IDE_TYPE,
    CAN_FILTER_MASK_ANY_TYPE

}CAN_FILTER_MASK_TYPE;
# 535 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_LOWEST_PRIORITY,
    CAN_LOW_MEDIUM_PRIORITY,
    CAN_HIGH_MEDIUM_PRIORITY,
    CAN_HIGHEST_PRIORITY

}CAN_TXCHANNEL_PRIORITY;
# 556 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_DNET_FILTER_DISABLE,
    CAN_DNET_FILTER_SIZE_1_BIT,
    CAN_DNET_FILTER_SIZE_2_BIT,
    CAN_DNET_FILTER_SIZE_3_BIT,
    CAN_DNET_FILTER_SIZE_4_BIT,
    CAN_DNET_FILTER_SIZE_5_BIT,
    CAN_DNET_FILTER_SIZE_6_BIT,
    CAN_DNET_FILTER_SIZE_7_BIT,
    CAN_DNET_FILTER_SIZE_8_BIT,
    CAN_DNET_FILTER_SIZE_9_BIT,
    CAN_DNET_FILTER_SIZE_10_BIT,
    CAN_DNET_FILTER_SIZE_11_BIT,
    CAN_DNET_FILTER_SIZE_12_BIT,
    CAN_DNET_FILTER_SIZE_13_BIT,
    CAN_DNET_FILTER_SIZE_14_BIT,
    CAN_DNET_FILTER_SIZE_15_BIT,
    CAN_DNET_FILTER_SIZE_16_BIT,
    CAN_DNET_FILTER_SIZE_17_BIT,
    CAN_DNET_FILTER_SIZE_18_BIT,

}CAN_DNET_FILTER_SIZE;
# 596 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{


    CAN_TX_EVENT = 0x1,



    CAN_RX_EVENT = 0x2,




    CAN_TIMESTAMP_TIMER_OVERFLOW_EVENT = 0x4,




    CAN_OPERATION_MODE_CHANGE_EVENT = 0x8,



    CAN_RX_OVERFLOW_EVENT = 0x800,




    CAN_SYSTEM_ERROR_EVENT = 0x1000,



    CAN_BUS_ERROR_EVENT = 0x2000,




    CAN_BUS_ACTIVITY_WAKEUP_EVENT = 0x4000,



    CAN_INVALID_RX_MESSAGE_EVENT = 0x8000

}CAN_MODULE_EVENT;
# 655 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{

    CAN_TX_RX_WARNING_STATE = 0x10000,


    CAN_RX_WARNING_STATE = 0x20000,


    CAN_TX_WARNING_STATE = 0x40000,


    CAN_RX_BUS_PASSIVE_STATE = 0x80000,


    CAN_TX_BUS_PASSIVE_STATE = 0x100000,


    CAN_TX_BUS_OFF_STATE = 0x200000

}CAN_ERROR_STATE;
# 692 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{


    CAN_STOP_IN_IDLE = 0x2000,



    CAN_RX_TIMESTAMP = 0x100000,



    CAN_WAKEUP_BUS_FILTER = 0x400000

}CAN_MODULE_FEATURES;
# 722 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{
    CAN_CHANNEL0_MASK = 0x00000001,
    CAN_CHANNEL1_MASK = 0x00000002,
    CAN_CHANNEL2_MASK = 0x00000004,
    CAN_CHANNEL3_MASK = 0x00000008,
    CAN_CHANNEL4_MASK = 0x00000010,
    CAN_CHANNEL5_MASK = 0x00000020,
    CAN_CHANNEL6_MASK = 0x00000040,
    CAN_CHANNEL7_MASK = 0x00000080,
    CAN_CHANNEL8_MASK = 0x00000100,
    CAN_CHANNEL9_MASK = 0x00000200,
    CAN_CHANNEL10_MASK = 0x00000400,
    CAN_CHANNEL11_MASK = 0x00000800,
    CAN_CHANNEL12_MASK = 0x00001000,
    CAN_CHANNEL13_MASK = 0x00002000,
    CAN_CHANNEL14_MASK = 0x00004000,
    CAN_CHANNEL15_MASK = 0x00008000,
    CAN_CHANNEL16_MASK = 0x00010000,
    CAN_CHANNEL17_MASK = 0x00020000,
    CAN_CHANNEL18_MASK = 0x00040000,
    CAN_CHANNEL19_MASK = 0x00080000,
    CAN_CHANNEL20_MASK = 0x00100000,
    CAN_CHANNEL21_MASK = 0x00200000,
    CAN_CHANNEL22_MASK = 0x00400000,
    CAN_CHANNEL23_MASK = 0x00800000,
    CAN_CHANNEL24_MASK = 0x01000000,
    CAN_CHANNEL25_MASK = 0x02000000,
    CAN_CHANNEL26_MASK = 0x04000000,
    CAN_CHANNEL27_MASK = 0x08000000,
    CAN_CHANNEL28_MASK = 0x10000000,
    CAN_CHANNEL29_MASK = 0x20000000,
    CAN_CHANNEL30_MASK = 0x40000000,
    CAN_CHANNEL31_MASK = 0x80000000,
    CAN_ANYCHANNEL_MASK = 0xFFFFFFFF

}CAN_CHANNEL_MASK;
# 773 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef enum
{

    CAN_TX_CHANNEL_TRANSMITTING = 0x8,


    CAN_TX_CHANNEL_ERROR = 0x10,


    CAN_TX_CHANNEL_ARBITRATION_LOST = 0x20

}CAN_TX_CHANNEL_CONDITION;
# 797 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{


    unsigned SID:11;
    unsigned :21;
}CAN_TX_MSG_SID;
# 817 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{



    unsigned DLC:4;


    unsigned RB0:1;
    unsigned :3;


    unsigned RB1:1;



    unsigned RTR:1;



    unsigned EID:18;



    unsigned IDE:1;




    unsigned SRR:1;
    unsigned :2;

}CAN_MSG_EID;
# 869 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef union {

    struct
    {

        CAN_TX_MSG_SID msgSID;


        CAN_MSG_EID msgEID;


        BYTE data[8];
    };



    UINT32 messageWord[4];

}CANTxMessageBuffer;
# 900 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef struct
{

    unsigned SID:11;


    unsigned FILHIT:5;



    unsigned CMSGTS:16;

}CAN_RX_MSG_SID;
# 932 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
typedef union {

    struct
    {

        CAN_RX_MSG_SID msgSID;


        CAN_MSG_EID msgEID;



        BYTE data[8];
    };



    BYTE dataOnlyMsgData[8];



    UINT32 messageWord[4];

}CANRxMessageBuffer;
# 1005 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANAssignMemoryBuffer(CAN_MODULE module, void * buffer, UINT sizeInBytes);
# 1043 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetOperatingMode(CAN_MODULE module, CAN_OP_MODE opmode);
# 1078 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_OP_MODE CANGetOperatingMode(CAN_MODULE module);
# 1125 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableFeature(CAN_MODULE module, CAN_MODULE_FEATURES features, BOOL enable);
# 1168 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANDeviceNetFilter(CAN_MODULE module, CAN_DNET_FILTER_SIZE dncnt);
# 1209 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetTimeStampValue(CAN_MODULE module, UINT value);
# 1244 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANGetTimeStampValue(CAN_MODULE module);
# 1285 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetTimeStampPrescalar(CAN_MODULE module, UINT prescalar);
# 1327 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableModule(CAN_MODULE module, BOOL enable );
# 1389 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANSetSpeed(CAN_MODULE module, const CAN_BIT_CONFIG * canBitConfig,
                        UINT32 sysClock, UINT32 canBusSpeed );
# 1436 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsActive(CAN_MODULE module);
# 1481 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANResetChannel(CAN_MODULE module, CAN_CHANNEL channel );
# 1523 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsChannelReset(CAN_MODULE module, CAN_CHANNEL channel );
# 1606 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANUpdateChannel(CAN_MODULE module, CAN_CHANNEL channel);
# 1659 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableModuleEvent(CAN_MODULE module, CAN_MODULE_EVENT flags, BOOL enable);
# 1699 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANClearModuleEvent(CAN_MODULE module, CAN_MODULE_EVENT flags);
# 1755 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableChannelEvent(CAN_MODULE module, CAN_CHANNEL channel,CAN_CHANNEL_EVENT flags, BOOL enable);
# 1809 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_MODULE_EVENT CANGetModuleEvent(CAN_MODULE module);
# 1866 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_EVENT_CODE CANGetPendingEventCode(CAN_MODULE module);
# 1926 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_CHANNEL_MASK CANGetAllChannelEventStatus(CAN_MODULE module);
# 1987 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_CHANNEL_MASK CANGetAllChannelOverflowStatus(CAN_MODULE module);
# 2060 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_CHANNEL_EVENT CANGetChannelEvent(CAN_MODULE module, CAN_CHANNEL channel);
# 2101 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANClearChannelEvent(CAN_MODULE module, CAN_CHANNEL channel, CAN_CHANNEL_EVENT events);
# 2164 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureChannelForTx(CAN_MODULE module,CAN_CHANNEL channel, UINT channelSize,
                             CAN_TX_RTR rtren, CAN_TXCHANNEL_PRIORITY priority);
# 2213 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANAbortPendingTx(CAN_MODULE module, CAN_CHANNEL channel);
# 2253 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANFlushTxChannel(CAN_MODULE module, CAN_CHANNEL channel);
# 2313 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_TX_CHANNEL_CONDITION CANGetTxChannelCondition(CAN_MODULE module, CAN_CHANNEL channel);
# 2377 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CANTxMessageBuffer * CANGetTxMessageBuffer(CAN_MODULE module, CAN_CHANNEL channel);
# 2434 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsTxAborted(CAN_MODULE module, CAN_CHANNEL channel);
# 2527 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CANRxMessageBuffer * CANGetRxMessage(CAN_MODULE module, CAN_CHANNEL channel);
# 2589 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureChannelForRx(CAN_MODULE module, CAN_CHANNEL channel, UINT32 channelSize,
        CAN_RX_DATA_MODE dataOnly);
# 2670 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureFilterMask(CAN_MODULE module, CAN_FILTER_MASK mask, UINT32 maskbits,
                                CAN_ID_TYPE idType, CAN_FILTER_MASK_TYPE mide);
# 2727 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANConfigureFilter(CAN_MODULE module, CAN_FILTER filter, UINT32 id, CAN_ID_TYPE filterType);
# 2778 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANEnableFilter(CAN_MODULE module, CAN_FILTER filter, BOOL enable);
# 2823 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_FILTER CANGetLatestFilterHit(CAN_MODULE module);
# 2886 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
void CANLinkFilterToChannel(CAN_MODULE module, CAN_FILTER filter, CAN_FILTER_MASK mask, CAN_CHANNEL channel);
# 2929 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
BOOL CANIsFilterDisabled(CAN_MODULE module, CAN_FILTER filter);
# 2982 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANGetRxErrorCount(CAN_MODULE module);
# 3028 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANGetTxErrorCount(CAN_MODULE module);
# 3085 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
CAN_ERROR_STATE CANGetErrorState(CAN_MODULE module);
# 3116 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalModules(void);
# 3141 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalChannels(void);
# 3166 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalFilters(void);
# 3191 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/peripheral/CAN.h" 3
UINT CANTotalMasks(void);
# 73 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/plib.h" 2 3
# 3 "badgemain.c" 2
# 1 "./include/colors.h" 1
# 4 "badgemain.c" 2
# 1 "./include/assetList.h" 1
# 11 "./include/assetList.h"
enum {




    FONT,

    LASTASSET,
};

enum {
    AUDIO,
    MIDI,
    PICTURE1BIT,
    PICTURE2BIT,
    PICTURE4BIT,
    PICTURE8BIT,
};

struct asset {
    unsigned char assetId;
    unsigned char type;
    unsigned char seqNum;
    unsigned short x;
    unsigned short y;
    const char *data_cmap;
    const char *pixdata;
    void (*datacb)(unsigned char, int);
};
extern const struct asset assetList[];
# 5 "badgemain.c" 2
# 1 "../../py/compile.h" 1
# 33 "../../py/compile.h"
typedef unsigned int c_uint;


# 1 "../../py/lexer.h" 1
# 29 "../../py/lexer.h"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 1 3
# 42 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 3
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_types.h" 1 3
# 46 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_types.h" 3
typedef __signed char __int8_t;
typedef unsigned char __uint8_t;
typedef short int __int16_t;
typedef unsigned short int __uint16_t;
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 60 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_types.h" 3
__extension__
typedef long long int __int64_t;

__extension__
typedef unsigned long long int __uint64_t;
# 75 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_types.h" 3
typedef int __intptr_t;
typedef unsigned int __uintptr_t;
# 43 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 2 3


typedef __int8_t int8_t;




typedef __uint8_t uint8_t;




typedef __int16_t int16_t;




typedef __uint16_t uint16_t;




typedef __int32_t int32_t;




typedef __uint32_t uint32_t;




typedef __int64_t int64_t;




typedef __uint64_t uint64_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;



# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 1 3
# 48 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 3
__extension__
typedef __signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int int_least16_t;
typedef unsigned short int uint_least16_t;
typedef int int_least24_t;
typedef unsigned int uint_least24_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
# 65 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 3
__extension__
typedef long long int int_least64_t;

__extension__
typedef unsigned long long int uint_least64_t;



typedef int int_fast8_t;
typedef unsigned int uint_fast8_t;
typedef int int_fast16_t;
typedef unsigned int uint_fast16_t;
typedef int int_fast24_t;
typedef unsigned int uint_fast24_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
# 89 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 3
__extension__
typedef long long int int_fast64_t;

__extension__
typedef unsigned long long int uint_fast64_t;
# 106 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_mwgwtypes.h" 3
__extension__
typedef long long int intmax_t;

__extension__
typedef unsigned long long int uintmax_t;
# 95 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 2 3


# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_limits.h" 1 3
# 98 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 2 3



# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/machine/int_const.h" 1 3
# 102 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/stdint.h" 2 3
# 30 "../../py/lexer.h" 2

# 1 "../../py/mpconfig.h" 1
# 45 "../../py/mpconfig.h"
# 1 "./mpconfigport.h" 1
# 59 "./mpconfigport.h"
typedef __int32_t mp_int_t;
typedef __uint32_t mp_uint_t;
typedef long mp_off_t;
# 74 "./mpconfigport.h"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/../../../../pic32mx/include/alloca.h" 1 3
# 75 "./mpconfigport.h" 2

extern const struct _mp_obj_module_t mp_module_pybadge;
# 46 "../../py/mpconfig.h" 2
# 32 "../../py/lexer.h" 2
# 1 "../../py/qstr.h" 1
# 30 "../../py/qstr.h"
# 1 "../../py/misc.h" 1
# 33 "../../py/misc.h"
# 1 "/opt/microchip/xc32/v1.34/bin/bin/../../lib/gcc/pic32mx/4.5.2/include/stdbool.h" 1 3 4
# 34 "../../py/misc.h" 2



typedef unsigned char byte;
typedef unsigned int uint_PEB;
# 87 "../../py/misc.h"
void *m_malloc(size_t num_bytes);
void *m_malloc_maybe(size_t num_bytes);
void *m_malloc_with_finaliser(size_t num_bytes);
void *m_malloc0(size_t num_bytes);





void *m_realloc(void *ptr, size_t new_num_bytes);
void *m_realloc_maybe(void *ptr, size_t new_num_bytes, _Bool allow_move);
void m_free(void *ptr);

__attribute__((noreturn)) void m_malloc_fail(size_t num_bytes);
# 124 "../../py/misc.h"
typedef uint_PEB unichar;







static inline unichar utf8_get_char(const byte *s) { return *s; }
static inline const byte *utf8_next_char(const byte *s) { return s + 1; }
static inline size_t utf8_charlen(const byte *str, size_t len) { (void)str; return len; }


_Bool unichar_isspace(unichar c);
_Bool unichar_isalpha(unichar c);
_Bool unichar_isprint(unichar c);
_Bool unichar_isdigit(unichar c);
_Bool unichar_isxdigit(unichar c);
_Bool unichar_isident(unichar c);
_Bool unichar_isupper(unichar c);
_Bool unichar_islower(unichar c);
unichar unichar_tolower(unichar c);
unichar unichar_toupper(unichar c);
mp_uint_t unichar_xdigit_value(unichar c);





typedef struct _vstr_t {
    size_t alloc;
    size_t len;
    char *buf;
    _Bool fixed_buf : 1;
} vstr_t;




void vstr_init(vstr_t *vstr, size_t alloc);
void vstr_init_len(vstr_t *vstr, size_t len);
void vstr_init_fixed_buf(vstr_t *vstr, size_t alloc, char *buf);
struct _mp_print_t;
void vstr_init_print(vstr_t *vstr, size_t alloc, struct _mp_print_t *print);
void vstr_clear(vstr_t *vstr);
vstr_t *vstr_new(size_t alloc);
void vstr_free(vstr_t *vstr);
static inline void vstr_reset(vstr_t *vstr) { vstr->len = 0; }
static inline char *vstr_str(vstr_t *vstr) { return vstr->buf; }
static inline size_t vstr_len(vstr_t *vstr) { return vstr->len; }
void vstr_hint_size(vstr_t *vstr, size_t size);
char *vstr_extend(vstr_t *vstr, size_t size);
char *vstr_add_len(vstr_t *vstr, size_t len);
char *vstr_null_terminated_str(vstr_t *vstr);
void vstr_add_byte(vstr_t *vstr, byte v);
void vstr_add_char(vstr_t *vstr, unichar chr);
void vstr_add_str(vstr_t *vstr, const char *str);
void vstr_add_strn(vstr_t *vstr, const char *str, size_t len);
void vstr_ins_byte(vstr_t *vstr, size_t byte_pos, byte b);
void vstr_ins_char(vstr_t *vstr, size_t char_pos, unichar chr);
void vstr_cut_head_bytes(vstr_t *vstr, size_t bytes_to_cut);
void vstr_cut_tail_bytes(vstr_t *vstr, size_t bytes_to_cut);
void vstr_cut_out_bytes(vstr_t *vstr, size_t byte_pos, size_t bytes_to_cut);
void vstr_printf(vstr_t *vstr, const char *fmt, ...);
# 202 "../../py/misc.h"
void vstr_vprintf(vstr_t *vstr, const char *fmt, va_list ap);



int DEBUG_printf(const char *fmt, ...);

extern mp_uint_t mp_verbose_flag;
# 31 "../../py/qstr.h" 2
# 39 "../../py/qstr.h"
enum {


# 1 "build/genhdr/qstrdefs.generated.h" 1


MP_QSTR_NULL,
MP_QSTR_,
MP_QSTR___add__,
MP_QSTR___bool__,
MP_QSTR___build_class__,
MP_QSTR___call__,
MP_QSTR___class__,
MP_QSTR___contains__,
MP_QSTR___delitem__,
MP_QSTR___enter__,
MP_QSTR___eq__,
MP_QSTR___exit__,
MP_QSTR___ge__,
MP_QSTR___getattr__,
MP_QSTR___getitem__,
MP_QSTR___gt__,
MP_QSTR___hash__,
MP_QSTR___iadd__,
MP_QSTR___import__,
MP_QSTR___init__,
MP_QSTR___isub__,
MP_QSTR___iter__,
MP_QSTR___le__,
MP_QSTR___len__,
MP_QSTR___lt__,
MP_QSTR___main__,
MP_QSTR___module__,
MP_QSTR___name__,
MP_QSTR___new__,
MP_QSTR___next__,
MP_QSTR___path__,
MP_QSTR___qualname__,
MP_QSTR___repl_print__,
MP_QSTR___repr__,
MP_QSTR___setitem__,
MP_QSTR___str__,
MP_QSTR___sub__,
MP_QSTR___traceback__,
MP_QSTR__star_,
MP_QSTR__,
MP_QSTR__slash_,
MP_QSTR__brace_open__colon__hash_o_brace_close_,
MP_QSTR__brace_open__colon__hash_x_brace_close_,
MP_QSTR__brace_open__colon__hash_b_brace_close_,
MP_QSTR__space_,
MP_QSTR__0x0a_,
MP_QSTR_maximum_space_recursion_space_depth_space_exceeded,
MP_QSTR__lt_module_gt_,
MP_QSTR__lt_lambda_gt_,
MP_QSTR__lt_listcomp_gt_,
MP_QSTR__lt_dictcomp_gt_,
MP_QSTR__lt_setcomp_gt_,
MP_QSTR__lt_genexpr_gt_,
MP_QSTR__lt_string_gt_,
MP_QSTR__lt_stdin_gt_,
MP_QSTR_utf_hyphen_8,
MP_QSTR_red,
MP_QSTR_green,
MP_QSTR_blue,
MP_QSTR_flare,
MP_QSTR_backlight,
MP_QSTR_FbMoveX,
MP_QSTR_FbMoveY,
MP_QSTR_FbMove,
MP_QSTR_FbMoveRelative,
MP_QSTR_FbClear,
MP_QSTR_FbColor,
MP_QSTR_FbBackgroundColor,
MP_QSTR_FbCharacter,
MP_QSTR_FbPoint,
MP_QSTR_FbWriteLine,
MP_QSTR_FbWriteString,
MP_QSTR_FbSwapBuffers,
MP_QSTR_FbPushBuffer,
MP_QSTR_FbLine,
MP_QSTR_LCDBars,
MP_QSTR_LCDcolor,
MP_QSTR_LCDputPixel,
MP_QSTR_ArithmeticError,
MP_QSTR_AssertionError,
MP_QSTR_AttributeError,
MP_QSTR_BaseException,
MP_QSTR_EOFError,
MP_QSTR_Ellipsis,
MP_QSTR_Exception,
MP_QSTR_GeneratorExit,
MP_QSTR_ImportError,
MP_QSTR_IndentationError,
MP_QSTR_IndexError,
MP_QSTR_KeyError,
MP_QSTR_KeyboardInterrupt,
MP_QSTR_LookupError,
MP_QSTR_MemoryError,
MP_QSTR_NameError,
MP_QSTR_NoneType,
MP_QSTR_NotImplementedError,
MP_QSTR_OSError,
MP_QSTR_OverflowError,
MP_QSTR_RuntimeError,
MP_QSTR_StopIteration,
MP_QSTR_SyntaxError,
MP_QSTR_SystemExit,
MP_QSTR_TypeError,
MP_QSTR_ValueError,
MP_QSTR_ZeroDivisionError,
MP_QSTR_abs,
MP_QSTR_all,
MP_QSTR_any,
MP_QSTR_append,
MP_QSTR_args,
MP_QSTR_bin,
MP_QSTR_bool,
MP_QSTR_bound_method,
MP_QSTR_builtins,
MP_QSTR_bytecode,
MP_QSTR_bytes,
MP_QSTR_callable,
MP_QSTR_chr,
MP_QSTR_classmethod,
MP_QSTR_clear,
MP_QSTR_close,
MP_QSTR_closure,
MP_QSTR_const,
MP_QSTR_copy,
MP_QSTR_count,
MP_QSTR_default,
MP_QSTR_dict,
MP_QSTR_dict_view,
MP_QSTR_dir,
MP_QSTR_divmod,
MP_QSTR_end,
MP_QSTR_endswith,
MP_QSTR_eval,
MP_QSTR_exec,
MP_QSTR_extend,
MP_QSTR_filter,
MP_QSTR_find,
MP_QSTR_format,
MP_QSTR_from_bytes,
MP_QSTR_fromkeys,
MP_QSTR_function,
MP_QSTR_generator,
MP_QSTR_get,
MP_QSTR_getattr,
MP_QSTR_globals,
MP_QSTR_hasattr,
MP_QSTR_hash,
MP_QSTR_hex,
MP_QSTR_id,
MP_QSTR_index,
MP_QSTR_insert,
MP_QSTR_int,
MP_QSTR_isalpha,
MP_QSTR_isdigit,
MP_QSTR_isinstance,
MP_QSTR_islower,
MP_QSTR_isspace,
MP_QSTR_issubclass,
MP_QSTR_isupper,
MP_QSTR_items,
MP_QSTR_iter,
MP_QSTR_iterator,
MP_QSTR_join,
MP_QSTR_key,
MP_QSTR_keys,
MP_QSTR_len,
MP_QSTR_list,
MP_QSTR_little,
MP_QSTR_locals,
MP_QSTR_lower,
MP_QSTR_lstrip,
MP_QSTR_map,
MP_QSTR_max,
MP_QSTR_micropython,
MP_QSTR_min,
MP_QSTR_module,
MP_QSTR_next,
MP_QSTR_object,
MP_QSTR_oct,
MP_QSTR_open,
MP_QSTR_opt_level,
MP_QSTR_ord,
MP_QSTR_pend_throw,
MP_QSTR_pop,
MP_QSTR_popitem,
MP_QSTR_pow,
MP_QSTR_print,
MP_QSTR_pybadge,
MP_QSTR_range,
MP_QSTR_remove,
MP_QSTR_replace,
MP_QSTR_repr,
MP_QSTR_reverse,
MP_QSTR_rfind,
MP_QSTR_rindex,
MP_QSTR_round,
MP_QSTR_rsplit,
MP_QSTR_rstrip,
MP_QSTR_send,
MP_QSTR_sep,
MP_QSTR_setattr,
MP_QSTR_setdefault,
MP_QSTR_sort,
MP_QSTR_sorted,
MP_QSTR_split,
MP_QSTR_start,
MP_QSTR_startswith,
MP_QSTR_staticmethod,
MP_QSTR_step,
MP_QSTR_stop,
MP_QSTR_str,
MP_QSTR_strip,
MP_QSTR_sum,
MP_QSTR_super,
MP_QSTR_throw,
MP_QSTR_to_bytes,
MP_QSTR_tuple,
MP_QSTR_type,
MP_QSTR_update,
MP_QSTR_upper,
MP_QSTR_value,
MP_QSTR_values,
MP_QSTR_zip,
# 43 "../../py/qstr.h" 2


    MP_QSTRnumber_of,
};

typedef size_t qstr;

typedef struct _qstr_pool_t {
    struct _qstr_pool_t *prev;
    size_t total_prev_len;
    size_t alloc;
    size_t len;
    const byte *qstrs[];
} qstr_pool_t;




void qstr_init(void);

mp_uint_t qstr_compute_hash(const byte *data, size_t len);
qstr qstr_find_strn(const char *str, size_t str_len);

qstr qstr_from_str(const char *str);
qstr qstr_from_strn(const char *str, size_t len);

mp_uint_t qstr_hash(qstr q);
const char *qstr_str(qstr q);
size_t qstr_len(qstr q);
const byte *qstr_data(qstr q, size_t *len);

void qstr_pool_info(size_t *n_pool, size_t *n_qstr, size_t *n_str_data_bytes, size_t *n_total_bytes);
void qstr_dump_data(void);
# 33 "../../py/lexer.h" 2
# 1 "../../py/reader.h" 1
# 29 "../../py/reader.h"
# 1 "../../py/obj.h" 1
# 32 "../../py/obj.h"
# 1 "../../py/mpprint.h" 1
# 48 "../../py/mpprint.h"
typedef void (*mp_print_strn_t)(void *data, const char *str, size_t len);

typedef struct _mp_print_t {
    void *data;
    mp_print_strn_t print_strn;
} mp_print_t;



extern const mp_print_t mp_plat_print;





int mp_print_str(const mp_print_t *print, const char *str);
int mp_print_strn(const mp_print_t *print, const char *str, size_t len, int flags, char fill, int width);




int mp_printf(const mp_print_t *print, const char *fmt, ...);

int mp_vprintf(const mp_print_t *print, const char *fmt, va_list args);
# 33 "../../py/obj.h" 2
# 1 "../../py/runtime0.h" 1
# 49 "../../py/runtime0.h"
typedef enum {


    MP_UNARY_OP_POSITIVE,
    MP_UNARY_OP_NEGATIVE,
    MP_UNARY_OP_INVERT,
    MP_UNARY_OP_NOT,


    MP_UNARY_OP_NUM_BYTECODE,

    MP_UNARY_OP_BOOL = MP_UNARY_OP_NUM_BYTECODE,
    MP_UNARY_OP_LEN,
    MP_UNARY_OP_HASH,
    MP_UNARY_OP_ABS,
    MP_UNARY_OP_SIZEOF,

    MP_UNARY_OP_NUM_RUNTIME,
} mp_unary_op_t;



typedef enum {

    MP_BINARY_OP_LESS,
    MP_BINARY_OP_MORE,
    MP_BINARY_OP_EQUAL,
    MP_BINARY_OP_LESS_EQUAL,
    MP_BINARY_OP_MORE_EQUAL,
    MP_BINARY_OP_NOT_EQUAL,
    MP_BINARY_OP_IN,
    MP_BINARY_OP_IS,
    MP_BINARY_OP_EXCEPTION_MATCH,


    MP_BINARY_OP_INPLACE_OR,
    MP_BINARY_OP_INPLACE_XOR,
    MP_BINARY_OP_INPLACE_AND,
    MP_BINARY_OP_INPLACE_LSHIFT,
    MP_BINARY_OP_INPLACE_RSHIFT,
    MP_BINARY_OP_INPLACE_ADD,
    MP_BINARY_OP_INPLACE_SUBTRACT,
    MP_BINARY_OP_INPLACE_MULTIPLY,
    MP_BINARY_OP_INPLACE_FLOOR_DIVIDE,
    MP_BINARY_OP_INPLACE_TRUE_DIVIDE,
    MP_BINARY_OP_INPLACE_MODULO,
    MP_BINARY_OP_INPLACE_POWER,


    MP_BINARY_OP_OR,
    MP_BINARY_OP_XOR,
    MP_BINARY_OP_AND,
    MP_BINARY_OP_LSHIFT,
    MP_BINARY_OP_RSHIFT,
    MP_BINARY_OP_ADD,
    MP_BINARY_OP_SUBTRACT,
    MP_BINARY_OP_MULTIPLY,
    MP_BINARY_OP_FLOOR_DIVIDE,
    MP_BINARY_OP_TRUE_DIVIDE,
    MP_BINARY_OP_MODULO,
    MP_BINARY_OP_POWER,



    MP_BINARY_OP_NUM_BYTECODE,
# 132 "../../py/runtime0.h"
    MP_BINARY_OP_DIVMOD

        = MP_BINARY_OP_NUM_BYTECODE

    ,



    MP_BINARY_OP_CONTAINS,

    MP_BINARY_OP_NUM_RUNTIME,


    MP_BINARY_OP_NOT_IN,
    MP_BINARY_OP_IS_NOT,
} mp_binary_op_t;

typedef enum {
    MP_F_CONVERT_OBJ_TO_NATIVE = 0,
    MP_F_CONVERT_NATIVE_TO_OBJ,
    MP_F_NATIVE_SWAP_GLOBALS,
    MP_F_LOAD_NAME,
    MP_F_LOAD_GLOBAL,
    MP_F_LOAD_BUILD_CLASS,
    MP_F_LOAD_ATTR,
    MP_F_LOAD_METHOD,
    MP_F_LOAD_SUPER_METHOD,
    MP_F_STORE_NAME,
    MP_F_STORE_GLOBAL,
    MP_F_STORE_ATTR,
    MP_F_OBJ_SUBSCR,
    MP_F_OBJ_IS_TRUE,
    MP_F_UNARY_OP,
    MP_F_BINARY_OP,
    MP_F_BUILD_TUPLE,
    MP_F_BUILD_LIST,
    MP_F_LIST_APPEND,
    MP_F_BUILD_MAP,
    MP_F_STORE_MAP,




    MP_F_MAKE_FUNCTION_FROM_RAW_CODE,
    MP_F_NATIVE_CALL_FUNCTION_N_KW,
    MP_F_CALL_METHOD_N_KW,
    MP_F_CALL_METHOD_N_KW_VAR,
    MP_F_NATIVE_GETITER,
    MP_F_NATIVE_ITERNEXT,
    MP_F_NLR_PUSH,
    MP_F_NLR_POP,
    MP_F_NATIVE_RAISE,
    MP_F_IMPORT_NAME,
    MP_F_IMPORT_FROM,
    MP_F_IMPORT_ALL,



    MP_F_UNPACK_SEQUENCE,
    MP_F_UNPACK_EX,
    MP_F_DELETE_NAME,
    MP_F_DELETE_GLOBAL,
    MP_F_NEW_CELL,
    MP_F_MAKE_CLOSURE_FROM_RAW_CODE,
    MP_F_ARG_CHECK_NUM_SIG,
    MP_F_SETUP_CODE_STATE,
    MP_F_SMALL_INT_FLOOR_DIVIDE,
    MP_F_SMALL_INT_MODULO,
    MP_F_NUMBER_OF,
} mp_fun_kind_t;

extern void *const mp_fun_table[MP_F_NUMBER_OF];
# 34 "../../py/obj.h" 2
# 42 "../../py/obj.h"
typedef void *mp_obj_t;
typedef const void *mp_const_obj_t;




typedef struct _mp_obj_type_t mp_obj_type_t;



struct _mp_obj_base_t {
    const mp_obj_type_t *type ;
};
typedef struct _mp_obj_base_t mp_obj_base_t;
# 84 "../../py/obj.h"
static inline _Bool MP_OBJ_IS_SMALL_INT(mp_const_obj_t o)
    { return ((((mp_int_t)(o)) & 1) != 0); }



static inline _Bool MP_OBJ_IS_QSTR(mp_const_obj_t o)
    { return ((((mp_int_t)(o)) & 3) == 2); }
# 105 "../../py/obj.h"
static inline _Bool MP_OBJ_IS_OBJ(mp_const_obj_t o)
    { return ((((mp_int_t)(o)) & 3) == 0); }
# 246 "../../py/obj.h"
typedef mp_const_obj_t mp_rom_obj_t;
# 342 "../../py/obj.h"
typedef struct _mp_map_elem_t {
    mp_obj_t key;
    mp_obj_t value;
} mp_map_elem_t;

typedef struct _mp_rom_map_elem_t {
    mp_rom_obj_t key;
    mp_rom_obj_t value;
} mp_rom_map_elem_t;






typedef struct _mp_map_t {
    size_t all_keys_are_qstrs : 1;
    size_t is_fixed : 1;
    size_t is_ordered : 1;
    size_t used : (8 * sizeof(size_t) - 3);
    size_t alloc;
    mp_map_elem_t *table;
} mp_map_t;


typedef enum _mp_map_lookup_kind_t {
    MP_MAP_LOOKUP = 0,
    MP_MAP_LOOKUP_ADD_IF_NOT_FOUND = 1,
    MP_MAP_LOOKUP_REMOVE_IF_FOUND = 2,
    MP_MAP_LOOKUP_ADD_IF_NOT_FOUND_OR_REMOVE_IF_FOUND = 3,
} mp_map_lookup_kind_t;

extern const mp_map_t mp_const_empty_map;

static inline _Bool MP_MAP_SLOT_IS_FILLED(const mp_map_t *map, size_t pos) { return ((map)->table[pos].key != (((mp_obj_t)(void*)0)) && (map)->table[pos].key != (((mp_obj_t)(void*)8))); }

void mp_map_init(mp_map_t *map, size_t n);
void mp_map_init_fixed_table(mp_map_t *map, size_t n, const mp_obj_t *table);
mp_map_t *mp_map_new(size_t n);
void mp_map_deinit(mp_map_t *map);
void mp_map_free(mp_map_t *map);
mp_map_elem_t *mp_map_lookup(mp_map_t *map, mp_obj_t index, mp_map_lookup_kind_t lookup_kind);
void mp_map_clear(mp_map_t *map);
void mp_map_dump(mp_map_t *map);



typedef struct _mp_set_t {
    size_t alloc;
    size_t used;
    mp_obj_t *table;
} mp_set_t;

static inline _Bool MP_SET_SLOT_IS_FILLED(const mp_set_t *set, size_t pos) { return ((set)->table[pos] != (((mp_obj_t)(void*)0)) && (set)->table[pos] != (((mp_obj_t)(void*)8))); }

void mp_set_init(mp_set_t *set, size_t n);
mp_obj_t mp_set_lookup(mp_set_t *set, mp_obj_t index, mp_map_lookup_kind_t lookup_kind);
mp_obj_t mp_set_remove_first(mp_set_t *set);
void mp_set_clear(mp_set_t *set);



typedef mp_obj_t (*mp_fun_0_t)(void);
typedef mp_obj_t (*mp_fun_1_t)(mp_obj_t);
typedef mp_obj_t (*mp_fun_2_t)(mp_obj_t, mp_obj_t);
typedef mp_obj_t (*mp_fun_3_t)(mp_obj_t, mp_obj_t, mp_obj_t);
typedef mp_obj_t (*mp_fun_var_t)(size_t n, const mp_obj_t *);


typedef mp_obj_t (*mp_fun_kw_t)(size_t n, const mp_obj_t *, mp_map_t *);

typedef enum {
    PRINT_STR = 0,
    PRINT_REPR = 1,
    PRINT_EXC = 2,
    PRINT_JSON = 3,
    PRINT_RAW = 4,
    PRINT_EXC_SUBCLASS = 0x80,
} mp_print_kind_t;

typedef struct _mp_obj_iter_buf_t {
    mp_obj_base_t base;
    mp_obj_t buf[3];
} mp_obj_iter_buf_t;





typedef void (*mp_print_fun_t)(const mp_print_t *print, mp_obj_t o, mp_print_kind_t kind);
typedef mp_obj_t (*mp_make_new_fun_t)(const mp_obj_type_t *type, size_t n_args, size_t n_kw, const mp_obj_t *args);
typedef mp_obj_t (*mp_call_fun_t)(mp_obj_t fun, size_t n_args, size_t n_kw, const mp_obj_t *args);
typedef mp_obj_t (*mp_unary_op_fun_t)(mp_unary_op_t op, mp_obj_t);
typedef mp_obj_t (*mp_binary_op_fun_t)(mp_binary_op_t op, mp_obj_t, mp_obj_t);
typedef void (*mp_attr_fun_t)(mp_obj_t self_in, qstr attr, mp_obj_t *dest);
typedef mp_obj_t (*mp_subscr_fun_t)(mp_obj_t self_in, mp_obj_t index, mp_obj_t value);
typedef mp_obj_t (*mp_getiter_fun_t)(mp_obj_t self_in, mp_obj_iter_buf_t *iter_buf);


typedef struct _mp_buffer_info_t {





    void *buf;
    size_t len;
    int typecode;




} mp_buffer_info_t;



typedef struct _mp_buffer_p_t {
    mp_int_t (*get_buffer)(mp_obj_t obj, mp_buffer_info_t *bufinfo, mp_uint_t flags);
} mp_buffer_p_t;
_Bool mp_get_buffer(mp_obj_t obj, mp_buffer_info_t *bufinfo, mp_uint_t flags);
void mp_get_buffer_raise(mp_obj_t obj, mp_buffer_info_t *bufinfo, mp_uint_t flags);

struct _mp_obj_type_t {

    mp_obj_base_t base;


    __uint16_t flags;


    __uint16_t name;


    mp_print_fun_t print;


    mp_make_new_fun_t make_new;


    mp_call_fun_t call;



    mp_unary_op_fun_t unary_op;
    mp_binary_op_fun_t binary_op;
# 499 "../../py/obj.h"
    mp_attr_fun_t attr;






    mp_subscr_fun_t subscr;




    mp_getiter_fun_t getiter;



    mp_fun_1_t iternext;


    mp_buffer_p_t buffer_p;


    const void *protocol;





    const void *parent;


    struct _mp_obj_dict_t *locals_dict;
};


extern const mp_obj_type_t mp_type_type;
extern const mp_obj_type_t mp_type_object;
extern const mp_obj_type_t mp_type_NoneType;
extern const mp_obj_type_t mp_type_bool;
extern const mp_obj_type_t mp_type_int;
extern const mp_obj_type_t mp_type_str;
extern const mp_obj_type_t mp_type_bytes;
extern const mp_obj_type_t mp_type_bytearray;
extern const mp_obj_type_t mp_type_memoryview;
extern const mp_obj_type_t mp_type_float;
extern const mp_obj_type_t mp_type_complex;
extern const mp_obj_type_t mp_type_tuple;
extern const mp_obj_type_t mp_type_list;
extern const mp_obj_type_t mp_type_map;
extern const mp_obj_type_t mp_type_enumerate;
extern const mp_obj_type_t mp_type_filter;
extern const mp_obj_type_t mp_type_deque;
extern const mp_obj_type_t mp_type_dict;
extern const mp_obj_type_t mp_type_ordereddict;
extern const mp_obj_type_t mp_type_range;
extern const mp_obj_type_t mp_type_set;
extern const mp_obj_type_t mp_type_frozenset;
extern const mp_obj_type_t mp_type_slice;
extern const mp_obj_type_t mp_type_zip;
extern const mp_obj_type_t mp_type_array;
extern const mp_obj_type_t mp_type_super;
extern const mp_obj_type_t mp_type_gen_wrap;
extern const mp_obj_type_t mp_type_gen_instance;
extern const mp_obj_type_t mp_type_fun_builtin_0;
extern const mp_obj_type_t mp_type_fun_builtin_1;
extern const mp_obj_type_t mp_type_fun_builtin_2;
extern const mp_obj_type_t mp_type_fun_builtin_3;
extern const mp_obj_type_t mp_type_fun_builtin_var;
extern const mp_obj_type_t mp_type_fun_bc;
extern const mp_obj_type_t mp_type_module;
extern const mp_obj_type_t mp_type_staticmethod;
extern const mp_obj_type_t mp_type_classmethod;
extern const mp_obj_type_t mp_type_property;
extern const mp_obj_type_t mp_type_stringio;
extern const mp_obj_type_t mp_type_bytesio;
extern const mp_obj_type_t mp_type_reversed;
extern const mp_obj_type_t mp_type_polymorph_iter;


extern const mp_obj_type_t mp_type_BaseException;
extern const mp_obj_type_t mp_type_ArithmeticError;
extern const mp_obj_type_t mp_type_AssertionError;
extern const mp_obj_type_t mp_type_AttributeError;
extern const mp_obj_type_t mp_type_EOFError;
extern const mp_obj_type_t mp_type_Exception;
extern const mp_obj_type_t mp_type_GeneratorExit;
extern const mp_obj_type_t mp_type_ImportError;
extern const mp_obj_type_t mp_type_IndentationError;
extern const mp_obj_type_t mp_type_IndexError;
extern const mp_obj_type_t mp_type_KeyboardInterrupt;
extern const mp_obj_type_t mp_type_KeyError;
extern const mp_obj_type_t mp_type_LookupError;
extern const mp_obj_type_t mp_type_MemoryError;
extern const mp_obj_type_t mp_type_NameError;
extern const mp_obj_type_t mp_type_NotImplementedError;
extern const mp_obj_type_t mp_type_OSError;
extern const mp_obj_type_t mp_type_TimeoutError;
extern const mp_obj_type_t mp_type_OverflowError;
extern const mp_obj_type_t mp_type_RuntimeError;
extern const mp_obj_type_t mp_type_StopAsyncIteration;
extern const mp_obj_type_t mp_type_StopIteration;
extern const mp_obj_type_t mp_type_SyntaxError;
extern const mp_obj_type_t mp_type_SystemExit;
extern const mp_obj_type_t mp_type_TypeError;
extern const mp_obj_type_t mp_type_UnicodeError;
extern const mp_obj_type_t mp_type_ValueError;
extern const mp_obj_type_t mp_type_ViperTypeError;
extern const mp_obj_type_t mp_type_ZeroDivisionError;
# 616 "../../py/obj.h"
extern const struct _mp_obj_none_t mp_const_none_obj;
extern const struct _mp_obj_bool_t mp_const_false_obj;
extern const struct _mp_obj_bool_t mp_const_true_obj;
extern const struct _mp_obj_str_t mp_const_empty_bytes_obj;
extern const struct _mp_obj_tuple_t mp_const_empty_tuple_obj;
extern const struct _mp_obj_singleton_t mp_const_ellipsis_obj;
extern const struct _mp_obj_singleton_t mp_const_notimplemented_obj;
extern const struct _mp_obj_exception_t mp_const_GeneratorExit_obj;



mp_obj_t mp_obj_new_type(qstr name, mp_obj_t bases_tuple, mp_obj_t locals_dict);
static inline mp_obj_t mp_obj_new_bool(mp_int_t x) { return x ? (((mp_obj_t)&mp_const_true_obj)) : (((mp_obj_t)&mp_const_false_obj)); }
mp_obj_t mp_obj_new_cell(mp_obj_t obj);
mp_obj_t mp_obj_new_int(mp_int_t value);
mp_obj_t mp_obj_new_int_from_uint(mp_uint_t value);
mp_obj_t mp_obj_new_int_from_str_len(const char **str, size_t len, _Bool neg, unsigned int base);
mp_obj_t mp_obj_new_int_from_ll(long long val);
mp_obj_t mp_obj_new_int_from_ull(unsigned long long val);
mp_obj_t mp_obj_new_str(const char* data, size_t len);
mp_obj_t mp_obj_new_str_via_qstr(const char* data, size_t len);
mp_obj_t mp_obj_new_str_from_vstr(const mp_obj_type_t *type, vstr_t *vstr);
mp_obj_t mp_obj_new_bytes(const byte* data, size_t len);
mp_obj_t mp_obj_new_bytearray(size_t n, void *items);
mp_obj_t mp_obj_new_bytearray_by_ref(size_t n, void *items);




mp_obj_t mp_obj_new_exception(const mp_obj_type_t *exc_type);
mp_obj_t mp_obj_new_exception_arg1(const mp_obj_type_t *exc_type, mp_obj_t arg);
mp_obj_t mp_obj_new_exception_args(const mp_obj_type_t *exc_type, size_t n_args, const mp_obj_t *args);
mp_obj_t mp_obj_new_exception_msg(const mp_obj_type_t *exc_type, const char *msg);
mp_obj_t mp_obj_new_exception_msg_varg(const mp_obj_type_t *exc_type, const char *fmt, ...);
mp_obj_t mp_obj_new_fun_bc(mp_obj_t def_args, mp_obj_t def_kw_args, const byte *code, const mp_uint_t *const_table);
mp_obj_t mp_obj_new_fun_native(mp_obj_t def_args_in, mp_obj_t def_kw_args, const void *fun_data, const mp_uint_t *const_table);
mp_obj_t mp_obj_new_fun_viper(size_t n_args, void *fun_data, mp_uint_t type_sig);
mp_obj_t mp_obj_new_fun_asm(size_t n_args, void *fun_data, mp_uint_t type_sig);
mp_obj_t mp_obj_new_gen_wrap(mp_obj_t fun);
mp_obj_t mp_obj_new_closure(mp_obj_t fun, size_t n_closed, const mp_obj_t *closed);
mp_obj_t mp_obj_new_tuple(size_t n, const mp_obj_t *items);
mp_obj_t mp_obj_new_list(size_t n, mp_obj_t *items);
mp_obj_t mp_obj_new_dict(size_t n_args);
mp_obj_t mp_obj_new_set(size_t n_args, mp_obj_t *items);
mp_obj_t mp_obj_new_slice(mp_obj_t start, mp_obj_t stop, mp_obj_t step);
mp_obj_t mp_obj_new_bound_meth(mp_obj_t meth, mp_obj_t self);
mp_obj_t mp_obj_new_getitem_iter(mp_obj_t *args, mp_obj_iter_buf_t *iter_buf);
mp_obj_t mp_obj_new_module(qstr module_name);
mp_obj_t mp_obj_new_memoryview(byte typecode, size_t nitems, void *items);

mp_obj_type_t *mp_obj_get_type(mp_const_obj_t o_in);
const char *mp_obj_get_type_str(mp_const_obj_t o_in);
_Bool mp_obj_is_subclass_fast(mp_const_obj_t object, mp_const_obj_t classinfo);
mp_obj_t mp_instance_cast_to_native_base(mp_const_obj_t self_in, mp_const_obj_t native_type);

void mp_obj_print_helper(const mp_print_t *print, mp_obj_t o_in, mp_print_kind_t kind);
void mp_obj_print(mp_obj_t o, mp_print_kind_t kind);
void mp_obj_print_exception(const mp_print_t *print, mp_obj_t exc);

_Bool mp_obj_is_true(mp_obj_t arg);
_Bool mp_obj_is_callable(mp_obj_t o_in);
_Bool mp_obj_equal(mp_obj_t o1, mp_obj_t o2);

static inline _Bool mp_obj_is_integer(mp_const_obj_t o) { return (MP_OBJ_IS_SMALL_INT(o) || (MP_OBJ_IS_OBJ(o) && (((mp_obj_base_t*)((void*)o))->type == (&mp_type_int)))) || (MP_OBJ_IS_OBJ(o) && (((mp_obj_base_t*)((void*)o))->type == (&mp_type_bool))); }
mp_int_t mp_obj_get_int(mp_const_obj_t arg);
mp_int_t mp_obj_get_int_truncated(mp_const_obj_t arg);
_Bool mp_obj_get_int_maybe(mp_const_obj_t arg, mp_int_t *value);






void mp_obj_get_array(mp_obj_t o, size_t *len, mp_obj_t **items);
void mp_obj_get_array_fixed_n(mp_obj_t o, size_t len, mp_obj_t **items);
size_t mp_get_index(const mp_obj_type_t *type, size_t len, mp_obj_t index, _Bool is_slice);
mp_obj_t mp_obj_id(mp_obj_t o_in);
mp_obj_t mp_obj_len(mp_obj_t o_in);
mp_obj_t mp_obj_len_maybe(mp_obj_t o_in);
mp_obj_t mp_obj_subscr(mp_obj_t base, mp_obj_t index, mp_obj_t val);
mp_obj_t mp_generic_unary_op(mp_unary_op_t op, mp_obj_t o_in);


mp_obj_t mp_obj_cell_get(mp_obj_t self_in);
void mp_obj_cell_set(mp_obj_t self_in, mp_obj_t obj);



mp_int_t mp_obj_int_get_truncated(mp_const_obj_t self_in);

mp_int_t mp_obj_int_get_checked(mp_const_obj_t self_in);



_Bool mp_obj_is_exception_type(mp_obj_t self_in);
_Bool mp_obj_is_exception_instance(mp_obj_t self_in);
_Bool mp_obj_exception_match(mp_obj_t exc, mp_const_obj_t exc_type);
void mp_obj_exception_clear_traceback(mp_obj_t self_in);
void mp_obj_exception_add_traceback(mp_obj_t self_in, qstr file, size_t line, qstr block);
void mp_obj_exception_get_traceback(mp_obj_t self_in, size_t *n, size_t **values);
mp_obj_t mp_obj_exception_get_value(mp_obj_t self_in);
mp_obj_t mp_obj_exception_make_new(const mp_obj_type_t *type_in, size_t n_args, size_t n_kw, const mp_obj_t *args);
mp_obj_t mp_alloc_emergency_exception_buf(mp_obj_t size_in);
void mp_init_emergency_exception_buf(void);


_Bool mp_obj_str_equal(mp_obj_t s1, mp_obj_t s2);
qstr mp_obj_str_get_qstr(mp_obj_t self_in);
const char *mp_obj_str_get_str(mp_obj_t self_in);
const char *mp_obj_str_get_data(mp_obj_t self_in, size_t *len);
mp_obj_t mp_obj_str_intern(mp_obj_t str);
mp_obj_t mp_obj_str_intern_checked(mp_obj_t obj);
void mp_str_print_quoted(const mp_print_t *print, const byte *str_data, size_t str_len, _Bool is_bytes);
# 747 "../../py/obj.h"
void mp_obj_tuple_get(mp_obj_t self_in, size_t *len, mp_obj_t **items);
void mp_obj_tuple_del(mp_obj_t self_in);
mp_int_t mp_obj_tuple_hash(mp_obj_t self_in);


mp_obj_t mp_obj_list_append(mp_obj_t self_in, mp_obj_t arg);
mp_obj_t mp_obj_list_remove(mp_obj_t self_in, mp_obj_t value);
void mp_obj_list_get(mp_obj_t self_in, size_t *len, mp_obj_t **items);
void mp_obj_list_set_len(mp_obj_t self_in, size_t len);
void mp_obj_list_store(mp_obj_t self_in, mp_obj_t index, mp_obj_t value);
mp_obj_t mp_obj_list_sort(size_t n_args, const mp_obj_t *args, mp_map_t *kwargs);


typedef struct _mp_obj_dict_t {
    mp_obj_base_t base;
    mp_map_t map;
} mp_obj_dict_t;
void mp_obj_dict_init(mp_obj_dict_t *dict, size_t n_args);
size_t mp_obj_dict_len(mp_obj_t self_in);
mp_obj_t mp_obj_dict_get(mp_obj_t self_in, mp_obj_t index);
mp_obj_t mp_obj_dict_store(mp_obj_t self_in, mp_obj_t key, mp_obj_t value);
mp_obj_t mp_obj_dict_delete(mp_obj_t self_in, mp_obj_t key);
static inline mp_map_t *mp_obj_dict_get_map(mp_obj_t dict) {
    return &((mp_obj_dict_t*)((void*)dict))->map;
}


void mp_obj_set_store(mp_obj_t self_in, mp_obj_t item);


void mp_obj_slice_get(mp_obj_t self_in, mp_obj_t *start, mp_obj_t *stop, mp_obj_t *step);



typedef struct _mp_obj_fun_builtin_fixed_t {
    mp_obj_base_t base;
    union {
        mp_fun_0_t _0;
        mp_fun_1_t _1;
        mp_fun_2_t _2;
        mp_fun_3_t _3;
    } fun;
} mp_obj_fun_builtin_fixed_t;

typedef struct _mp_obj_fun_builtin_var_t {
    mp_obj_base_t base;
    __uint32_t sig;
    union {
        mp_fun_var_t var;
        mp_fun_kw_t kw;
    } fun;
} mp_obj_fun_builtin_var_t;

qstr mp_obj_fun_get_name(mp_const_obj_t fun);
qstr mp_obj_code_get_name(const byte *code_info);

mp_obj_t mp_identity(mp_obj_t self);
extern const mp_obj_fun_builtin_fixed_t mp_identity_obj;
mp_obj_t mp_identity_getiter(mp_obj_t self, mp_obj_iter_buf_t *iter_buf);


typedef struct _mp_obj_module_t {
    mp_obj_base_t base;
    mp_obj_dict_t *globals;
} mp_obj_module_t;
static inline mp_obj_dict_t *mp_obj_module_get_globals(mp_obj_t module) {
    return ((mp_obj_module_t*)((void*)module))->globals;
}

_Bool mp_obj_is_package(mp_obj_t module);



typedef struct _mp_obj_static_class_method_t {
    mp_obj_base_t base;
    mp_obj_t fun;
} mp_obj_static_class_method_t;
typedef struct _mp_rom_obj_static_class_method_t {
    mp_obj_base_t base;
    mp_rom_obj_t fun;
} mp_rom_obj_static_class_method_t;


const mp_obj_t *mp_obj_property_get(mp_obj_t self_in);




typedef struct {
    mp_uint_t start;
    mp_uint_t stop;
    mp_int_t step;
} mp_bound_slice_t;

void mp_seq_multiply(const void *items, size_t item_sz, size_t len, size_t times, void *dest);





_Bool mp_seq_cmp_bytes(mp_uint_t op, const byte *data1, size_t len1, const byte *data2, size_t len2);
_Bool mp_seq_cmp_objs(mp_uint_t op, const mp_obj_t *items1, size_t len1, const mp_obj_t *items2, size_t len2);
mp_obj_t mp_seq_index_obj(const mp_obj_t *items, size_t len, size_t n_args, const mp_obj_t *args);
mp_obj_t mp_seq_count_obj(const mp_obj_t *items, size_t len, mp_obj_t value);
mp_obj_t mp_seq_extract_slice(size_t len, const mp_obj_t *seq, mp_bound_slice_t *indexes);
# 30 "../../py/reader.h" 2






typedef struct _mp_reader_t {
    void *data;
    mp_uint_t (*readbyte)(void *data);
    void (*close)(void *data);
} mp_reader_t;

void mp_reader_new_mem(mp_reader_t *reader, const byte *buf, size_t len, size_t free_len);
void mp_reader_new_file(mp_reader_t *reader, const char *filename);
void mp_reader_new_file_from_fd(mp_reader_t *reader, int fd, _Bool close_fd);
# 34 "../../py/lexer.h" 2







typedef enum _mp_token_kind_t {
    MP_TOKEN_END,

    MP_TOKEN_INVALID,
    MP_TOKEN_DEDENT_MISMATCH,
    MP_TOKEN_LONELY_STRING_OPEN,

    MP_TOKEN_NEWLINE,
    MP_TOKEN_INDENT,
    MP_TOKEN_DEDENT,

    MP_TOKEN_NAME,
    MP_TOKEN_INTEGER,
    MP_TOKEN_FLOAT_OR_IMAG,
    MP_TOKEN_STRING,
    MP_TOKEN_BYTES,

    MP_TOKEN_ELLIPSIS,

    MP_TOKEN_KW_FALSE,
    MP_TOKEN_KW_NONE,
    MP_TOKEN_KW_TRUE,
    MP_TOKEN_KW___DEBUG__,
    MP_TOKEN_KW_AND,
    MP_TOKEN_KW_AS,
    MP_TOKEN_KW_ASSERT,




    MP_TOKEN_KW_BREAK,
    MP_TOKEN_KW_CLASS,
    MP_TOKEN_KW_CONTINUE,
    MP_TOKEN_KW_DEF,
    MP_TOKEN_KW_DEL,
    MP_TOKEN_KW_ELIF,
    MP_TOKEN_KW_ELSE,
    MP_TOKEN_KW_EXCEPT,
    MP_TOKEN_KW_FINALLY,
    MP_TOKEN_KW_FOR,
    MP_TOKEN_KW_FROM,
    MP_TOKEN_KW_GLOBAL,
    MP_TOKEN_KW_IF,
    MP_TOKEN_KW_IMPORT,
    MP_TOKEN_KW_IN,
    MP_TOKEN_KW_IS,
    MP_TOKEN_KW_LAMBDA,
    MP_TOKEN_KW_NONLOCAL,
    MP_TOKEN_KW_NOT,
    MP_TOKEN_KW_OR,
    MP_TOKEN_KW_PASS,
    MP_TOKEN_KW_RAISE,
    MP_TOKEN_KW_RETURN,
    MP_TOKEN_KW_TRY,
    MP_TOKEN_KW_WHILE,
    MP_TOKEN_KW_WITH,
    MP_TOKEN_KW_YIELD,

    MP_TOKEN_OP_PLUS,
    MP_TOKEN_OP_MINUS,
    MP_TOKEN_OP_STAR,
    MP_TOKEN_OP_DBL_STAR,
    MP_TOKEN_OP_SLASH,
    MP_TOKEN_OP_DBL_SLASH,
    MP_TOKEN_OP_PERCENT,
    MP_TOKEN_OP_LESS,
    MP_TOKEN_OP_DBL_LESS,
    MP_TOKEN_OP_MORE,
    MP_TOKEN_OP_DBL_MORE,
    MP_TOKEN_OP_AMPERSAND,
    MP_TOKEN_OP_PIPE,
    MP_TOKEN_OP_CARET,
    MP_TOKEN_OP_TILDE,
    MP_TOKEN_OP_LESS_EQUAL,
    MP_TOKEN_OP_MORE_EQUAL,
    MP_TOKEN_OP_DBL_EQUAL,
    MP_TOKEN_OP_NOT_EQUAL,

    MP_TOKEN_DEL_PAREN_OPEN,
    MP_TOKEN_DEL_PAREN_CLOSE,
    MP_TOKEN_DEL_BRACKET_OPEN,
    MP_TOKEN_DEL_BRACKET_CLOSE,
    MP_TOKEN_DEL_BRACE_OPEN,
    MP_TOKEN_DEL_BRACE_CLOSE,
    MP_TOKEN_DEL_COMMA,
    MP_TOKEN_DEL_COLON,
    MP_TOKEN_DEL_PERIOD,
    MP_TOKEN_DEL_SEMICOLON,
    MP_TOKEN_DEL_AT,
    MP_TOKEN_DEL_EQUAL,
    MP_TOKEN_DEL_PLUS_EQUAL,
    MP_TOKEN_DEL_MINUS_EQUAL,
    MP_TOKEN_DEL_STAR_EQUAL,
    MP_TOKEN_DEL_SLASH_EQUAL,
    MP_TOKEN_DEL_DBL_SLASH_EQUAL,
    MP_TOKEN_DEL_PERCENT_EQUAL,
    MP_TOKEN_DEL_AMPERSAND_EQUAL,
    MP_TOKEN_DEL_PIPE_EQUAL,
    MP_TOKEN_DEL_CARET_EQUAL,
    MP_TOKEN_DEL_DBL_MORE_EQUAL,
    MP_TOKEN_DEL_DBL_LESS_EQUAL,
    MP_TOKEN_DEL_DBL_STAR_EQUAL,
    MP_TOKEN_DEL_MINUS_MORE,
} mp_token_kind_t;



typedef struct _mp_lexer_t {
    qstr source_name;
    mp_reader_t reader;

    unichar chr0, chr1, chr2;

    size_t line;
    size_t column;

    mp_int_t emit_dent;
    mp_int_t nested_bracket_level;

    size_t alloc_indent_level;
    size_t num_indent_level;
    __uint16_t *indent_level;

    size_t tok_line;
    size_t tok_column;
    mp_token_kind_t tok_kind;
    vstr_t vstr;
} mp_lexer_t;

mp_lexer_t *mp_lexer_new(qstr src_name, mp_reader_t reader);
mp_lexer_t *mp_lexer_new_from_str_len(qstr src_name, const char *str, size_t len, size_t free_len);

void mp_lexer_free(mp_lexer_t *lex);
void mp_lexer_to_next(mp_lexer_t *lex);







typedef enum {
    MP_IMPORT_STAT_NO_EXIST,
    MP_IMPORT_STAT_DIR,
    MP_IMPORT_STAT_FILE,
} mp_import_stat_t;

mp_import_stat_t mp_import_stat(const char *path);
mp_lexer_t *mp_lexer_new_from_file(const char *filename);
# 37 "../../py/compile.h" 2
# 1 "../../py/parse.h" 1
# 34 "../../py/parse.h"
struct _mp_lexer_t;
# 52 "../../py/parse.h"
typedef __uintptr_t mp_parse_node_t;

typedef struct _mp_parse_node_struct_t {
    __uint32_t source_line;
    __uint32_t kind_num_nodes;
    mp_parse_node_t nodes[];
} mp_parse_node_struct_t;
# 79 "../../py/parse.h"
static inline mp_parse_node_t mp_parse_node_new_small_int(mp_int_t val) {
    return (mp_parse_node_t)((0x1) | ((mp_uint_t)val << 1));
}
static inline mp_parse_node_t mp_parse_node_new_leaf(size_t kind, mp_int_t arg) {
    return (mp_parse_node_t)(kind | ((mp_uint_t)arg << 4));
}
_Bool mp_parse_node_is_const_false(mp_parse_node_t pn);
_Bool mp_parse_node_is_const_true(mp_parse_node_t pn);
_Bool mp_parse_node_get_int_maybe(mp_parse_node_t pn, mp_obj_t *o);
int mp_parse_node_extract_list(mp_parse_node_t *pn, size_t pn_kind, mp_parse_node_t **nodes);
void mp_parse_node_print(mp_parse_node_t pn, size_t indent);

typedef enum {
    MP_PARSE_SINGLE_INPUT,
    MP_PARSE_FILE_INPUT,
    MP_PARSE_EVAL_INPUT,
} mp_parse_input_kind_t;

typedef struct _mp_parse_t {
    mp_parse_node_t root;
    struct _mp_parse_chunk_t *chunk;
} mp_parse_tree_t;



mp_parse_tree_t mp_parse(struct _mp_lexer_t *lex, mp_parse_input_kind_t input_kind);
void mp_parse_tree_clear(mp_parse_tree_t *tree);
# 38 "../../py/compile.h" 2
# 1 "../../py/emitglue.h" 1
# 34 "../../py/emitglue.h"
enum {
    MP_EMIT_OPT_NONE,
    MP_EMIT_OPT_BYTECODE,
    MP_EMIT_OPT_NATIVE_PYTHON,
    MP_EMIT_OPT_VIPER,
    MP_EMIT_OPT_ASM,
};

typedef enum {
    MP_CODE_UNUSED,
    MP_CODE_RESERVED,
    MP_CODE_BYTECODE,
    MP_CODE_NATIVE_PY,
    MP_CODE_NATIVE_VIPER,
    MP_CODE_NATIVE_ASM,
} mp_raw_code_kind_t;

typedef struct _mp_raw_code_t {
    mp_uint_t kind : 3;
    mp_uint_t scope_flags : 7;
    mp_uint_t n_pos_args : 11;
    union {
        struct {
            const byte *bytecode;
            const mp_uint_t *const_table;





        } u_byte;
        struct {
            void *fun_data;
            const mp_uint_t *const_table;
            mp_uint_t type_sig;
        } u_native;
    } data;
} mp_raw_code_t;

mp_raw_code_t *mp_emit_glue_new_raw_code(void);

void mp_emit_glue_assign_bytecode(mp_raw_code_t *rc, const byte *code,



    const mp_uint_t *const_table,



    mp_uint_t scope_flags);
void mp_emit_glue_assign_native(mp_raw_code_t *rc, mp_raw_code_kind_t kind, void *fun_data, mp_uint_t fun_len, const mp_uint_t *const_table, mp_uint_t n_pos_args, mp_uint_t scope_flags, mp_uint_t type_sig);

mp_obj_t mp_make_function_from_raw_code(const mp_raw_code_t *rc, mp_obj_t def_args, mp_obj_t def_kw_args);
mp_obj_t mp_make_closure_from_raw_code(const mp_raw_code_t *rc, mp_uint_t n_closed_over, const mp_obj_t *args);
# 39 "../../py/compile.h" 2



mp_obj_t mp_compile(mp_parse_tree_t *parse_tree, qstr source_file, c_uint emit_opt, _Bool is_repl);







mp_obj_t mp_parse_compile_execute(mp_lexer_t *lex, mp_parse_input_kind_t parse_input_kind, mp_obj_dict_t *globals, mp_obj_dict_t *locals);
# 6 "badgemain.c" 2


# 1 "USB/usb_config.h" 1
# 9 "badgemain.c" 2
extern char USB_In_Buffer[];
extern char USB_Out_Buffer[];

extern unsigned char G_red_pwm, G_green_pwm, G_blue_pwm;

extern unsigned char G_contrast1;

volatile unsigned char getUSBSuspendControl();
volatile unsigned char USBDeviceStateDETACHED();
volatile unsigned char USBDeviceStateATTACHED();
volatile unsigned char USBDeviceStatePOWERED();
volatile unsigned char USBDeviceStateDEFAULT();
volatile unsigned char USBDeviceStateADDRESS();
volatile unsigned char USBDeviceStateCONFIGURED();
# 33 "badgemain.c"
unsigned int USBbufferSizeIn();
unsigned int USBbufferSizeOut();
volatile int mchipUSBnotReady();
volatile unsigned char USBtransferReady();

unsigned char NextUSBOut=0;

void UserInit(void)
{
    CFGCONbits.JTAGEN = 0;


    TRISCbits.TRISC0 = 0;
    LATCbits.LATC0 = 0;
    CNPDCbits.CNPDC0 = 0;


    TRISCbits.TRISC1 = 0;
    LATCbits.LATC1 = 0;
    CNPDCbits.CNPDC1 = 0;

    TRISBbits.TRISB3 = 0;
    LATBbits.LATB3 = 0;
    CNPDBbits.CNPDB3 = 0;

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
    LATCbits.LATC0 = 1;

    LCDReset();
    LATCbits.LATC1 = 1;

    mp_init();

    FbInit();
    FbClear();


    LATBbits.LATB3 = 1;
    LATCbits.LATC9 = 1;



    TRISCbits.TRISC3 = 1;
    CNPUCbits.CNPUC3 = 1;


    LATCbits.LATC0 = 0;
    LATCbits.LATC1 = 0;
    LATBbits.LATB3 = 0;

    timerInit();






}

void LCDprint(char *str,int len) {
   FbWriteString(str, len);
}





static unsigned char lineOutBuffer[64], lineOutBufPtr=0;



void echoUSB(char *str,int len) {
   int i;


   if ((lineOutBufPtr + len) > 64) return;

   for (i=0; i<len; i++) {
 if (str[i] == '\n')
    lineOutBuffer[lineOutBufPtr++] = '\r';

 lineOutBuffer[lineOutBufPtr++] = str[i];
   }
   lineOutBuffer[lineOutBufPtr] = 0;
}


static unsigned char debugBlink=1;

void ProcessIO(void)
{
    unsigned char nread=0;
    static unsigned char writeLOCK=0;
    static unsigned char textBuffer[128], textBufPtr=0;
    static int doMicroPython = 0;
    int i;





    if (mchipUSBnotReady()) return;

    if (writeLOCK == 0) {
 nread = getsUSBUSART(USB_In_Buffer, 64 -1);
    }

    if(nread > 0) {
# 166 "badgemain.c"
 if ((USB_In_Buffer[0] == '-') || (USB_In_Buffer[0] == '+')) {

    if (USB_In_Buffer[0] == '-') G_contrast1 -= 4;
    if (USB_In_Buffer[0] == '+') G_contrast1 += 4;

    LCDReset();

    USB_In_Buffer[0] = 0;
 }

 if (USB_In_Buffer[0] != 0) {
    int i, outp=0;

    for (i=0; i < nread; i++) {
  if ((USB_In_Buffer[i] == '') | (USB_In_Buffer[i] == '')) {
     if (textBufPtr > 0) textBufPtr--;

     USB_Out_Buffer[outp++] = '';
     USB_Out_Buffer[outp++] = ' ';
     USB_Out_Buffer[outp++] = '';
  }
  else {
     textBuffer[textBufPtr++] = USB_In_Buffer[i];
     textBuffer[textBufPtr] = 0;

     if ((USB_In_Buffer[i] == 10) | (USB_In_Buffer[i] == 13)) {
   USB_Out_Buffer[outp++] = 10;
   USB_Out_Buffer[outp++] = 13;

   doMicroPython = 1;
   continue;
     }
     else
        USB_Out_Buffer[outp++] = USB_In_Buffer[i];
  }
    }

    USB_Out_Buffer[outp] = 0;
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


 if (lineOutBufPtr != 0) {
    strncpy(USB_Out_Buffer, lineOutBuffer, lineOutBufPtr);
    USB_Out_Buffer[lineOutBufPtr] = 0;
    lineOutBufPtr = 0;
 }

 nextWrite = strlen(USB_Out_Buffer);
 if (nextWrite != 0) {
    putUSBUSART(USB_Out_Buffer, nextWrite);
    writeLOCK = 1;
 }
    }


    if (doMicroPython) {
 static unsigned char mp_buffer[128];

 strncpy(mp_buffer, textBuffer, textBufPtr+1);

 do_str(mp_buffer, MP_PARSE_FILE_INPUT);
 textBufPtr = 0;

 doMicroPython = 0;
    }
# 254 "badgemain.c"
    CDCTxService();
}
# 277 "badgemain.c"
void BlinkUSBStatus(void)
{
    static int led_count=0;

    if(led_count == 0) led_count = 100000U;
    led_count--;






    if(getUSBSuspendControl() == 1) {
        if(led_count==0) {
            LATCbits.LATC0 = 1;;
            LATCbits.LATC1 = 1;;
        }
    }
    else {
 if (USBDeviceStateDETACHED())
        {
            {LATCbits.LATC0 = 0;;LATCbits.LATC1 = 0;;};
        }
        else if (USBDeviceStateATTACHED())
        {
            {LATCbits.LATC0 = 1;;LATCbits.LATC1 = 1;;};
        }
        else if (USBDeviceStatePOWERED())
        {
            {LATCbits.LATC0 = 1;;LATCbits.LATC1 = 0;;};
        }
        else if (USBDeviceStateDEFAULT())
        {
            {LATCbits.LATC0 = 0;;LATCbits.LATC1 = 1;;};
        }
        else if (USBDeviceStateADDRESS())
        {
            if(led_count == 0) {
                LATCbits.LATC0 = !LATCbits.LATC0;;
                LATCbits.LATC1 = 0;;
            }
        }
        else if (USBDeviceStateCONFIGURED()) {
            if(debugBlink && (led_count==0)) {
                if (LATCbits.LATC0) {
   LATCbits.LATC0 = 0;;
  }
  else {
   LATCbits.LATC0 = 1;;
  }

                if (LATCbits.LATC1) {
   LATCbits.LATC1 = 0;;
  }
  else {
   LATCbits.LATC1 = 1;;
  }

                if (LATBbits.LATB3) {
   LATBbits.LATB3 = 0;;
  }
  else {
   LATBbits.LATB3 = 1;;
  }
            }
        }
    }
}
