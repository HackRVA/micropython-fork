include ../../py/mkenv.mk

# qstr definitions (must come before including py.mk)
QSTR_DEFS = qstrdefsport.h

# include py core make definitions
include $(TOP)/py/py.mk

CROSS_COMPILE = /opt/microchip/xc32/v1.34/bin/xc32-

MP_PROCESSOR_OPTION = 32MX270F256D

INC += -I.
INC += -I./include
INC += -I./USB
INC += -I$(TOP)
INC += -I$(BUILD)
#INC += -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -fno-schedule-insns -DPIC32MX460F512L_PIM  -D__XC
INC += -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -fno-schedule-insns -DPIC32MX460F512L_PIM -D_XC -D__XC -mno-float
#INC += -I/opt/microchip/xc32/v1.34/pic32-libs/include/lega-c
#INC += -I/opt/microchip/xc32/v1.34/pic32-libs/include/sys

# assembler nop's after instructions
#INC += -fno-schedule-insns 



# ********************
# py stuff: std=c99 BUT doesn't work with plib 
#CFLAGS = $(INC) -std=c99 -x c -c -mprocessor=32MX270F256D -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM
CFLAGS = $(INC) -std=c99 -x c -c -mprocessor=32MX270F256D -Os
# ********************

# ********************
# for plib
BADGE_CFLAGS = $(INC) -x c -c -mprocessor=32MX270F256D -Os
# ********************


#LIBS = /opt/microchip/xc32/v1.34/pic32mx/lib/libmchp_peripheral_32MX270F256D.a \
#	/home/paul/microchip/harmony/v1_09/bin/framework/peripheral/PIC32MX270F256D_peripherals.a \
#	/home/paul/microchip/harmony/v1_09/build/framework/peripheral/mplab_pic32.X/dist/default/production/mplab_pic32.X.a

#LIBS = /opt/microchip/xc32/v1.34/pic32mx/lib/libmchp_peripheral_32MX270F256D.a
LIBS = /opt/microchip/xc32/v1.34/pic32mx/lib/no-float/libmchp_peripheral_32MX270F256D.a

SRC_S = 

# not bootloader
#SRC_BADGE_C += pic32config.c
#LDFLAGS = -Wl,--defsym=_min_heap_size=0x100,--defsym=_min_stack_size=0x800,--gc-sections,-Map="mymap.map",--report-mem,--cref,-T,p32MX270F256D.ld

# bootloader
LDFLAGS = -Wl,--defsym=_min_heap_size=0x100,--defsym=_min_stack_size=0x400,--gc-sections,-Map="mymap.map",--report-mem,--cref,-T,app_32MX270F256D.ld -mno-float -Os


SRC_BADGE_C += mp_main.c pybadge.c LCDcolor.c S6B33.c \
	badgemain.c fb.c microchip.c assets.c assetList.c \
	usb_descriptors.c ir.c timer1_int.c


SRC_USB_C = USB/usb_device.c  USB/usb_function_cdc.c


OBJ = $(PY_CORE_O) $(addprefix $(BUILD)/, $(SRC_C:.c=.o) $(SRC_S:.s=.o))

BDGOBJ = $(addprefix $(BUILD)/, $(SRC_BADGE_C:.c=.o) $(SRC_BADGE_S:.s=.o))

USBOBJ = $(addprefix $(BUILD)/, $(SRC_USB_C:.c=.o) $(SRC_USB_S:.s=.o))

all: $(BUILD)/firmware.elf $(BUILD)/firmware.hex

$(BDGOBJ): $(SRC_BADGE_C)
	$(CROSS_COMPILE)gcc $(BADGE_CFLAGS) -o $@ $(subst .o,.c,$(notdir $@))

$(USBOBJ): $(SRC_USB_C)
	mkdir -p $(BUILD)/USB
	$(CROSS_COMPILE)gcc $(BADGE_CFLAGS) -o $@ USB/$(subst .o,.c,$(notdir $@))

$(BUILD)/firmware.elf:  $(OBJ) $(BDGOBJ) $(USBOBJ) 
	$(ECHO) "LINK $@"
	$(Q)$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)
	$(Q)$(SIZE) $@


$(BUILD)/firmware.hex: $(BUILD)/firmware.elf
	$(CROSS_COMPILE)objdump -D $(BUILD)/firmware.elf > $(BUILD)/firmware.elf.s
	/opt/microchip/xc32/v1.34/bin/xc32-bin2hex $(BUILD)/firmware.elf

#	/opt/microchip/xc32/v1.34/bin/xc32-strip $(BUILD)/firmware.elf

include $(TOP)/py/mkrules.mk
