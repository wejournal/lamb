LAMB := ../bin/lamb
LAMB_HOME := ..
LAMB_INCLUDE := $(LAMB_HOME)/include

TARGET := linux

ifeq ($(TARGET), windows)
SUFFIX := .exe
else
SUFFIX :=
endif

ifeq ($(TARGET), windows)
GCC := x86_64-w64-mingw32-gcc
else
GCC := gcc
endif

.PHONY: all
all: hello$(SUFFIX) cat$(SUFFIX) reverse$(SUFFIX) sep$(SUFFIX) ffi$(SUFFIX)

sep$(SUFFIX): k.lam sep.lam
	LAMB_HOME=$(LAMB_HOME) $(LAMB) --target $(TARGET) -o k.la -i k.lam
	LAMB_HOME=$(LAMB_HOME) $(LAMB) --target $(TARGET) -c k.lam
	LAMB_HOME=$(LAMB_HOME) $(LAMB) --target $(TARGET) -c k.la sep.lam
	LAMB_HOME=$(LAMB_HOME) $(LAMB) --target $(TARGET) --link -o $@ k.lam.o sep.lam.o

ffi$(SUFFIX): ffi.lam ffi.c
	$(GCC) -std=c11 -pedantic-errors -Wall -Werror -I$(LAMB_INCLUDE) -c -o ffi.c.o ffi.c
	LAMB_HOME=$(LAMB_HOME) $(LAMB) --target $(TARGET) -c -o $<.o $<
	LAMB_HOME=$(LAMB_HOME) $(LAMB) --target $(TARGET) --link -o $@ $<.o ffi.c.o

%$(SUFFIX): %.lam
	LAMB_HOME=$(LAMB_HOME) $(LAMB) --target $(TARGET) -o $@ $<
