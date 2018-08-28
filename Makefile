PREFIX := $(HOME)/.lamb
CROSS := false

MKDIR := mkdir
INSTALL := install
CAT := cat

GCC := gcc
X86_64_W64_MINGW32_GCC := x86_64-w64-mingw32-gcc

MLTON := mlton
MLYACC := mlyacc
MLLEX := mllex

.PHONY: all
ifeq ($(CROSS), true)
all:	bin/lamb \
	include/lamb/runtime.h include/lamb/gc.h \
	lib/lamb/linux/runtime.o lib/lamb/linux/gc.o lib/lamb/linux/numbers.o lib/lamb/linux/lamb.o \
	lib/lamb/windows/runtime.o lib/lamb/windows/gc.o lib/lamb/windows/numbers.o lib/lamb/windows/lamb.o
else
all:	bin/lamb \
	include/lamb/runtime.h include/lamb/gc.h \
	lib/lamb/linux/runtime.o lib/lamb/linux/gc.o lib/lamb/linux/numbers.o lib/lamb/linux/lamb.o
endif

.PHONY: install
install:
	$(MKDIR) -p $(PREFIX)
	$(MKDIR) -p $(PREFIX)/bin
	$(MKDIR) -p $(PREFIX)/lib/lamb/linux
	$(MKDIR) -p $(PREFIX)/lib/lamb/windows
	$(MKDIR) -p $(PREFIX)/include/lamb
	$(INSTALL) bin/lamb $(PREFIX)/bin
	$(INSTALL) lib/lamb/linux/runtime.o $(PREFIX)/lib/lamb/linux/runtime.o
	$(INSTALL) lib/lamb/linux/gc.o $(PREFIX)/lib/lamb/linux/gc.o
	$(INSTALL) lib/lamb/linux/numbers.o $(PREFIX)/lib/lamb/linux/numbers.o
	$(INSTALL) lib/lamb/linux/lamb.o $(PREFIX)/lib/lamb/linux/lamb.o
ifeq ($(CROSS), true)
	$(INSTALL) lib/lamb/windows/runtime.o $(PREFIX)/lib/lamb/windows/runtime.o
	$(INSTALL) lib/lamb/windows/gc.o $(PREFIX)/lib/lamb/windows/gc.o
	$(INSTALL) lib/lamb/windows/numbers.o $(PREFIX)/lib/lamb/windows/numbers.o
	$(INSTALL) lib/lamb/windows/lamb.o $(PREFIX)/lib/lamb/windows/lamb.o
endif
	$(INSTALL) include/lamb/runtime.h $(PREFIX)/include/lamb/runtime.h
	$(INSTALL) include/lamb/gc.h $(PREFIX)/include/lamb/gc.h

bin/lamb:	src/lamb.mlb \
		src/common.sml \
		src/term.sig \
		src/term.sml \
		src/de-bruijn-indexed-term.sig \
		src/de-bruijn-indexed-term.sml \
		src/krivine-machine.sig \
		src/krivine-machine.sml \
		src/abi.sig \
		src/system-v-abi.sml \
		src/microsoft-abi.sml \
		src/gensym.sig \
		src/gensym.sml \
		src/emitting.sig \
		src/emitting.sml \
		src/compiling.sig \
		src/compiling.fun \
		src/system-v-compiling.sml \
		src/microsoft-compiling.sml \
		src/optimizing.sig \
		src/optimizing.sml \
		src/type.sig \
		src/type.sml \
		src/typed-term.sig \
		src/typed-term.sml \
		src/inferring.sig \
		src/inferring.sml \
		src/ast.sig \
		src/ast.sml \
		src/parsing.grm.sig \
		src/parsing.grm.sml \
		src/lexing.lex.sml \
		src/lamb.sml
	$(MKDIR) -p bin
	$(MLTON) -output $@ $<

.INTERMEDIATE: src/parsing.grm.sig src/parsing.grm.sml
src/parsing.grm.sig src/parsing.grm.sml: src/parsing.grm
	$(MLYACC) $<

.INTERMEDIATE: src/lexing.lex.sml
src/lexing.lex.sml: src/lexing.lex
	$(MLLEX) $<

lib/lamb/linux/runtime.o: runtime/runtime.c
	$(MKDIR) -p lib/lamb/linux
	$(GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/linux/gc.o: runtime/gc.c
	$(MKDIR) -p lib/lamb/linux
	$(GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

.INTERMEDIATE: lib/lamb/linux/numbers.s
lib/lamb/linux/numbers.s: runtime/numbers.lam bin/lamb
	$(MKDIR) -p lib/lamb/linux
	LAMB_HOME=. bin/lamb --target linux -S --inline -o $@ $<

lib/lamb/linux/numbers.o: lib/lamb/linux/numbers.s
	$(MKDIR) -p lib/lamb/linux
	$(GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/linux/lamb.o: runtime/lamb.c
	$(MKDIR) -p lib/lamb/linux
	$(GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/windows/runtime.o: runtime/runtime.c
	$(MKDIR) -p lib/lamb/windows
	$(X86_64_W64_MINGW32_GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/windows/gc.o: runtime/gc.c
	$(MKDIR) -p lib/lamb/windows
	$(X86_64_W64_MINGW32_GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

.INTERMEDIATE: lib/lamb/windows/numbers.s
lib/lamb/windows/numbers.s: runtime/numbers.lam bin/lamb
	$(MKDIR) -p lib/lamb/windows
	LAMB_HOME=. bin/lamb --target windows -S --inline -o $@ $<

lib/lamb/windows/numbers.o: lib/lamb/windows/numbers.s
	$(MKDIR) -p lib/lamb/windows
	$(X86_64_W64_MINGW32_GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<

lib/lamb/windows/lamb.o: runtime/lamb.c
	$(MKDIR) -p lib/lamb/windows
	$(X86_64_W64_MINGW32_GCC) -std=c11 -pedantic-errors -Wall -Werror -Iruntime/include -c -O3 -o $@ $<
