LAZYK := ../../bin/lazy-k
TARGET := linux

.PHONY: all
all: hello cat

hello: ../../runtime.h ../../runtime.c ../../gc.h ../../gc.c ../../runtime/$(TARGET)/numbers.s ../../lazy-k.c hello.s
	gcc -o $@ $^

hello.s: hello.lazy
	$(LAZYK)  < $< > $@

cat: ../../runtime.h ../../runtime.c ../../gc.h ../../gc.c ../../runtime/$(TARGET)/numbers.s ../../lazy-k.c cat.s
	gcc -o $@ $^

cat.s: cat.lazy
	$(LAZYK)  < $< > $@
