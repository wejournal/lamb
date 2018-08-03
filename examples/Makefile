LAMB := ../bin/lamb

TARGET := linux

ifeq ($(TARGET), windows)
SUFFIX := .exe
else
SUFFIX :=
endif

.PHONY: all
all: hello$(SUFFIX) cat$(SUFFIX) reverse$(SUFFIX)

%$(SUFFIX): %.lam
	LAMB_HOME=.. $(LAMB) --target $(TARGET) -o $@ -- $<
	rm -f $<.s
	rm -f $<.o
