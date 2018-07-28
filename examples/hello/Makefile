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

LAMB := ../../bin/lamb

.PHONY: all
all: hello$(SUFFIX)

hello$(SUFFIX): \
		../../runtime/src/runtime.c \
		../../runtime/src/gc.c \
		../../runtime/$(TARGET)/numbers.s \
		../../runtime/src/lamb.c \
		hello$(SUFFIX).s
	$(GCC) -I../../include -o $@ $^

hello$(SUFFIX).s: hello.lam
	cat $^ | $(LAMB) --typed --compile --target $(TARGET) > $@
