RELFLAGS := -g -g3 -gdwarf-3 -ggdb -gstrict-dwarf -Os -DRELEASE

CFLAGS   += $(RELFLAGS)
CXXFLAGS += $(RELFLAGS)
CPPFLAGS += $(RELFLAGS)
LDFLAGS  += $(RELFLAGS)
