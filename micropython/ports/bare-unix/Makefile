include ../../py/mkenv.mk

# qstr definitions (must come before including py.mk)
QSTR_DEFS = qstrdefsport.h

# include py core make definitions
include $(TOP)/py/py.mk

CROSS_COMPILE = 

INC += -I.
INC += -I$(TOP)
INC += -I$(BUILD)

CFLAGS_CORTEX_M4 = 
#CFLAGS = $(INC) -m32 -Wall -Werror -std=c99 -nostdlib $(CFLAGS_CORTEX_M4) $(COPT)
#CFLAGS = -m32 -D__USE_MISC $(INC) -Wall -std=c99 $(COPT)
CFLAGS = -m32 $(INC) -std=c99 $(COPT)


#Debugging/Optimization
ifeq ($(DEBUG), 1)
CFLAGS += -O0 -ggdb
else
CFLAGS += -g -DNDEBUG
endif
#CFLAGS += -Os -DNDEBUG

#LDFLAGS = -g -Map=$@.map --cref -nostdlib 
LDFLAGS = -m32 -Wl,-Map=$@.map,--cref
LIBS = 

SRC_C = \
	main.c \
	umm_info.c \
	umm_integrity.c \
	umm_malloc.c \
	umm_poison.c \
	string0.c

SRC_S = \
#	startup_stm32f40xx.s \
	gchelper.s \

OBJ = $(PY_CORE_O) $(addprefix $(BUILD)/, $(SRC_C:.c=.o) $(SRC_S:.s=.o))

all: $(BUILD)/firmware.elf

$(BUILD)/firmware.elf: $(OBJ)
	$(ECHO) "LINK $@"
	$(Q)$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)
	$(Q)$(SIZE) $@

include $(TOP)/py/mkrules.mk
