MKDIR := mkdir
MLTON := mlton
MLYACC := mlyacc
MLLEX := mllex

.PHONY: all
all: bin/lamb runtime/linux/numbers.s runtime/windows/numbers.s

bin/lamb:	mlb/lamb.mlb \
		src/lamb.sml \
		mlb/implementing-lambda-calculus.mlb \
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

src/parsing.grm.sig src/parsing.grm.sml: src/parsing.grm
	$(MLYACC) $<

src/lexing.lex.sml: src/lexing.lex
	$(MLLEX) $<

runtime/linux/numbers.s: $(patsubst %,runtime/linux/n%.s,$(shell seq 0 255))
	cat $^ > $@

runtime/linux/n%.s: bin/lamb
	echo $(patsubst runtime/linux/n%.s,%,$@) | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n$(patsubst runtime/linux/n%.s,%,$@)/' > runtime/linux/n$(patsubst runtime/linux/n%.s,%,$@).s

runtime/windows/numbers.s: $(patsubst %,runtime/windows/n%.s,$(shell seq 0 255))
	cat $^ > $@

runtime/windows/n%.s: bin/lamb
	echo $(patsubst runtime/windows/n%.s,%,$@) | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n$(patsubst runtime/windows/n%.s,%,$@)/' > runtime/windows/n$(patsubst runtime/windows/n%.s,%,$@).s
