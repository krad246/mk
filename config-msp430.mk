include $(MK)/config-ccache.mk

#-------------------------------------------------------------------------------
# Target definitions
#-------------------------------------------------------------------------------
TARGET_OS		:= $(HOST_OS)
TARGET_ARCH := $(HOST_ARCH)

#-------------------------------------------------------------------------------
# Toolchain definitions
#-------------------------------------------------------------------------------
CC				:= $(CCACHE) msp430-elf-gcc
CXX				:= $(CCACHE) msp430-elf-g++
LD 				:= msp430-elf-ld
AS				:= msp430-elf-as

AR				:= msp430-elf-ar
RANLIB		:= msp430-elf-ranlib

NM				:= msp430-elf-nm
OBJDUMP		:= msp430-elf-objdump
READELF		:= msp430-elf-readelf
STRINGS		:= msp430-elf-strings
SIZE			:= msp430-elf-size

OBJCOPY		:= msp430-elf-objcopy
STRIP			:= msp430-elf-strip

#-------------------------------------------------------------------------------
# Cross compiler flags
#-------------------------------------------------------------------------------
OPT_FLAGS			= -fverbose-asm
ERRATA_FLAGS	= cpu4,cpu8,cpu11,cpu12,cpu13,cpu19
SIZE_FLAGS		= -msmall
STYLE_FLAGS		= -masm-hex -ffunction-sections -fdata-sections

#-------------------------------------------------------------------------------
# Extra flags
#-------------------------------------------------------------------------------
PLAT_FLAGS := -mmcu=$(PLATFORM) $(OPT_FLAGS) $(WARN_FLAGS)
					-msilicon-errata-warn=$(ERRATA_FLAGS)
					$(SIZE_FLAGS) $(STYLE_FLAGS)
CFLAGS += $(PLAT_FLAGS)