LAZYK := ../../bin/lazy-k

hello: ../../runtime.h ../../runtime.c ../../gc.h ../../gc.c ../../lazy-k.c hello.s
	gcc -o $@ $^

hello.s: hello.lazy
	$(LAZYK)  < $< > $@
