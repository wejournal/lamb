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
all: fib$(SUFFIX) fib-iter$(SUFFIX)

fib$(SUFFIX): \
		../../runtime/src/runtime.c \
		../../runtime/src/gc.c \
		../../runtime/$(TARGET)/numbers.s \
		../../runtime/src/lamb.c \
		fib$(SUFFIX).s
	$(GCC) -I../../include -o $@ $^

fib$(SUFFIX).s: ../../snippet/typed.lam ../../snippet/untyped.lam fib.lam
	cat $^ | $(LAMB) --untyped --compile --target $(TARGET) > $@

fib-iter$(SUFFIX): \
		../../runtime/src/runtime.c \
		../../runtime/src/gc.c \
		../../runtime/$(TARGET)/numbers.s \
		../../runtime/src/lamb.c \
		fib-iter$(SUFFIX).s
	$(GCC) -I../../include -o $@ $^

fib-iter$(SUFFIX).s: fib-iter.lam
	cat $^ | $(LAMB) --typed --compile --target $(TARGET) > $@
