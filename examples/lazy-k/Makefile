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

LAZYK := ../../bin/lazy-k

.PHONY: all
all: hello$(SUFFIX) cat$(SUFFIX)

hello$(SUFFIX): \
		../../runtime/src/runtime.c \
		../../runtime/src/gc.c \
		../../runtime/$(TARGET)/numbers.s \
		../../runtime/src/lazy-k.c \
		hello$(SUFFIX).s
	$(GCC) -I../../include -o $@ $^

hello$(SUFFIX).s: hello.lazy
	cat $^ | $(LAZYK) > $@

cat$(SUFFIX): \
		../../runtime/src/runtime.c \
		../../runtime/src/gc.c \
		../../runtime/$(TARGET)/numbers.s \
		../../runtime/src/lazy-k.c \
		cat$(SUFFIX).s
	$(GCC) -I../../include -o $@ $^

cat$(SUFFIX).s: cat.lazy
	cat $^ | $(LAZYK) > $@
