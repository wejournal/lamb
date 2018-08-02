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

PEDANTIC := -std=c11 -pedantic-errors -Wall -Werror

LAMB := ../bin/lamb

RUNTIME :=	../runtime/src/runtime.c \
		../runtime/src/gc.c \
		../runtime/$(TARGET)/numbers.s \
		../runtime/src/lamb.c

.PHONY: all
all: hello$(SUFFIX) cat$(SUFFIX) fib$(SUFFIX) alphabet$(SUFFIX) reverse$(SUFFIX) hexdump$(SUFFIX)

%$(SUFFIX).s: ../snippet/typed.lam %.lam
	cat $^ | $(LAMB) --typed --compile --target $(TARGET) > $@

%$(SUFFIX): $(RUNTIME) %$(SUFFIX).s
	$(GCC) $(PEDANTIC) -I../include -o $@ $^
