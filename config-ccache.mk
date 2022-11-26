ifneq ($(USE_CCACHE), off)
	CCACHE := $(shell which ccache)

	ifeq ($(CCACHE), )
		$(info INFO: ccache not found in PATH, disabled.)
		export USE_CCACHE:=off
	endif

else 
	ifeq ($(USE_CLANG), on)
		export CCACHE_CPP2=yes
	endif
endif