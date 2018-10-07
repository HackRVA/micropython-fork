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
INC += -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -fno-schedule-insns -DPIC32MX460F512L_PIM 
#INC += -I/opt/microchip/xc32/v1.34/pic32-libs/include/lega-c
#INC += -I/opt/microchip/xc32/v1.34/pic32-libs/include/sys



# ********************
# py stuff: std=c99 BUT doesn't work with plib 
CFLAGS = $(INC) -std=c99 -x c -c -mprocessor=32MX270F256D -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM 
# ********************

# ********************
# for plib
BADGE_CFLAGS = $(INC) -x c -c -mprocessor=32MX270F256D -O1 -save-temps=obj -w -G0 -rs
# ********************


LIBS = /opt/microchip/xc32/v1.34/pic32mx/lib/libmchp_peripheral_32MX270F256D.a
SRC_S = 

# not bootloader
LDFLAGS = -Wl,--defsym=_min_heap_size=25k,--defsym=_min_stack_size=0x400,--gc-sections,-Map="mymap.map",--report-mem,--cref,-T,p32MX270F256D.ld

# bootloader
#LDFLAGS = -Wl,--defsym=_min_heap_size=25k,--defsym=_min_stack_size=0x400,--gc-sections,-Map="mymap.map",--report-mem,--cref,-T,app_32MX270F256D.ld

# not bootloader
SRC_BADGE_C = mp_main.c pybadge.c pic32config.c LCDcolor.c S6B33.c \
	badgemain.c fb.c microchip.c assets.c assetList.c \
	badge.c usb_descriptors.c ir.c timer1_int.c

SRC_USB_C = USB/usb_device.c  USB/usb_function_cdc.c

#bootloader- no pic32config
#SRC_C = mp_main.c pybadge.c LCDcolor.c S6B33.c badgemain.c fb.c microchip.c assets.c assetList.c badge.c USB/usb_device.c  USB/usb_function_cdc.c usb_descriptors.c


OBJ = $(PY_CORE_O) $(addprefix $(BUILD)/, $(SRC_C:.c=.o) $(SRC_S:.s=.o))

BDGOBJ = $(addprefix $(BUILD)/, $(SRC_BADGE_C:.c=.o) $(SRC_BADGE_S:.s=.o))

USBOBJ = $(addprefix $(BUILD)/, $(SRC_USB_C:.c=.o) $(SRC_USB_S:.s=.o))

all: $(BUILD)/firmware.elf $(BUILD)/firmware.hex

$(BDGOBJ): $(SRC_BADGE_C)
	$(CROSS_COMPILE)gcc $(BADGE_CFLAGS) -o $@ $(subst .o,.c,$(notdir $@))

$(USBOBJ): $(SRC_USB_C)
	mkdir -p $(BUILD)/USB
	$(CROSS_COMPILE)gcc $(BADGE_CFLAGS) -o $@ USB/$(subst .o,.c,$(notdir $@))

$(BUILD)/firmware.elf: $(OBJ) $(BDGOBJ) $(USBOBJ)
	$(ECHO) "LINK $@"
	$(Q)$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)
	$(Q)$(SIZE) $@


$(BUILD)/firmware.hex: $(BUILD)/firmware.elf
	$(CROSS_COMPILE)objdump -D $(BUILD)/firmware.elf > $(BUILD)/firmware.elf.s
	/opt/microchip/xc32/v1.34/bin/xc32-bin2hex $(BUILD)/firmware.elf

#	/opt/microchip/xc32/v1.34/bin/xc32-strip $(BUILD)/firmware.elf

include $(TOP)/py/mkrules.mk
