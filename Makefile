
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
		sig/simply-typing.sig \
		sml/simply-typing.sml \
		sig/implicit-typed-term.sig \
		sml/implicit-typed-term.sml \
		sig/constraint-typing.sig \
		sml/constraint-typing.sml \
		sig/unifying.sig \
		sml/unifying.sml \
		sig/inferring.sig \
		sml/inferring.sml \
		sig/untyped.sig \
		sml/untyped.sml \
		sig/simply-typed.sig \
		sml/simply-typed.sml \
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

bin/lazy-k:	mlb/lazy-k.mlb \
		sml/lazy-k.sml \
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
		sig/simply-typing.sig \
		sml/simply-typing.sml \
		sig/implicit-typed-term.sig \
		sml/implicit-typed-term.sml \
		sig/constraint-typing.sig \
		sml/constraint-typing.sml \
		sig/unifying.sig \
		sml/unifying.sml \
		sig/inferring.sig \
		sml/inferring.sml \
		sig/untyped.sig \
		sml/untyped.sml \
		sig/simply-typed.sig \
		sml/simply-typed.sml \
		sig/constraint-typed.sig \
		sml/constraint-typed.sml \
		grm/lazy-k-parsing.grm.sig \
		grm/lazy-k-parsing.grm.sml \
		lex/lazy-k-lexing.lex.sml
	$(MKDIR) -p bin
	$(MLTON) -output $@ $<

grm/lazy-k-parsing.grm.sig grm/lazy-k-parsing.grm.sml: grm/lazy-k-parsing.grm
	$(MLYACC) $<

lex/lazy-k-lexing.lex.sml: lex/lazy-k-lexing.lex
	$(MLLEX) $<

runtime/linux/numbers.s: runtime/linux/n0.s runtime/linux/n1.s runtime/linux/n2.s runtime/linux/n3.s runtime/linux/n4.s runtime/linux/n5.s runtime/linux/n6.s runtime/linux/n7.s runtime/linux/n8.s runtime/linux/n9.s runtime/linux/n10.s runtime/linux/n11.s runtime/linux/n12.s runtime/linux/n13.s runtime/linux/n14.s runtime/linux/n15.s runtime/linux/n16.s runtime/linux/n17.s runtime/linux/n18.s runtime/linux/n19.s runtime/linux/n20.s runtime/linux/n21.s runtime/linux/n22.s runtime/linux/n23.s runtime/linux/n24.s runtime/linux/n25.s runtime/linux/n26.s runtime/linux/n27.s runtime/linux/n28.s runtime/linux/n29.s runtime/linux/n30.s runtime/linux/n31.s runtime/linux/n32.s runtime/linux/n33.s runtime/linux/n34.s runtime/linux/n35.s runtime/linux/n36.s runtime/linux/n37.s runtime/linux/n38.s runtime/linux/n39.s runtime/linux/n40.s runtime/linux/n41.s runtime/linux/n42.s runtime/linux/n43.s runtime/linux/n44.s runtime/linux/n45.s runtime/linux/n46.s runtime/linux/n47.s runtime/linux/n48.s runtime/linux/n49.s runtime/linux/n50.s runtime/linux/n51.s runtime/linux/n52.s runtime/linux/n53.s runtime/linux/n54.s runtime/linux/n55.s runtime/linux/n56.s runtime/linux/n57.s runtime/linux/n58.s runtime/linux/n59.s runtime/linux/n60.s runtime/linux/n61.s runtime/linux/n62.s runtime/linux/n63.s runtime/linux/n64.s runtime/linux/n65.s runtime/linux/n66.s runtime/linux/n67.s runtime/linux/n68.s runtime/linux/n69.s runtime/linux/n70.s runtime/linux/n71.s runtime/linux/n72.s runtime/linux/n73.s runtime/linux/n74.s runtime/linux/n75.s runtime/linux/n76.s runtime/linux/n77.s runtime/linux/n78.s runtime/linux/n79.s runtime/linux/n80.s runtime/linux/n81.s runtime/linux/n82.s runtime/linux/n83.s runtime/linux/n84.s runtime/linux/n85.s runtime/linux/n86.s runtime/linux/n87.s runtime/linux/n88.s runtime/linux/n89.s runtime/linux/n90.s runtime/linux/n91.s runtime/linux/n92.s runtime/linux/n93.s runtime/linux/n94.s runtime/linux/n95.s runtime/linux/n96.s runtime/linux/n97.s runtime/linux/n98.s runtime/linux/n99.s runtime/linux/n100.s runtime/linux/n101.s runtime/linux/n102.s runtime/linux/n103.s runtime/linux/n104.s runtime/linux/n105.s runtime/linux/n106.s runtime/linux/n107.s runtime/linux/n108.s runtime/linux/n109.s runtime/linux/n110.s runtime/linux/n111.s runtime/linux/n112.s runtime/linux/n113.s runtime/linux/n114.s runtime/linux/n115.s runtime/linux/n116.s runtime/linux/n117.s runtime/linux/n118.s runtime/linux/n119.s runtime/linux/n120.s runtime/linux/n121.s runtime/linux/n122.s runtime/linux/n123.s runtime/linux/n124.s runtime/linux/n125.s runtime/linux/n126.s runtime/linux/n127.s runtime/linux/n128.s runtime/linux/n129.s runtime/linux/n130.s runtime/linux/n131.s runtime/linux/n132.s runtime/linux/n133.s runtime/linux/n134.s runtime/linux/n135.s runtime/linux/n136.s runtime/linux/n137.s runtime/linux/n138.s runtime/linux/n139.s runtime/linux/n140.s runtime/linux/n141.s runtime/linux/n142.s runtime/linux/n143.s runtime/linux/n144.s runtime/linux/n145.s runtime/linux/n146.s runtime/linux/n147.s runtime/linux/n148.s runtime/linux/n149.s runtime/linux/n150.s runtime/linux/n151.s runtime/linux/n152.s runtime/linux/n153.s runtime/linux/n154.s runtime/linux/n155.s runtime/linux/n156.s runtime/linux/n157.s runtime/linux/n158.s runtime/linux/n159.s runtime/linux/n160.s runtime/linux/n161.s runtime/linux/n162.s runtime/linux/n163.s runtime/linux/n164.s runtime/linux/n165.s runtime/linux/n166.s runtime/linux/n167.s runtime/linux/n168.s runtime/linux/n169.s runtime/linux/n170.s runtime/linux/n171.s runtime/linux/n172.s runtime/linux/n173.s runtime/linux/n174.s runtime/linux/n175.s runtime/linux/n176.s runtime/linux/n177.s runtime/linux/n178.s runtime/linux/n179.s runtime/linux/n180.s runtime/linux/n181.s runtime/linux/n182.s runtime/linux/n183.s runtime/linux/n184.s runtime/linux/n185.s runtime/linux/n186.s runtime/linux/n187.s runtime/linux/n188.s runtime/linux/n189.s runtime/linux/n190.s runtime/linux/n191.s runtime/linux/n192.s runtime/linux/n193.s runtime/linux/n194.s runtime/linux/n195.s runtime/linux/n196.s runtime/linux/n197.s runtime/linux/n198.s runtime/linux/n199.s runtime/linux/n200.s runtime/linux/n201.s runtime/linux/n202.s runtime/linux/n203.s runtime/linux/n204.s runtime/linux/n205.s runtime/linux/n206.s runtime/linux/n207.s runtime/linux/n208.s runtime/linux/n209.s runtime/linux/n210.s runtime/linux/n211.s runtime/linux/n212.s runtime/linux/n213.s runtime/linux/n214.s runtime/linux/n215.s runtime/linux/n216.s runtime/linux/n217.s runtime/linux/n218.s runtime/linux/n219.s runtime/linux/n220.s runtime/linux/n221.s runtime/linux/n222.s runtime/linux/n223.s runtime/linux/n224.s runtime/linux/n225.s runtime/linux/n226.s runtime/linux/n227.s runtime/linux/n228.s runtime/linux/n229.s runtime/linux/n230.s runtime/linux/n231.s runtime/linux/n232.s runtime/linux/n233.s runtime/linux/n234.s runtime/linux/n235.s runtime/linux/n236.s runtime/linux/n237.s runtime/linux/n238.s runtime/linux/n239.s runtime/linux/n240.s runtime/linux/n241.s runtime/linux/n242.s runtime/linux/n243.s runtime/linux/n244.s runtime/linux/n245.s runtime/linux/n246.s runtime/linux/n247.s runtime/linux/n248.s runtime/linux/n249.s runtime/linux/n250.s runtime/linux/n251.s runtime/linux/n252.s runtime/linux/n253.s runtime/linux/n254.s runtime/linux/n255.s
	cat $^ > $@

runtime/linux/n%.s: bin/lamb
	echo $(patsubst runtime/linux/n%.s,%,$@) | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n$(patsubst runtime/linux/n%.s,%,$@)/' > runtime/linux/n$(patsubst runtime/linux/n%.s,%,$@).s

runtime/windows/numbers.s: runtime/windows/n0.s runtime/windows/n1.s runtime/windows/n2.s runtime/windows/n3.s runtime/windows/n4.s runtime/windows/n5.s runtime/windows/n6.s runtime/windows/n7.s runtime/windows/n8.s runtime/windows/n9.s runtime/windows/n10.s runtime/windows/n11.s runtime/windows/n12.s runtime/windows/n13.s runtime/windows/n14.s runtime/windows/n15.s runtime/windows/n16.s runtime/windows/n17.s runtime/windows/n18.s runtime/windows/n19.s runtime/windows/n20.s runtime/windows/n21.s runtime/windows/n22.s runtime/windows/n23.s runtime/windows/n24.s runtime/windows/n25.s runtime/windows/n26.s runtime/windows/n27.s runtime/windows/n28.s runtime/windows/n29.s runtime/windows/n30.s runtime/windows/n31.s runtime/windows/n32.s runtime/windows/n33.s runtime/windows/n34.s runtime/windows/n35.s runtime/windows/n36.s runtime/windows/n37.s runtime/windows/n38.s runtime/windows/n39.s runtime/windows/n40.s runtime/windows/n41.s runtime/windows/n42.s runtime/windows/n43.s runtime/windows/n44.s runtime/windows/n45.s runtime/windows/n46.s runtime/windows/n47.s runtime/windows/n48.s runtime/windows/n49.s runtime/windows/n50.s runtime/windows/n51.s runtime/windows/n52.s runtime/windows/n53.s runtime/windows/n54.s runtime/windows/n55.s runtime/windows/n56.s runtime/windows/n57.s runtime/windows/n58.s runtime/windows/n59.s runtime/windows/n60.s runtime/windows/n61.s runtime/windows/n62.s runtime/windows/n63.s runtime/windows/n64.s runtime/windows/n65.s runtime/windows/n66.s runtime/windows/n67.s runtime/windows/n68.s runtime/windows/n69.s runtime/windows/n70.s runtime/windows/n71.s runtime/windows/n72.s runtime/windows/n73.s runtime/windows/n74.s runtime/windows/n75.s runtime/windows/n76.s runtime/windows/n77.s runtime/windows/n78.s runtime/windows/n79.s runtime/windows/n80.s runtime/windows/n81.s runtime/windows/n82.s runtime/windows/n83.s runtime/windows/n84.s runtime/windows/n85.s runtime/windows/n86.s runtime/windows/n87.s runtime/windows/n88.s runtime/windows/n89.s runtime/windows/n90.s runtime/windows/n91.s runtime/windows/n92.s runtime/windows/n93.s runtime/windows/n94.s runtime/windows/n95.s runtime/windows/n96.s runtime/windows/n97.s runtime/windows/n98.s runtime/windows/n99.s runtime/windows/n100.s runtime/windows/n101.s runtime/windows/n102.s runtime/windows/n103.s runtime/windows/n104.s runtime/windows/n105.s runtime/windows/n106.s runtime/windows/n107.s runtime/windows/n108.s runtime/windows/n109.s runtime/windows/n110.s runtime/windows/n111.s runtime/windows/n112.s runtime/windows/n113.s runtime/windows/n114.s runtime/windows/n115.s runtime/windows/n116.s runtime/windows/n117.s runtime/windows/n118.s runtime/windows/n119.s runtime/windows/n120.s runtime/windows/n121.s runtime/windows/n122.s runtime/windows/n123.s runtime/windows/n124.s runtime/windows/n125.s runtime/windows/n126.s runtime/windows/n127.s runtime/windows/n128.s runtime/windows/n129.s runtime/windows/n130.s runtime/windows/n131.s runtime/windows/n132.s runtime/windows/n133.s runtime/windows/n134.s runtime/windows/n135.s runtime/windows/n136.s runtime/windows/n137.s runtime/windows/n138.s runtime/windows/n139.s runtime/windows/n140.s runtime/windows/n141.s runtime/windows/n142.s runtime/windows/n143.s runtime/windows/n144.s runtime/windows/n145.s runtime/windows/n146.s runtime/windows/n147.s runtime/windows/n148.s runtime/windows/n149.s runtime/windows/n150.s runtime/windows/n151.s runtime/windows/n152.s runtime/windows/n153.s runtime/windows/n154.s runtime/windows/n155.s runtime/windows/n156.s runtime/windows/n157.s runtime/windows/n158.s runtime/windows/n159.s runtime/windows/n160.s runtime/windows/n161.s runtime/windows/n162.s runtime/windows/n163.s runtime/windows/n164.s runtime/windows/n165.s runtime/windows/n166.s runtime/windows/n167.s runtime/windows/n168.s runtime/windows/n169.s runtime/windows/n170.s runtime/windows/n171.s runtime/windows/n172.s runtime/windows/n173.s runtime/windows/n174.s runtime/windows/n175.s runtime/windows/n176.s runtime/windows/n177.s runtime/windows/n178.s runtime/windows/n179.s runtime/windows/n180.s runtime/windows/n181.s runtime/windows/n182.s runtime/windows/n183.s runtime/windows/n184.s runtime/windows/n185.s runtime/windows/n186.s runtime/windows/n187.s runtime/windows/n188.s runtime/windows/n189.s runtime/windows/n190.s runtime/windows/n191.s runtime/windows/n192.s runtime/windows/n193.s runtime/windows/n194.s runtime/windows/n195.s runtime/windows/n196.s runtime/windows/n197.s runtime/windows/n198.s runtime/windows/n199.s runtime/windows/n200.s runtime/windows/n201.s runtime/windows/n202.s runtime/windows/n203.s runtime/windows/n204.s runtime/windows/n205.s runtime/windows/n206.s runtime/windows/n207.s runtime/windows/n208.s runtime/windows/n209.s runtime/windows/n210.s runtime/windows/n211.s runtime/windows/n212.s runtime/windows/n213.s runtime/windows/n214.s runtime/windows/n215.s runtime/windows/n216.s runtime/windows/n217.s runtime/windows/n218.s runtime/windows/n219.s runtime/windows/n220.s runtime/windows/n221.s runtime/windows/n222.s runtime/windows/n223.s runtime/windows/n224.s runtime/windows/n225.s runtime/windows/n226.s runtime/windows/n227.s runtime/windows/n228.s runtime/windows/n229.s runtime/windows/n230.s runtime/windows/n231.s runtime/windows/n232.s runtime/windows/n233.s runtime/windows/n234.s runtime/windows/n235.s runtime/windows/n236.s runtime/windows/n237.s runtime/windows/n238.s runtime/windows/n239.s runtime/windows/n240.s runtime/windows/n241.s runtime/windows/n242.s runtime/windows/n243.s runtime/windows/n244.s runtime/windows/n245.s runtime/windows/n246.s runtime/windows/n247.s runtime/windows/n248.s runtime/windows/n249.s runtime/windows/n250.s runtime/windows/n251.s runtime/windows/n252.s runtime/windows/n253.s runtime/windows/n254.s runtime/windows/n255.s
	cat $^ > $@

runtime/windows/n%.s: bin/lamb
	echo $(patsubst runtime/windows/n%.s,%,$@) | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n$(patsubst runtime/windows/n%.s,%,$@)/' > runtime/windows/n$(patsubst runtime/windows/n%.s,%,$@).s
