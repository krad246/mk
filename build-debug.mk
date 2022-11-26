DBGFLAGS	:= -g -g3 -gdwarf-3 -ggdb -gstrict-dwarf -Og -DDEBUG

CFLAGS   += $(DBGFLAGS)
CXXFLAGS += $(DBGFLAGS)
CPPFLAGS += $(DBGFLAGS)
LDFLAGS  += $(DBGFLAGS)
