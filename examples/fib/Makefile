LAMB := ../../bin/lamb
TARGET := linux

fib: ../../runtime.h ../../runtime.c ../../gc.h ../../gc.c ../../lamb.c fib.s
	gcc -o $@ $^

fib.s: ../../snippet/typed.lam ../../snippet/untyped.lam fib.lam
	cat $^ | $(LAMB) --untyped --compile --target $(TARGET) > $@
