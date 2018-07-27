LAMB := ../../bin/lamb
TARGET := linux

.PHONY: all
all: fib fib-iter

fib: ../../runtime.h ../../runtime.c ../../gc.h ../../gc.c ../../lamb.c fib.s
	gcc -o $@ $^

fib.s: ../../snippet/typed.lam ../../snippet/untyped.lam fib.lam
	cat $^ | $(LAMB) --untyped --compile --target $(TARGET) > $@

fib-iter: ../../runtime.h ../../runtime.c ../../gc.h ../../gc.c ../../lamb.c fib-iter.s
	gcc -o $@ $^

fib-iter.s: fib-iter.lam
	cat $^ | $(LAMB) --untyped --compile --target $(TARGET) > $@
