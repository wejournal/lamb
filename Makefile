MKDIR := mkdir
MLTON := mlton
MLYACC := mlyacc
MLLEX := mllex

bin/lamb:	lamb.mlb \
		lamb.sml \
		implementing-lambda-calculus.mlb \
		term.sig \
		term.sml \
		de-bruijn-indexed-term.sig \
		de-bruijn-indexed-term.sml \
		instr.sig \
		instr.sml \
		krivine-machine.sig \
		krivine-machine.sml \
		abi.sig \
		system-v-abi.sml \
		microsoft-abi.sml \
		compiler.sig \
		compiler.fun \
		system-v-compiler.sml \
		microsoft-compiler.sml \
		type.sig \
		type.sml \
		typed-term.sig \
		typed-term.sml \
		simply-typing.sig \
		simply-typing.sml \
		implicit-typed-term.sig \
		implicit-typed-term.sml \
		constraint-typing.sig \
		constraint-typing.sml \
		unifying.sig \
		unifying.sml \
		inferring.sig \
		inferring.sml \
		untyped.sig \
		untyped.sml \
		simply-typed.sig \
		simply-typed.sml \
		constraint-typed.sig \
		constraint-typed.sml \
		parsing.grm.sig \
		parsing.grm.sml \
		lexing.lex.sml
	$(MKDIR) -p bin
	$(MLTON) -output $@ $<

parsing.grm.sig parsing.grm.sml: parsing.grm
	$(MLYACC) $<

lexing.lex.sml: lexing.lex
	$(MLLEX) $<


bin/lazy-k:	lazy-k.mlb \
		lazy-k.sml \
		implementing-lambda-calculus.mlb \
		term.sig \
		term.sml \
		de-bruijn-indexed-term.sig \
		de-bruijn-indexed-term.sml \
		instr.sig \
		instr.sml \
		krivine-machine.sig \
		krivine-machine.sml \
		abi.sig \
		system-v-abi.sml \
		microsoft-abi.sml \
		compiler.sig \
		compiler.fun \
		system-v-compiler.sml \
		microsoft-compiler.sml \
		type.sig \
		type.sml \
		typed-term.sig \
		typed-term.sml \
		simply-typing.sig \
		simply-typing.sml \
		implicit-typed-term.sig \
		implicit-typed-term.sml \
		constraint-typing.sig \
		constraint-typing.sml \
		unifying.sig \
		unifying.sml \
		inferring.sig \
		inferring.sml \
		untyped.sig \
		untyped.sml \
		simply-typed.sig \
		simply-typed.sml \
		constraint-typed.sig \
		constraint-typed.sml \
		lazy-k-parsing.grm.sig \
		lazy-k-parsing.grm.sml \
		lazy-k-lexing.lex.sml
	$(MKDIR) -p bin
	$(MLTON) -output $@ $<

lazy-k-parsing.grm.sig lazy-k-parsing.grm.sml: lazy-k-parsing.grm
	$(MLYACC) $<

lazy-k-lexing.lex.sml: lazy-k-lexing.lex
	$(MLLEX) $<
