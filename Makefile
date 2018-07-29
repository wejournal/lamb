MKDIR := mkdir
MLTON := mlton
MLYACC := mlyacc
MLLEX := mllex

.PHONY: all
all: bin/lamb runtime/linux/numbers.s runtime/windows/numbers.s

bin/lamb:	mlb/lamb.mlb \
		sml/lamb.sml \
		mlb/implementing-lambda-calculus.mlb \
		sig/term.sig \
		sml/term.sml \
		sig/de-bruijn-indexed-term.sig \
		sml/de-bruijn-indexed-term.sml \
		sig/instr.sig \
		sml/instr.sml \
		sig/krivine-machine.sig \
		sml/krivine-machine.sml \
		sig/abi.sig \
		sml/system-v-abi.sml \
		sml/microsoft-abi.sml \
		sig/compiler.sig \
		fun/compiler.fun \
		sml/system-v-compiler.sml \
		sml/microsoft-compiler.sml \
		sig/type.sig \
		sml/type.sml \
		sig/typed-term.sig \
		sml/typed-term.sml \
		sig/inferring.sig \
		sml/inferring.sml \
		sig/untyped.sig \
		sml/untyped.sml \
		sig/constraint-typed.sig \
		sml/constraint-typed.sml \
		grm/parsing.grm.sig \
		grm/parsing.grm.sml \
		lex/lexing.lex.sml
	$(MKDIR) -p bin
	$(MLTON) -output $@ $<

grm/parsing.grm.sig grm/parsing.grm.sml: grm/parsing.grm
	$(MLYACC) $<

lex/lexing.lex.sml: lex/lexing.lex
	$(MLLEX) $<
runtime/linux/numbers.s: $(patsubst %,runtime/linux/n%.s,$(shell seq 0 255))
	cat $^ > $@

runtime/linux/n%.s: bin/lamb
	echo $(patsubst runtime/linux/n%.s,%,$@) | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n$(patsubst runtime/linux/n%.s,%,$@)/' > runtime/linux/n$(patsubst runtime/linux/n%.s,%,$@).s

runtime/windows/numbers.s: $(patsubst %,runtime/windows/n%.s,$(shell seq 0 255))
	cat $^ > $@

runtime/windows/n%.s: bin/lamb
	echo $(patsubst runtime/windows/n%.s,%,$@) | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n$(patsubst runtime/windows/n%.s,%,$@)/' > runtime/windows/n$(patsubst runtime/windows/n%.s,%,$@).s
