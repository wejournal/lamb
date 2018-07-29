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

LAMB := ../bin/lamb

RUNTIME :=	../runtime/src/runtime.c \
		../runtime/src/gc.c \
		../runtime/$(TARGET)/numbers.s \
		../runtime/src/lamb.c

.PHONY: all
all: hello$(SUFFIX) cat$(SUFFIX) fib$(SUFFIX) fib-iter$(SUFFIX)

hello$(SUFFIX): $(RUNTIME) hello$(SUFFIX).s
	$(GCC) -I../include -o $@ $^

hello$(SUFFIX).s: hello.lam
	cat $^ | $(LAMB) --typed --compile --target $(TARGET) > $@

cat$(SUFFIX): $(RUNTIME) cat$(SUFFIX).s
	$(GCC) -I../include -o $@ $^

cat$(SUFFIX).s: cat.lam
	cat $^ | $(LAMB) --typed --compile --target $(TARGET) > $@

fib$(SUFFIX): $(RUNTIME) fib$(SUFFIX).s
	$(GCC) -I../include -o $@ $^

fib$(SUFFIX).s: ../snippet/typed.lam ../snippet/untyped.lam fib.lam
	cat $^ | $(LAMB) --untyped --compile --target $(TARGET) > $@

fib-iter$(SUFFIX): $(RUNTIME) fib-iter$(SUFFIX).s
	$(GCC) -I../include -o $@ $^

fib-iter$(SUFFIX).s: fib-iter.lam
	cat $^ | $(LAMB) --typed --compile --target $(TARGET) > $@
