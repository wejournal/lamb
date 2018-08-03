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
all: hello$(SUFFIX) cat$(SUFFIX) reverse$(SUFFIX)

%$(SUFFIX).s: %.lam
	$(LAMB) --target $(TARGET) -o $@ $^

%$(SUFFIX): $(RUNTIME) %$(SUFFIX).s
	$(GCC) $(PEDANTIC) -I../runtime/include -o $@ $^
