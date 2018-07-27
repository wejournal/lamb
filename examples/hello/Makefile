LAMB := ../../bin/lamb
TARGET := linux

hello: ../../runtime.h ../../runtime.c ../../gc.h ../../gc.c ../../lamb.c hello.s
	gcc -o $@ $^

hello.s: hello.lam
	$(LAMB) --typed --compile --target $(TARGET) < $< > $@
