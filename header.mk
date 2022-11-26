# Base case: first invocation.
# Determine the starting directory and include skel.mk.
# Define that as $(TOP)
ifndef d
	d := $(or $(TOP), $(shell pwd))
	r := .
	dir_stack := 

	include $(MK)/skel.mk

# Otherwise determine pathing relative to $(TOP)
else 
	r := $(subst $(TOP)/,,$(d))
	r := $(subst $(TOP),.,$(r))
endif

REL_$(d) := $(r)

# Clear vars used by this make system
SRCS :=
SRCS_EXCLUDES :=
OBJS :=
CLEAN :=
TARGETS :=
SUBDIRS :=

# Clear user vars
$(foreach v,$(VERB_VARS) $(OBJ_VARS) $(DIR_VARS),$(eval $(v) := ))
