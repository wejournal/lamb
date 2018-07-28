LAMB := ../../bin/lamb
TARGET := linux

cat: ../../runtime.h ../../runtime.c ../../gc.h ../../gc.c ../../runtime/$(TARGET)/numbers.s ../../lamb.c cat.s
	gcc -o $@ $^

cat.s: cat.lam
	$(LAMB) --typed --compile --target $(TARGET) < $< > $@
