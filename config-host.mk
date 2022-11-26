include $(MK)/config-ccache.mk

#-------------------------------------------------------------------------------
# Target definitions
#-------------------------------------------------------------------------------
TARGET_OS		:= $(HOST_OS)
TARGET_ARCH := $(HOST_ARCH)

#-------------------------------------------------------------------------------
# Toolchain definitions
#-------------------------------------------------------------------------------
CC				:= $(CCACHE) gcc
CXX				:= $(CCACHE) g++
LD 				:= ld
AS				:= as

AR				:= ar
RANLIB		:= ranlib

NM				:= nm
OBJDUMP		:= objdump
READELF		:= readelf
STRINGS		:= strings
SIZE			:= size

OBJCOPY		:= objcopy
STRIP			:= strip

#-------------------------------------------------------------------------------
# Extra flags
#-------------------------------------------------------------------------------
CPPFLAGS	+= -D_GNU_SOURCE -D_POSIX_SOURCE
LDLIBS 		+= -lrt