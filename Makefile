PREFIX := $(HOME)/.lamb

MKDIR := mkdir

GCC := gcc
X86_64_W64_MINGW32_GCC := x86_64-w64-mingw32-gcc

MLTON := mlton
MLYACC := mlyacc
MLLEX := mllex

.PHONY: all
all:	bin/lamb \
	lib/lamb/linux/runtime.o lib/lamb/linux/gc.o lib/lamb/linux/numbers.o lib/lamb/linux/lamb.o \
	lib/lamb/windows/runtime.o lib/lamb/windows/gc.o lib/lamb/windows/numbers.o lib/lamb/windows/lamb.o

.PHONY: install
install:
	mkdir -p $(PREFIX)
	mkdir -p $(PREFIX)/bin
	mkdir -p $(PREFIX)/lib/lamb/linux
	mkdir -p $(PREFIX)/lib/lamb/windows
	mkdir -p $(PREFIX)/include/lamb
	install bin/lamb $(PREFIX)/bin
	install lib/lamb/linux/runtime.o $(PREFIX)/lib/lamb/linux/runtime.o
	install lib/lamb/linux/gc.o $(PREFIX)/lib/lamb/linux/gc.o
	install lib/lamb/linux/numbers.o $(PREFIX)/lib/lamb/linux/numbers.o
	install lib/lamb/linux/lamb.o $(PREFIX)/lib/lamb/linux/lamb.o
	install lib/lamb/windows/runtime.o $(PREFIX)/lib/lamb/windows/runtime.o
	install lib/lamb/windows/gc.o $(PREFIX)/lib/lamb/windows/gc.o
	install lib/lamb/windows/numbers.o $(PREFIX)/lib/lamb/windows/numbers.o
	install lib/lamb/windows/lamb.o $(PREFIX)/lib/lamb/windows/lamb.o
	install runtime/include/runtime.h $(PREFIX)/include/lamb/runtime.h
	install runtime/include/gc.h $(PREFIX)/include/lamb/gc.h

bin/lamb:	src/lamb.mlb \
		src/lamb.sml \
		src/term.sig \
		src/term.sml \
		src/de-bruijn-indexed-term.sig \
		src/de-bruijn-indexed-term.sml \
		src/krivine-machine.sig \
		src/krivine-machine.sml \
		src/abi.sig \
		src/system-v-abi.sml \
		src/microsoft-abi.sml \
		src/compiler.sig \
		src/compiler.fun \
		src/system-v-compiler.sml \
		src/microsoft-compiler.sml \
		src/type.sig \
		src/type.sml \
		src/typed-term.sig \
		src/typed-term.sml \
		src/inferring.sig \
		src/inferring.sml \
		src/parsing.grm.sig \
		src/parsing.grm.sml \
		src/lexing.lex.sml
	$(MKDIR) -p bin
	$(MLTON) -output $@ $<

.INTERMEDIATE: src/parsing.grm.sig src/parsing.grm.sml
src/parsing.grm.sig src/parsing.grm.sml: src/parsing.grm
	$(MLYACC) $<

.INTERMEDIATE: src/lexing.lex.sml
src/lexing.lex.sml: src/lexing.lex
	$(MLLEX) $<

lib/lamb/linux/runtime.o: runtime/src/runtime.c
	$(GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/linux/gc.o: runtime/src/gc.c
	$(GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/linux/numbers.o: runtime/linux/numbers.s
	$(GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/linux/lamb.o: runtime/src/lamb.c
	$(GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/windows/runtime.o: runtime/src/runtime.c
	$(X86_64_W64_MINGW32_GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/windows/gc.o: runtime/src/gc.c
	$(X86_64_W64_MINGW32_GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/windows/numbers.o: runtime/windows/numbers.s
	$(X86_64_W64_MINGW32_GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/windows/lamb.o: runtime/src/lamb.c
	$(X86_64_W64_MINGW32_GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

.INTERMEDIATE: $(patsubst %,runtime/linux/n%.s,$(shell seq 0 255))
runtime/linux/numbers.s: $(patsubst %,runtime/linux/n%.s,$(shell seq 0 255))
	cat $^ > $@

runtime/linux/n%.s: runtime/lam/n%.lam bin/lamb
	LAMB_HOME=. bin/lamb --target linux -o $@ -S $<

.INTERMEDIATE: $(patsubst %,runtime/windows/n%.s,$(shell seq 0 255))
runtime/windows/numbers.s: $(patsubst %,runtime/windows/n%.s,$(shell seq 0 255))
	cat $^ > $@

runtime/windows/n%.s: runtime/lam/n%.lam bin/lamb
	LAMB_HOME=. bin/lamb --target windows -o $@ -S $<
