include ../../py/mkenv.mk

# qstr definitions (must come before including py.mk)
QSTR_DEFS = qstrdefsport.h

# include py core make definitions
include $(TOP)/py/py.mk

CROSS_COMPILE = ~/dockershare/gcc-arm-none-eabi-7-2018-q2-update/bin/arm-none-eabi-

INC += -I.
INC += -I$(TOP)
INC += -I$(BUILD)

CFLAGS_CORTEX_M4 = -mthumb -mtune=cortex-m4 -mabi=aapcs-linux -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mfloat-abi=hard -fsingle-precision-constant -Wdouble-promotion
CFLAGS = $(INC) -Wall -Werror -std=c99 -nostdlib $(CFLAGS_CORTEX_M4) $(COPT)

#CFLAGS_CORTEX_M0 = -mthumb -mtune=cortex-m0 -mabi=aapcs-linux -mcpu=cortex-m0 -mfloat-abi=soft -fsingle-precision-constant -Wdouble-promotion
#CFLAGS = $(INC) -Wall -Werror -std=c99 $(CFLAGS_CORTEX_M0) $(COPT)


#Debugging/Optimization
ifeq ($(DEBUG), 1)
CFLAGS += -O0 -ggdb
else
CFLAGS += -Os -DNDEBUG
endif

LDFLAGS = -nostdlib -T stm32f405.ld -Map=$@.map --cref
LIBS = 

# m0
#LDFLAGS = -T stm32f103.ld -Map=$@.map --cref
#LIBS = /home/paul/dockershare/gcc-arm-none-eabi-7-2018-q2-update/lib/gcc/arm-none-eabi/7.3.1/libgcc.a

SRC_C = \
	main.c \
#	printf.c \
	string0.c \
	malloc0.c \
	gccollect.c \

SRC_S = \
#	startup_stm32f40xx.s \
	gchelper.s \

OBJ = $(PY_CORE_O) $(addprefix $(BUILD)/, $(SRC_C:.c=.o) $(SRC_S:.s=.o))

all: $(BUILD)/firmware.elf

$(BUILD)/firmware.elf: $(OBJ)
	$(ECHO) "LINK $@"
	$(Q)$(LD) $(LDFLAGS) -o $@ $^ $(LIBS)
	$(Q)$(SIZE) $@

include $(TOP)/py/mkrules.mk
