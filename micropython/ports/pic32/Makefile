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
#INC += -I/opt/microchip/xc32/v1.34/pic32-libs/include/lega-c
#INC += -I/opt/microchip/xc32/v1.34/pic32-libs/include/sys
INC += -D_SUPPRESS_PLIB_WARNING -D_DISABLE_OPENADC10_CONFIGPORT_WARNING -fno-schedule-insns -DPIC32MX460F512L_PIM 


# ********************
# NEEDED FOR unistd.h but NOT FOR PLIB
#INC += -I/opt/microchip/xc32/v1.34/pic32mx/include/lega-c
# ********************

#CFLAGS_PIC32 = -DNDEBUG -D__BYTE_ORDER=__LITTLE_ENDIAN
#CFLAGS_PIC32 = -DNDEBUG -DPIC32 -DPIC32MX460F512L_PIM
#CFLAGS_PIC32 = -DNDEBUG -DPIC32
#CFLAGS = $(INC) -O2 -Wall -std=c99 $(CFLAGS_PIC32) $(COPT)

#CFLAGS = $(INC) -std=c99 -x c -c -mprocessor=32MX270F256D -mno-float -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM 

# std=c99 needs for py stuff BUT doesn't work with plib 

# ********************
# for py
#CFLAGS = $(INC) -std=c99 -x c -c -mprocessor=32MX270F256D -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM 
# ********************

# ********************
# for plib
CFLAGS = $(INC)  -x c -c -mprocessor=32MX270F256D -O1 -save-temps=obj -w -G0 -rs
# ********************

#CFLAGS = $(INC) -x c -c -mprocessor=32MX270F256D -O1 -fno-schedule-insns -DPIC32MX460F512L_PIM 
#CFLAGS = $(INC)  -DPIC32 -x c -c -mprocessor=32MX270F256D -O1 -DPIC32MX460F512L_PIM  -save-temps=obj -w -G0 -rs


LDDIR = /opt/microchip/xc32/v1.34/pic32mx/lib/proc/32MX270F256D

#LIBS = $(LDDIR)/crt0_mips32r2.o /opt/microchip/xc32/v1.34/pic32mx/lib/liblega-c.a
LIBS = /opt/microchip/xc32/v1.34/pic32mx/lib/libmchp_peripheral_32MX270F256D.a

#LDFLAGS = --noinhibit-exec -T p32MX270F256D.ld -Map=$@.map --cref
#LDFLAGS = _min_heap_size -Map=$@.map --cref
#LDFLAGS = --defsym=_min_heap_size=28K --defsym=_min_stack_size=0x400 --gc-sections -Map="mymap.map" --report-mem --cref -s -T p32MX270F256D.ld
LDFLAGS = -Wl,--defsym=_min_heap_size=25k,--defsym=_min_stack_size=0x400,--gc-sections,-Map="mymap.map",--report-mem,--cref,-T,p32MX270F256D.ld

SRC_C = main.c pybadge.c pic32config.c LCDcolor.c S6B33.c badgemain.c fb.c microchip.c assets.c assetList.c badge.c USB/usb_device.c  USB/usb_function_cdc.c usb_descriptors.c
#SRC_C = main.c pic32config.c badge.c


SRC_S = 

OBJ = $(PY_CORE_O) $(addprefix $(BUILD)/, $(SRC_C:.c=.o) $(SRC_S:.s=.o))


all: $(BUILD)/firmware.elf $(BUILD)/firmware.hex

#$(BUILD)/badge.o:
#	$(CROSS_COMPILE)gcc $(INC) -c -o $(BUILD)/badge.o badge.c

$(BUILD)/firmware.elf: $(OBJ)
	$(ECHO) "LINK $@"
	$(Q)$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)
	$(Q)$(SIZE) $@

#	$(Q)$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

$(BUILD)/firmware.hex: $(BUILD)/firmware.elf
	$(CROSS_COMPILE)objdump -D $(BUILD)/firmware.elf > $(BUILD)/firmware.elf.s
	/opt/microchip/xc32/v1.34/bin/xc32-bin2hex $(BUILD)/firmware.elf

#	/opt/microchip/xc32/v1.34/bin/xc32-strip $(BUILD)/firmware.elf
#	$(CROSS_COMPILE)objdump -tr -D $(LDDIR)/crt0_mips32r2.o > $(BUILD)/crt0_mips32r2.s

include $(TOP)/py/mkrules.mk
