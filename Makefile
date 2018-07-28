
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

runtime/linux/n0.s: bin/lamb
	echo 0 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n0/' > runtime/linux/n0.s
runtime/linux/n1.s: bin/lamb
	echo 1 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n1/' > runtime/linux/n1.s
runtime/linux/n2.s: bin/lamb
	echo 2 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n2/' > runtime/linux/n2.s
runtime/linux/n3.s: bin/lamb
	echo 3 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n3/' > runtime/linux/n3.s
runtime/linux/n4.s: bin/lamb
	echo 4 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n4/' > runtime/linux/n4.s
runtime/linux/n5.s: bin/lamb
	echo 5 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n5/' > runtime/linux/n5.s
runtime/linux/n6.s: bin/lamb
	echo 6 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n6/' > runtime/linux/n6.s
runtime/linux/n7.s: bin/lamb
	echo 7 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n7/' > runtime/linux/n7.s
runtime/linux/n8.s: bin/lamb
	echo 8 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n8/' > runtime/linux/n8.s
runtime/linux/n9.s: bin/lamb
	echo 9 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n9/' > runtime/linux/n9.s
runtime/linux/n10.s: bin/lamb
	echo 10 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n10/' > runtime/linux/n10.s
runtime/linux/n11.s: bin/lamb
	echo 11 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n11/' > runtime/linux/n11.s
runtime/linux/n12.s: bin/lamb
	echo 12 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n12/' > runtime/linux/n12.s
runtime/linux/n13.s: bin/lamb
	echo 13 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n13/' > runtime/linux/n13.s
runtime/linux/n14.s: bin/lamb
	echo 14 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n14/' > runtime/linux/n14.s
runtime/linux/n15.s: bin/lamb
	echo 15 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n15/' > runtime/linux/n15.s
runtime/linux/n16.s: bin/lamb
	echo 16 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n16/' > runtime/linux/n16.s
runtime/linux/n17.s: bin/lamb
	echo 17 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n17/' > runtime/linux/n17.s
runtime/linux/n18.s: bin/lamb
	echo 18 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n18/' > runtime/linux/n18.s
runtime/linux/n19.s: bin/lamb
	echo 19 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n19/' > runtime/linux/n19.s
runtime/linux/n20.s: bin/lamb
	echo 20 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n20/' > runtime/linux/n20.s
runtime/linux/n21.s: bin/lamb
	echo 21 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n21/' > runtime/linux/n21.s
runtime/linux/n22.s: bin/lamb
	echo 22 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n22/' > runtime/linux/n22.s
runtime/linux/n23.s: bin/lamb
	echo 23 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n23/' > runtime/linux/n23.s
runtime/linux/n24.s: bin/lamb
	echo 24 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n24/' > runtime/linux/n24.s
runtime/linux/n25.s: bin/lamb
	echo 25 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n25/' > runtime/linux/n25.s
runtime/linux/n26.s: bin/lamb
	echo 26 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n26/' > runtime/linux/n26.s
runtime/linux/n27.s: bin/lamb
	echo 27 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n27/' > runtime/linux/n27.s
runtime/linux/n28.s: bin/lamb
	echo 28 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n28/' > runtime/linux/n28.s
runtime/linux/n29.s: bin/lamb
	echo 29 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n29/' > runtime/linux/n29.s
runtime/linux/n30.s: bin/lamb
	echo 30 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n30/' > runtime/linux/n30.s
runtime/linux/n31.s: bin/lamb
	echo 31 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n31/' > runtime/linux/n31.s
runtime/linux/n32.s: bin/lamb
	echo 32 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n32/' > runtime/linux/n32.s
runtime/linux/n33.s: bin/lamb
	echo 33 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n33/' > runtime/linux/n33.s
runtime/linux/n34.s: bin/lamb
	echo 34 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n34/' > runtime/linux/n34.s
runtime/linux/n35.s: bin/lamb
	echo 35 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n35/' > runtime/linux/n35.s
runtime/linux/n36.s: bin/lamb
	echo 36 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n36/' > runtime/linux/n36.s
runtime/linux/n37.s: bin/lamb
	echo 37 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n37/' > runtime/linux/n37.s
runtime/linux/n38.s: bin/lamb
	echo 38 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n38/' > runtime/linux/n38.s
runtime/linux/n39.s: bin/lamb
	echo 39 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n39/' > runtime/linux/n39.s
runtime/linux/n40.s: bin/lamb
	echo 40 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n40/' > runtime/linux/n40.s
runtime/linux/n41.s: bin/lamb
	echo 41 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n41/' > runtime/linux/n41.s
runtime/linux/n42.s: bin/lamb
	echo 42 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n42/' > runtime/linux/n42.s
runtime/linux/n43.s: bin/lamb
	echo 43 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n43/' > runtime/linux/n43.s
runtime/linux/n44.s: bin/lamb
	echo 44 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n44/' > runtime/linux/n44.s
runtime/linux/n45.s: bin/lamb
	echo 45 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n45/' > runtime/linux/n45.s
runtime/linux/n46.s: bin/lamb
	echo 46 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n46/' > runtime/linux/n46.s
runtime/linux/n47.s: bin/lamb
	echo 47 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n47/' > runtime/linux/n47.s
runtime/linux/n48.s: bin/lamb
	echo 48 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n48/' > runtime/linux/n48.s
runtime/linux/n49.s: bin/lamb
	echo 49 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n49/' > runtime/linux/n49.s
runtime/linux/n50.s: bin/lamb
	echo 50 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n50/' > runtime/linux/n50.s
runtime/linux/n51.s: bin/lamb
	echo 51 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n51/' > runtime/linux/n51.s
runtime/linux/n52.s: bin/lamb
	echo 52 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n52/' > runtime/linux/n52.s
runtime/linux/n53.s: bin/lamb
	echo 53 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n53/' > runtime/linux/n53.s
runtime/linux/n54.s: bin/lamb
	echo 54 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n54/' > runtime/linux/n54.s
runtime/linux/n55.s: bin/lamb
	echo 55 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n55/' > runtime/linux/n55.s
runtime/linux/n56.s: bin/lamb
	echo 56 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n56/' > runtime/linux/n56.s
runtime/linux/n57.s: bin/lamb
	echo 57 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n57/' > runtime/linux/n57.s
runtime/linux/n58.s: bin/lamb
	echo 58 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n58/' > runtime/linux/n58.s
runtime/linux/n59.s: bin/lamb
	echo 59 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n59/' > runtime/linux/n59.s
runtime/linux/n60.s: bin/lamb
	echo 60 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n60/' > runtime/linux/n60.s
runtime/linux/n61.s: bin/lamb
	echo 61 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n61/' > runtime/linux/n61.s
runtime/linux/n62.s: bin/lamb
	echo 62 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n62/' > runtime/linux/n62.s
runtime/linux/n63.s: bin/lamb
	echo 63 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n63/' > runtime/linux/n63.s
runtime/linux/n64.s: bin/lamb
	echo 64 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n64/' > runtime/linux/n64.s
runtime/linux/n65.s: bin/lamb
	echo 65 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n65/' > runtime/linux/n65.s
runtime/linux/n66.s: bin/lamb
	echo 66 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n66/' > runtime/linux/n66.s
runtime/linux/n67.s: bin/lamb
	echo 67 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n67/' > runtime/linux/n67.s
runtime/linux/n68.s: bin/lamb
	echo 68 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n68/' > runtime/linux/n68.s
runtime/linux/n69.s: bin/lamb
	echo 69 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n69/' > runtime/linux/n69.s
runtime/linux/n70.s: bin/lamb
	echo 70 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n70/' > runtime/linux/n70.s
runtime/linux/n71.s: bin/lamb
	echo 71 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n71/' > runtime/linux/n71.s
runtime/linux/n72.s: bin/lamb
	echo 72 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n72/' > runtime/linux/n72.s
runtime/linux/n73.s: bin/lamb
	echo 73 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n73/' > runtime/linux/n73.s
runtime/linux/n74.s: bin/lamb
	echo 74 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n74/' > runtime/linux/n74.s
runtime/linux/n75.s: bin/lamb
	echo 75 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n75/' > runtime/linux/n75.s
runtime/linux/n76.s: bin/lamb
	echo 76 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n76/' > runtime/linux/n76.s
runtime/linux/n77.s: bin/lamb
	echo 77 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n77/' > runtime/linux/n77.s
runtime/linux/n78.s: bin/lamb
	echo 78 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n78/' > runtime/linux/n78.s
runtime/linux/n79.s: bin/lamb
	echo 79 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n79/' > runtime/linux/n79.s
runtime/linux/n80.s: bin/lamb
	echo 80 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n80/' > runtime/linux/n80.s
runtime/linux/n81.s: bin/lamb
	echo 81 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n81/' > runtime/linux/n81.s
runtime/linux/n82.s: bin/lamb
	echo 82 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n82/' > runtime/linux/n82.s
runtime/linux/n83.s: bin/lamb
	echo 83 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n83/' > runtime/linux/n83.s
runtime/linux/n84.s: bin/lamb
	echo 84 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n84/' > runtime/linux/n84.s
runtime/linux/n85.s: bin/lamb
	echo 85 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n85/' > runtime/linux/n85.s
runtime/linux/n86.s: bin/lamb
	echo 86 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n86/' > runtime/linux/n86.s
runtime/linux/n87.s: bin/lamb
	echo 87 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n87/' > runtime/linux/n87.s
runtime/linux/n88.s: bin/lamb
	echo 88 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n88/' > runtime/linux/n88.s
runtime/linux/n89.s: bin/lamb
	echo 89 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n89/' > runtime/linux/n89.s
runtime/linux/n90.s: bin/lamb
	echo 90 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n90/' > runtime/linux/n90.s
runtime/linux/n91.s: bin/lamb
	echo 91 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n91/' > runtime/linux/n91.s
runtime/linux/n92.s: bin/lamb
	echo 92 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n92/' > runtime/linux/n92.s
runtime/linux/n93.s: bin/lamb
	echo 93 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n93/' > runtime/linux/n93.s
runtime/linux/n94.s: bin/lamb
	echo 94 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n94/' > runtime/linux/n94.s
runtime/linux/n95.s: bin/lamb
	echo 95 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n95/' > runtime/linux/n95.s
runtime/linux/n96.s: bin/lamb
	echo 96 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n96/' > runtime/linux/n96.s
runtime/linux/n97.s: bin/lamb
	echo 97 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n97/' > runtime/linux/n97.s
runtime/linux/n98.s: bin/lamb
	echo 98 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n98/' > runtime/linux/n98.s
runtime/linux/n99.s: bin/lamb
	echo 99 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n99/' > runtime/linux/n99.s
runtime/linux/n100.s: bin/lamb
	echo 100 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n100/' > runtime/linux/n100.s
runtime/linux/n101.s: bin/lamb
	echo 101 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n101/' > runtime/linux/n101.s
runtime/linux/n102.s: bin/lamb
	echo 102 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n102/' > runtime/linux/n102.s
runtime/linux/n103.s: bin/lamb
	echo 103 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n103/' > runtime/linux/n103.s
runtime/linux/n104.s: bin/lamb
	echo 104 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n104/' > runtime/linux/n104.s
runtime/linux/n105.s: bin/lamb
	echo 105 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n105/' > runtime/linux/n105.s
runtime/linux/n106.s: bin/lamb
	echo 106 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n106/' > runtime/linux/n106.s
runtime/linux/n107.s: bin/lamb
	echo 107 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n107/' > runtime/linux/n107.s
runtime/linux/n108.s: bin/lamb
	echo 108 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n108/' > runtime/linux/n108.s
runtime/linux/n109.s: bin/lamb
	echo 109 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n109/' > runtime/linux/n109.s
runtime/linux/n110.s: bin/lamb
	echo 110 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n110/' > runtime/linux/n110.s
runtime/linux/n111.s: bin/lamb
	echo 111 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n111/' > runtime/linux/n111.s
runtime/linux/n112.s: bin/lamb
	echo 112 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n112/' > runtime/linux/n112.s
runtime/linux/n113.s: bin/lamb
	echo 113 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n113/' > runtime/linux/n113.s
runtime/linux/n114.s: bin/lamb
	echo 114 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n114/' > runtime/linux/n114.s
runtime/linux/n115.s: bin/lamb
	echo 115 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n115/' > runtime/linux/n115.s
runtime/linux/n116.s: bin/lamb
	echo 116 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n116/' > runtime/linux/n116.s
runtime/linux/n117.s: bin/lamb
	echo 117 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n117/' > runtime/linux/n117.s
runtime/linux/n118.s: bin/lamb
	echo 118 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n118/' > runtime/linux/n118.s
runtime/linux/n119.s: bin/lamb
	echo 119 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n119/' > runtime/linux/n119.s
runtime/linux/n120.s: bin/lamb
	echo 120 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n120/' > runtime/linux/n120.s
runtime/linux/n121.s: bin/lamb
	echo 121 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n121/' > runtime/linux/n121.s
runtime/linux/n122.s: bin/lamb
	echo 122 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n122/' > runtime/linux/n122.s
runtime/linux/n123.s: bin/lamb
	echo 123 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n123/' > runtime/linux/n123.s
runtime/linux/n124.s: bin/lamb
	echo 124 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n124/' > runtime/linux/n124.s
runtime/linux/n125.s: bin/lamb
	echo 125 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n125/' > runtime/linux/n125.s
runtime/linux/n126.s: bin/lamb
	echo 126 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n126/' > runtime/linux/n126.s
runtime/linux/n127.s: bin/lamb
	echo 127 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n127/' > runtime/linux/n127.s
runtime/linux/n128.s: bin/lamb
	echo 128 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n128/' > runtime/linux/n128.s
runtime/linux/n129.s: bin/lamb
	echo 129 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n129/' > runtime/linux/n129.s
runtime/linux/n130.s: bin/lamb
	echo 130 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n130/' > runtime/linux/n130.s
runtime/linux/n131.s: bin/lamb
	echo 131 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n131/' > runtime/linux/n131.s
runtime/linux/n132.s: bin/lamb
	echo 132 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n132/' > runtime/linux/n132.s
runtime/linux/n133.s: bin/lamb
	echo 133 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n133/' > runtime/linux/n133.s
runtime/linux/n134.s: bin/lamb
	echo 134 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n134/' > runtime/linux/n134.s
runtime/linux/n135.s: bin/lamb
	echo 135 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n135/' > runtime/linux/n135.s
runtime/linux/n136.s: bin/lamb
	echo 136 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n136/' > runtime/linux/n136.s
runtime/linux/n137.s: bin/lamb
	echo 137 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n137/' > runtime/linux/n137.s
runtime/linux/n138.s: bin/lamb
	echo 138 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n138/' > runtime/linux/n138.s
runtime/linux/n139.s: bin/lamb
	echo 139 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n139/' > runtime/linux/n139.s
runtime/linux/n140.s: bin/lamb
	echo 140 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n140/' > runtime/linux/n140.s
runtime/linux/n141.s: bin/lamb
	echo 141 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n141/' > runtime/linux/n141.s
runtime/linux/n142.s: bin/lamb
	echo 142 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n142/' > runtime/linux/n142.s
runtime/linux/n143.s: bin/lamb
	echo 143 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n143/' > runtime/linux/n143.s
runtime/linux/n144.s: bin/lamb
	echo 144 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n144/' > runtime/linux/n144.s
runtime/linux/n145.s: bin/lamb
	echo 145 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n145/' > runtime/linux/n145.s
runtime/linux/n146.s: bin/lamb
	echo 146 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n146/' > runtime/linux/n146.s
runtime/linux/n147.s: bin/lamb
	echo 147 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n147/' > runtime/linux/n147.s
runtime/linux/n148.s: bin/lamb
	echo 148 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n148/' > runtime/linux/n148.s
runtime/linux/n149.s: bin/lamb
	echo 149 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n149/' > runtime/linux/n149.s
runtime/linux/n150.s: bin/lamb
	echo 150 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n150/' > runtime/linux/n150.s
runtime/linux/n151.s: bin/lamb
	echo 151 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n151/' > runtime/linux/n151.s
runtime/linux/n152.s: bin/lamb
	echo 152 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n152/' > runtime/linux/n152.s
runtime/linux/n153.s: bin/lamb
	echo 153 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n153/' > runtime/linux/n153.s
runtime/linux/n154.s: bin/lamb
	echo 154 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n154/' > runtime/linux/n154.s
runtime/linux/n155.s: bin/lamb
	echo 155 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n155/' > runtime/linux/n155.s
runtime/linux/n156.s: bin/lamb
	echo 156 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n156/' > runtime/linux/n156.s
runtime/linux/n157.s: bin/lamb
	echo 157 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n157/' > runtime/linux/n157.s
runtime/linux/n158.s: bin/lamb
	echo 158 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n158/' > runtime/linux/n158.s
runtime/linux/n159.s: bin/lamb
	echo 159 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n159/' > runtime/linux/n159.s
runtime/linux/n160.s: bin/lamb
	echo 160 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n160/' > runtime/linux/n160.s
runtime/linux/n161.s: bin/lamb
	echo 161 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n161/' > runtime/linux/n161.s
runtime/linux/n162.s: bin/lamb
	echo 162 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n162/' > runtime/linux/n162.s
runtime/linux/n163.s: bin/lamb
	echo 163 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n163/' > runtime/linux/n163.s
runtime/linux/n164.s: bin/lamb
	echo 164 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n164/' > runtime/linux/n164.s
runtime/linux/n165.s: bin/lamb
	echo 165 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n165/' > runtime/linux/n165.s
runtime/linux/n166.s: bin/lamb
	echo 166 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n166/' > runtime/linux/n166.s
runtime/linux/n167.s: bin/lamb
	echo 167 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n167/' > runtime/linux/n167.s
runtime/linux/n168.s: bin/lamb
	echo 168 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n168/' > runtime/linux/n168.s
runtime/linux/n169.s: bin/lamb
	echo 169 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n169/' > runtime/linux/n169.s
runtime/linux/n170.s: bin/lamb
	echo 170 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n170/' > runtime/linux/n170.s
runtime/linux/n171.s: bin/lamb
	echo 171 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n171/' > runtime/linux/n171.s
runtime/linux/n172.s: bin/lamb
	echo 172 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n172/' > runtime/linux/n172.s
runtime/linux/n173.s: bin/lamb
	echo 173 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n173/' > runtime/linux/n173.s
runtime/linux/n174.s: bin/lamb
	echo 174 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n174/' > runtime/linux/n174.s
runtime/linux/n175.s: bin/lamb
	echo 175 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n175/' > runtime/linux/n175.s
runtime/linux/n176.s: bin/lamb
	echo 176 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n176/' > runtime/linux/n176.s
runtime/linux/n177.s: bin/lamb
	echo 177 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n177/' > runtime/linux/n177.s
runtime/linux/n178.s: bin/lamb
	echo 178 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n178/' > runtime/linux/n178.s
runtime/linux/n179.s: bin/lamb
	echo 179 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n179/' > runtime/linux/n179.s
runtime/linux/n180.s: bin/lamb
	echo 180 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n180/' > runtime/linux/n180.s
runtime/linux/n181.s: bin/lamb
	echo 181 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n181/' > runtime/linux/n181.s
runtime/linux/n182.s: bin/lamb
	echo 182 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n182/' > runtime/linux/n182.s
runtime/linux/n183.s: bin/lamb
	echo 183 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n183/' > runtime/linux/n183.s
runtime/linux/n184.s: bin/lamb
	echo 184 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n184/' > runtime/linux/n184.s
runtime/linux/n185.s: bin/lamb
	echo 185 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n185/' > runtime/linux/n185.s
runtime/linux/n186.s: bin/lamb
	echo 186 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n186/' > runtime/linux/n186.s
runtime/linux/n187.s: bin/lamb
	echo 187 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n187/' > runtime/linux/n187.s
runtime/linux/n188.s: bin/lamb
	echo 188 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n188/' > runtime/linux/n188.s
runtime/linux/n189.s: bin/lamb
	echo 189 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n189/' > runtime/linux/n189.s
runtime/linux/n190.s: bin/lamb
	echo 190 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n190/' > runtime/linux/n190.s
runtime/linux/n191.s: bin/lamb
	echo 191 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n191/' > runtime/linux/n191.s
runtime/linux/n192.s: bin/lamb
	echo 192 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n192/' > runtime/linux/n192.s
runtime/linux/n193.s: bin/lamb
	echo 193 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n193/' > runtime/linux/n193.s
runtime/linux/n194.s: bin/lamb
	echo 194 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n194/' > runtime/linux/n194.s
runtime/linux/n195.s: bin/lamb
	echo 195 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n195/' > runtime/linux/n195.s
runtime/linux/n196.s: bin/lamb
	echo 196 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n196/' > runtime/linux/n196.s
runtime/linux/n197.s: bin/lamb
	echo 197 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n197/' > runtime/linux/n197.s
runtime/linux/n198.s: bin/lamb
	echo 198 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n198/' > runtime/linux/n198.s
runtime/linux/n199.s: bin/lamb
	echo 199 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n199/' > runtime/linux/n199.s
runtime/linux/n200.s: bin/lamb
	echo 200 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n200/' > runtime/linux/n200.s
runtime/linux/n201.s: bin/lamb
	echo 201 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n201/' > runtime/linux/n201.s
runtime/linux/n202.s: bin/lamb
	echo 202 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n202/' > runtime/linux/n202.s
runtime/linux/n203.s: bin/lamb
	echo 203 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n203/' > runtime/linux/n203.s
runtime/linux/n204.s: bin/lamb
	echo 204 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n204/' > runtime/linux/n204.s
runtime/linux/n205.s: bin/lamb
	echo 205 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n205/' > runtime/linux/n205.s
runtime/linux/n206.s: bin/lamb
	echo 206 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n206/' > runtime/linux/n206.s
runtime/linux/n207.s: bin/lamb
	echo 207 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n207/' > runtime/linux/n207.s
runtime/linux/n208.s: bin/lamb
	echo 208 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n208/' > runtime/linux/n208.s
runtime/linux/n209.s: bin/lamb
	echo 209 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n209/' > runtime/linux/n209.s
runtime/linux/n210.s: bin/lamb
	echo 210 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n210/' > runtime/linux/n210.s
runtime/linux/n211.s: bin/lamb
	echo 211 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n211/' > runtime/linux/n211.s
runtime/linux/n212.s: bin/lamb
	echo 212 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n212/' > runtime/linux/n212.s
runtime/linux/n213.s: bin/lamb
	echo 213 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n213/' > runtime/linux/n213.s
runtime/linux/n214.s: bin/lamb
	echo 214 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n214/' > runtime/linux/n214.s
runtime/linux/n215.s: bin/lamb
	echo 215 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n215/' > runtime/linux/n215.s
runtime/linux/n216.s: bin/lamb
	echo 216 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n216/' > runtime/linux/n216.s
runtime/linux/n217.s: bin/lamb
	echo 217 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n217/' > runtime/linux/n217.s
runtime/linux/n218.s: bin/lamb
	echo 218 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n218/' > runtime/linux/n218.s
runtime/linux/n219.s: bin/lamb
	echo 219 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n219/' > runtime/linux/n219.s
runtime/linux/n220.s: bin/lamb
	echo 220 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n220/' > runtime/linux/n220.s
runtime/linux/n221.s: bin/lamb
	echo 221 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n221/' > runtime/linux/n221.s
runtime/linux/n222.s: bin/lamb
	echo 222 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n222/' > runtime/linux/n222.s
runtime/linux/n223.s: bin/lamb
	echo 223 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n223/' > runtime/linux/n223.s
runtime/linux/n224.s: bin/lamb
	echo 224 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n224/' > runtime/linux/n224.s
runtime/linux/n225.s: bin/lamb
	echo 225 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n225/' > runtime/linux/n225.s
runtime/linux/n226.s: bin/lamb
	echo 226 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n226/' > runtime/linux/n226.s
runtime/linux/n227.s: bin/lamb
	echo 227 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n227/' > runtime/linux/n227.s
runtime/linux/n228.s: bin/lamb
	echo 228 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n228/' > runtime/linux/n228.s
runtime/linux/n229.s: bin/lamb
	echo 229 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n229/' > runtime/linux/n229.s
runtime/linux/n230.s: bin/lamb
	echo 230 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n230/' > runtime/linux/n230.s
runtime/linux/n231.s: bin/lamb
	echo 231 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n231/' > runtime/linux/n231.s
runtime/linux/n232.s: bin/lamb
	echo 232 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n232/' > runtime/linux/n232.s
runtime/linux/n233.s: bin/lamb
	echo 233 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n233/' > runtime/linux/n233.s
runtime/linux/n234.s: bin/lamb
	echo 234 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n234/' > runtime/linux/n234.s
runtime/linux/n235.s: bin/lamb
	echo 235 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n235/' > runtime/linux/n235.s
runtime/linux/n236.s: bin/lamb
	echo 236 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n236/' > runtime/linux/n236.s
runtime/linux/n237.s: bin/lamb
	echo 237 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n237/' > runtime/linux/n237.s
runtime/linux/n238.s: bin/lamb
	echo 238 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n238/' > runtime/linux/n238.s
runtime/linux/n239.s: bin/lamb
	echo 239 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n239/' > runtime/linux/n239.s
runtime/linux/n240.s: bin/lamb
	echo 240 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n240/' > runtime/linux/n240.s
runtime/linux/n241.s: bin/lamb
	echo 241 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n241/' > runtime/linux/n241.s
runtime/linux/n242.s: bin/lamb
	echo 242 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n242/' > runtime/linux/n242.s
runtime/linux/n243.s: bin/lamb
	echo 243 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n243/' > runtime/linux/n243.s
runtime/linux/n244.s: bin/lamb
	echo 244 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n244/' > runtime/linux/n244.s
runtime/linux/n245.s: bin/lamb
	echo 245 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n245/' > runtime/linux/n245.s
runtime/linux/n246.s: bin/lamb
	echo 246 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n246/' > runtime/linux/n246.s
runtime/linux/n247.s: bin/lamb
	echo 247 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n247/' > runtime/linux/n247.s
runtime/linux/n248.s: bin/lamb
	echo 248 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n248/' > runtime/linux/n248.s
runtime/linux/n249.s: bin/lamb
	echo 249 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n249/' > runtime/linux/n249.s
runtime/linux/n250.s: bin/lamb
	echo 250 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n250/' > runtime/linux/n250.s
runtime/linux/n251.s: bin/lamb
	echo 251 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n251/' > runtime/linux/n251.s
runtime/linux/n252.s: bin/lamb
	echo 252 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n252/' > runtime/linux/n252.s
runtime/linux/n253.s: bin/lamb
	echo 253 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n253/' > runtime/linux/n253.s
runtime/linux/n254.s: bin/lamb
	echo 254 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n254/' > runtime/linux/n254.s
runtime/linux/n255.s: bin/lamb
	echo 255 | bin/lamb --untyped --compile --target linux | sed 's/lamb_main/lamb_n255/' > runtime/linux/n255.s

runtime/windows/numbers.s: runtime/windows/n0.s runtime/windows/n1.s runtime/windows/n2.s runtime/windows/n3.s runtime/windows/n4.s runtime/windows/n5.s runtime/windows/n6.s runtime/windows/n7.s runtime/windows/n8.s runtime/windows/n9.s runtime/windows/n10.s runtime/windows/n11.s runtime/windows/n12.s runtime/windows/n13.s runtime/windows/n14.s runtime/windows/n15.s runtime/windows/n16.s runtime/windows/n17.s runtime/windows/n18.s runtime/windows/n19.s runtime/windows/n20.s runtime/windows/n21.s runtime/windows/n22.s runtime/windows/n23.s runtime/windows/n24.s runtime/windows/n25.s runtime/windows/n26.s runtime/windows/n27.s runtime/windows/n28.s runtime/windows/n29.s runtime/windows/n30.s runtime/windows/n31.s runtime/windows/n32.s runtime/windows/n33.s runtime/windows/n34.s runtime/windows/n35.s runtime/windows/n36.s runtime/windows/n37.s runtime/windows/n38.s runtime/windows/n39.s runtime/windows/n40.s runtime/windows/n41.s runtime/windows/n42.s runtime/windows/n43.s runtime/windows/n44.s runtime/windows/n45.s runtime/windows/n46.s runtime/windows/n47.s runtime/windows/n48.s runtime/windows/n49.s runtime/windows/n50.s runtime/windows/n51.s runtime/windows/n52.s runtime/windows/n53.s runtime/windows/n54.s runtime/windows/n55.s runtime/windows/n56.s runtime/windows/n57.s runtime/windows/n58.s runtime/windows/n59.s runtime/windows/n60.s runtime/windows/n61.s runtime/windows/n62.s runtime/windows/n63.s runtime/windows/n64.s runtime/windows/n65.s runtime/windows/n66.s runtime/windows/n67.s runtime/windows/n68.s runtime/windows/n69.s runtime/windows/n70.s runtime/windows/n71.s runtime/windows/n72.s runtime/windows/n73.s runtime/windows/n74.s runtime/windows/n75.s runtime/windows/n76.s runtime/windows/n77.s runtime/windows/n78.s runtime/windows/n79.s runtime/windows/n80.s runtime/windows/n81.s runtime/windows/n82.s runtime/windows/n83.s runtime/windows/n84.s runtime/windows/n85.s runtime/windows/n86.s runtime/windows/n87.s runtime/windows/n88.s runtime/windows/n89.s runtime/windows/n90.s runtime/windows/n91.s runtime/windows/n92.s runtime/windows/n93.s runtime/windows/n94.s runtime/windows/n95.s runtime/windows/n96.s runtime/windows/n97.s runtime/windows/n98.s runtime/windows/n99.s runtime/windows/n100.s runtime/windows/n101.s runtime/windows/n102.s runtime/windows/n103.s runtime/windows/n104.s runtime/windows/n105.s runtime/windows/n106.s runtime/windows/n107.s runtime/windows/n108.s runtime/windows/n109.s runtime/windows/n110.s runtime/windows/n111.s runtime/windows/n112.s runtime/windows/n113.s runtime/windows/n114.s runtime/windows/n115.s runtime/windows/n116.s runtime/windows/n117.s runtime/windows/n118.s runtime/windows/n119.s runtime/windows/n120.s runtime/windows/n121.s runtime/windows/n122.s runtime/windows/n123.s runtime/windows/n124.s runtime/windows/n125.s runtime/windows/n126.s runtime/windows/n127.s runtime/windows/n128.s runtime/windows/n129.s runtime/windows/n130.s runtime/windows/n131.s runtime/windows/n132.s runtime/windows/n133.s runtime/windows/n134.s runtime/windows/n135.s runtime/windows/n136.s runtime/windows/n137.s runtime/windows/n138.s runtime/windows/n139.s runtime/windows/n140.s runtime/windows/n141.s runtime/windows/n142.s runtime/windows/n143.s runtime/windows/n144.s runtime/windows/n145.s runtime/windows/n146.s runtime/windows/n147.s runtime/windows/n148.s runtime/windows/n149.s runtime/windows/n150.s runtime/windows/n151.s runtime/windows/n152.s runtime/windows/n153.s runtime/windows/n154.s runtime/windows/n155.s runtime/windows/n156.s runtime/windows/n157.s runtime/windows/n158.s runtime/windows/n159.s runtime/windows/n160.s runtime/windows/n161.s runtime/windows/n162.s runtime/windows/n163.s runtime/windows/n164.s runtime/windows/n165.s runtime/windows/n166.s runtime/windows/n167.s runtime/windows/n168.s runtime/windows/n169.s runtime/windows/n170.s runtime/windows/n171.s runtime/windows/n172.s runtime/windows/n173.s runtime/windows/n174.s runtime/windows/n175.s runtime/windows/n176.s runtime/windows/n177.s runtime/windows/n178.s runtime/windows/n179.s runtime/windows/n180.s runtime/windows/n181.s runtime/windows/n182.s runtime/windows/n183.s runtime/windows/n184.s runtime/windows/n185.s runtime/windows/n186.s runtime/windows/n187.s runtime/windows/n188.s runtime/windows/n189.s runtime/windows/n190.s runtime/windows/n191.s runtime/windows/n192.s runtime/windows/n193.s runtime/windows/n194.s runtime/windows/n195.s runtime/windows/n196.s runtime/windows/n197.s runtime/windows/n198.s runtime/windows/n199.s runtime/windows/n200.s runtime/windows/n201.s runtime/windows/n202.s runtime/windows/n203.s runtime/windows/n204.s runtime/windows/n205.s runtime/windows/n206.s runtime/windows/n207.s runtime/windows/n208.s runtime/windows/n209.s runtime/windows/n210.s runtime/windows/n211.s runtime/windows/n212.s runtime/windows/n213.s runtime/windows/n214.s runtime/windows/n215.s runtime/windows/n216.s runtime/windows/n217.s runtime/windows/n218.s runtime/windows/n219.s runtime/windows/n220.s runtime/windows/n221.s runtime/windows/n222.s runtime/windows/n223.s runtime/windows/n224.s runtime/windows/n225.s runtime/windows/n226.s runtime/windows/n227.s runtime/windows/n228.s runtime/windows/n229.s runtime/windows/n230.s runtime/windows/n231.s runtime/windows/n232.s runtime/windows/n233.s runtime/windows/n234.s runtime/windows/n235.s runtime/windows/n236.s runtime/windows/n237.s runtime/windows/n238.s runtime/windows/n239.s runtime/windows/n240.s runtime/windows/n241.s runtime/windows/n242.s runtime/windows/n243.s runtime/windows/n244.s runtime/windows/n245.s runtime/windows/n246.s runtime/windows/n247.s runtime/windows/n248.s runtime/windows/n249.s runtime/windows/n250.s runtime/windows/n251.s runtime/windows/n252.s runtime/windows/n253.s runtime/windows/n254.s runtime/windows/n255.s
	cat $^ > $@

runtime/windows/n0.s: bin/lamb
	echo 0 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n0/' > runtime/windows/n0.s
runtime/windows/n1.s: bin/lamb
	echo 1 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n1/' > runtime/windows/n1.s
runtime/windows/n2.s: bin/lamb
	echo 2 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n2/' > runtime/windows/n2.s
runtime/windows/n3.s: bin/lamb
	echo 3 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n3/' > runtime/windows/n3.s
runtime/windows/n4.s: bin/lamb
	echo 4 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n4/' > runtime/windows/n4.s
runtime/windows/n5.s: bin/lamb
	echo 5 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n5/' > runtime/windows/n5.s
runtime/windows/n6.s: bin/lamb
	echo 6 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n6/' > runtime/windows/n6.s
runtime/windows/n7.s: bin/lamb
	echo 7 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n7/' > runtime/windows/n7.s
runtime/windows/n8.s: bin/lamb
	echo 8 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n8/' > runtime/windows/n8.s
runtime/windows/n9.s: bin/lamb
	echo 9 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n9/' > runtime/windows/n9.s
runtime/windows/n10.s: bin/lamb
	echo 10 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n10/' > runtime/windows/n10.s
runtime/windows/n11.s: bin/lamb
	echo 11 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n11/' > runtime/windows/n11.s
runtime/windows/n12.s: bin/lamb
	echo 12 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n12/' > runtime/windows/n12.s
runtime/windows/n13.s: bin/lamb
	echo 13 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n13/' > runtime/windows/n13.s
runtime/windows/n14.s: bin/lamb
	echo 14 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n14/' > runtime/windows/n14.s
runtime/windows/n15.s: bin/lamb
	echo 15 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n15/' > runtime/windows/n15.s
runtime/windows/n16.s: bin/lamb
	echo 16 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n16/' > runtime/windows/n16.s
runtime/windows/n17.s: bin/lamb
	echo 17 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n17/' > runtime/windows/n17.s
runtime/windows/n18.s: bin/lamb
	echo 18 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n18/' > runtime/windows/n18.s
runtime/windows/n19.s: bin/lamb
	echo 19 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n19/' > runtime/windows/n19.s
runtime/windows/n20.s: bin/lamb
	echo 20 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n20/' > runtime/windows/n20.s
runtime/windows/n21.s: bin/lamb
	echo 21 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n21/' > runtime/windows/n21.s
runtime/windows/n22.s: bin/lamb
	echo 22 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n22/' > runtime/windows/n22.s
runtime/windows/n23.s: bin/lamb
	echo 23 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n23/' > runtime/windows/n23.s
runtime/windows/n24.s: bin/lamb
	echo 24 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n24/' > runtime/windows/n24.s
runtime/windows/n25.s: bin/lamb
	echo 25 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n25/' > runtime/windows/n25.s
runtime/windows/n26.s: bin/lamb
	echo 26 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n26/' > runtime/windows/n26.s
runtime/windows/n27.s: bin/lamb
	echo 27 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n27/' > runtime/windows/n27.s
runtime/windows/n28.s: bin/lamb
	echo 28 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n28/' > runtime/windows/n28.s
runtime/windows/n29.s: bin/lamb
	echo 29 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n29/' > runtime/windows/n29.s
runtime/windows/n30.s: bin/lamb
	echo 30 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n30/' > runtime/windows/n30.s
runtime/windows/n31.s: bin/lamb
	echo 31 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n31/' > runtime/windows/n31.s
runtime/windows/n32.s: bin/lamb
	echo 32 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n32/' > runtime/windows/n32.s
runtime/windows/n33.s: bin/lamb
	echo 33 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n33/' > runtime/windows/n33.s
runtime/windows/n34.s: bin/lamb
	echo 34 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n34/' > runtime/windows/n34.s
runtime/windows/n35.s: bin/lamb
	echo 35 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n35/' > runtime/windows/n35.s
runtime/windows/n36.s: bin/lamb
	echo 36 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n36/' > runtime/windows/n36.s
runtime/windows/n37.s: bin/lamb
	echo 37 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n37/' > runtime/windows/n37.s
runtime/windows/n38.s: bin/lamb
	echo 38 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n38/' > runtime/windows/n38.s
runtime/windows/n39.s: bin/lamb
	echo 39 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n39/' > runtime/windows/n39.s
runtime/windows/n40.s: bin/lamb
	echo 40 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n40/' > runtime/windows/n40.s
runtime/windows/n41.s: bin/lamb
	echo 41 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n41/' > runtime/windows/n41.s
runtime/windows/n42.s: bin/lamb
	echo 42 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n42/' > runtime/windows/n42.s
runtime/windows/n43.s: bin/lamb
	echo 43 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n43/' > runtime/windows/n43.s
runtime/windows/n44.s: bin/lamb
	echo 44 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n44/' > runtime/windows/n44.s
runtime/windows/n45.s: bin/lamb
	echo 45 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n45/' > runtime/windows/n45.s
runtime/windows/n46.s: bin/lamb
	echo 46 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n46/' > runtime/windows/n46.s
runtime/windows/n47.s: bin/lamb
	echo 47 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n47/' > runtime/windows/n47.s
runtime/windows/n48.s: bin/lamb
	echo 48 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n48/' > runtime/windows/n48.s
runtime/windows/n49.s: bin/lamb
	echo 49 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n49/' > runtime/windows/n49.s
runtime/windows/n50.s: bin/lamb
	echo 50 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n50/' > runtime/windows/n50.s
runtime/windows/n51.s: bin/lamb
	echo 51 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n51/' > runtime/windows/n51.s
runtime/windows/n52.s: bin/lamb
	echo 52 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n52/' > runtime/windows/n52.s
runtime/windows/n53.s: bin/lamb
	echo 53 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n53/' > runtime/windows/n53.s
runtime/windows/n54.s: bin/lamb
	echo 54 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n54/' > runtime/windows/n54.s
runtime/windows/n55.s: bin/lamb
	echo 55 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n55/' > runtime/windows/n55.s
runtime/windows/n56.s: bin/lamb
	echo 56 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n56/' > runtime/windows/n56.s
runtime/windows/n57.s: bin/lamb
	echo 57 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n57/' > runtime/windows/n57.s
runtime/windows/n58.s: bin/lamb
	echo 58 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n58/' > runtime/windows/n58.s
runtime/windows/n59.s: bin/lamb
	echo 59 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n59/' > runtime/windows/n59.s
runtime/windows/n60.s: bin/lamb
	echo 60 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n60/' > runtime/windows/n60.s
runtime/windows/n61.s: bin/lamb
	echo 61 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n61/' > runtime/windows/n61.s
runtime/windows/n62.s: bin/lamb
	echo 62 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n62/' > runtime/windows/n62.s
runtime/windows/n63.s: bin/lamb
	echo 63 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n63/' > runtime/windows/n63.s
runtime/windows/n64.s: bin/lamb
	echo 64 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n64/' > runtime/windows/n64.s
runtime/windows/n65.s: bin/lamb
	echo 65 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n65/' > runtime/windows/n65.s
runtime/windows/n66.s: bin/lamb
	echo 66 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n66/' > runtime/windows/n66.s
runtime/windows/n67.s: bin/lamb
	echo 67 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n67/' > runtime/windows/n67.s
runtime/windows/n68.s: bin/lamb
	echo 68 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n68/' > runtime/windows/n68.s
runtime/windows/n69.s: bin/lamb
	echo 69 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n69/' > runtime/windows/n69.s
runtime/windows/n70.s: bin/lamb
	echo 70 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n70/' > runtime/windows/n70.s
runtime/windows/n71.s: bin/lamb
	echo 71 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n71/' > runtime/windows/n71.s
runtime/windows/n72.s: bin/lamb
	echo 72 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n72/' > runtime/windows/n72.s
runtime/windows/n73.s: bin/lamb
	echo 73 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n73/' > runtime/windows/n73.s
runtime/windows/n74.s: bin/lamb
	echo 74 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n74/' > runtime/windows/n74.s
runtime/windows/n75.s: bin/lamb
	echo 75 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n75/' > runtime/windows/n75.s
runtime/windows/n76.s: bin/lamb
	echo 76 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n76/' > runtime/windows/n76.s
runtime/windows/n77.s: bin/lamb
	echo 77 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n77/' > runtime/windows/n77.s
runtime/windows/n78.s: bin/lamb
	echo 78 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n78/' > runtime/windows/n78.s
runtime/windows/n79.s: bin/lamb
	echo 79 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n79/' > runtime/windows/n79.s
runtime/windows/n80.s: bin/lamb
	echo 80 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n80/' > runtime/windows/n80.s
runtime/windows/n81.s: bin/lamb
	echo 81 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n81/' > runtime/windows/n81.s
runtime/windows/n82.s: bin/lamb
	echo 82 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n82/' > runtime/windows/n82.s
runtime/windows/n83.s: bin/lamb
	echo 83 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n83/' > runtime/windows/n83.s
runtime/windows/n84.s: bin/lamb
	echo 84 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n84/' > runtime/windows/n84.s
runtime/windows/n85.s: bin/lamb
	echo 85 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n85/' > runtime/windows/n85.s
runtime/windows/n86.s: bin/lamb
	echo 86 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n86/' > runtime/windows/n86.s
runtime/windows/n87.s: bin/lamb
	echo 87 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n87/' > runtime/windows/n87.s
runtime/windows/n88.s: bin/lamb
	echo 88 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n88/' > runtime/windows/n88.s
runtime/windows/n89.s: bin/lamb
	echo 89 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n89/' > runtime/windows/n89.s
runtime/windows/n90.s: bin/lamb
	echo 90 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n90/' > runtime/windows/n90.s
runtime/windows/n91.s: bin/lamb
	echo 91 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n91/' > runtime/windows/n91.s
runtime/windows/n92.s: bin/lamb
	echo 92 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n92/' > runtime/windows/n92.s
runtime/windows/n93.s: bin/lamb
	echo 93 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n93/' > runtime/windows/n93.s
runtime/windows/n94.s: bin/lamb
	echo 94 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n94/' > runtime/windows/n94.s
runtime/windows/n95.s: bin/lamb
	echo 95 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n95/' > runtime/windows/n95.s
runtime/windows/n96.s: bin/lamb
	echo 96 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n96/' > runtime/windows/n96.s
runtime/windows/n97.s: bin/lamb
	echo 97 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n97/' > runtime/windows/n97.s
runtime/windows/n98.s: bin/lamb
	echo 98 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n98/' > runtime/windows/n98.s
runtime/windows/n99.s: bin/lamb
	echo 99 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n99/' > runtime/windows/n99.s
runtime/windows/n100.s: bin/lamb
	echo 100 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n100/' > runtime/windows/n100.s
runtime/windows/n101.s: bin/lamb
	echo 101 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n101/' > runtime/windows/n101.s
runtime/windows/n102.s: bin/lamb
	echo 102 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n102/' > runtime/windows/n102.s
runtime/windows/n103.s: bin/lamb
	echo 103 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n103/' > runtime/windows/n103.s
runtime/windows/n104.s: bin/lamb
	echo 104 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n104/' > runtime/windows/n104.s
runtime/windows/n105.s: bin/lamb
	echo 105 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n105/' > runtime/windows/n105.s
runtime/windows/n106.s: bin/lamb
	echo 106 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n106/' > runtime/windows/n106.s
runtime/windows/n107.s: bin/lamb
	echo 107 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n107/' > runtime/windows/n107.s
runtime/windows/n108.s: bin/lamb
	echo 108 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n108/' > runtime/windows/n108.s
runtime/windows/n109.s: bin/lamb
	echo 109 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n109/' > runtime/windows/n109.s
runtime/windows/n110.s: bin/lamb
	echo 110 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n110/' > runtime/windows/n110.s
runtime/windows/n111.s: bin/lamb
	echo 111 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n111/' > runtime/windows/n111.s
runtime/windows/n112.s: bin/lamb
	echo 112 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n112/' > runtime/windows/n112.s
runtime/windows/n113.s: bin/lamb
	echo 113 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n113/' > runtime/windows/n113.s
runtime/windows/n114.s: bin/lamb
	echo 114 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n114/' > runtime/windows/n114.s
runtime/windows/n115.s: bin/lamb
	echo 115 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n115/' > runtime/windows/n115.s
runtime/windows/n116.s: bin/lamb
	echo 116 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n116/' > runtime/windows/n116.s
runtime/windows/n117.s: bin/lamb
	echo 117 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n117/' > runtime/windows/n117.s
runtime/windows/n118.s: bin/lamb
	echo 118 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n118/' > runtime/windows/n118.s
runtime/windows/n119.s: bin/lamb
	echo 119 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n119/' > runtime/windows/n119.s
runtime/windows/n120.s: bin/lamb
	echo 120 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n120/' > runtime/windows/n120.s
runtime/windows/n121.s: bin/lamb
	echo 121 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n121/' > runtime/windows/n121.s
runtime/windows/n122.s: bin/lamb
	echo 122 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n122/' > runtime/windows/n122.s
runtime/windows/n123.s: bin/lamb
	echo 123 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n123/' > runtime/windows/n123.s
runtime/windows/n124.s: bin/lamb
	echo 124 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n124/' > runtime/windows/n124.s
runtime/windows/n125.s: bin/lamb
	echo 125 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n125/' > runtime/windows/n125.s
runtime/windows/n126.s: bin/lamb
	echo 126 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n126/' > runtime/windows/n126.s
runtime/windows/n127.s: bin/lamb
	echo 127 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n127/' > runtime/windows/n127.s
runtime/windows/n128.s: bin/lamb
	echo 128 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n128/' > runtime/windows/n128.s
runtime/windows/n129.s: bin/lamb
	echo 129 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n129/' > runtime/windows/n129.s
runtime/windows/n130.s: bin/lamb
	echo 130 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n130/' > runtime/windows/n130.s
runtime/windows/n131.s: bin/lamb
	echo 131 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n131/' > runtime/windows/n131.s
runtime/windows/n132.s: bin/lamb
	echo 132 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n132/' > runtime/windows/n132.s
runtime/windows/n133.s: bin/lamb
	echo 133 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n133/' > runtime/windows/n133.s
runtime/windows/n134.s: bin/lamb
	echo 134 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n134/' > runtime/windows/n134.s
runtime/windows/n135.s: bin/lamb
	echo 135 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n135/' > runtime/windows/n135.s
runtime/windows/n136.s: bin/lamb
	echo 136 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n136/' > runtime/windows/n136.s
runtime/windows/n137.s: bin/lamb
	echo 137 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n137/' > runtime/windows/n137.s
runtime/windows/n138.s: bin/lamb
	echo 138 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n138/' > runtime/windows/n138.s
runtime/windows/n139.s: bin/lamb
	echo 139 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n139/' > runtime/windows/n139.s
runtime/windows/n140.s: bin/lamb
	echo 140 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n140/' > runtime/windows/n140.s
runtime/windows/n141.s: bin/lamb
	echo 141 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n141/' > runtime/windows/n141.s
runtime/windows/n142.s: bin/lamb
	echo 142 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n142/' > runtime/windows/n142.s
runtime/windows/n143.s: bin/lamb
	echo 143 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n143/' > runtime/windows/n143.s
runtime/windows/n144.s: bin/lamb
	echo 144 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n144/' > runtime/windows/n144.s
runtime/windows/n145.s: bin/lamb
	echo 145 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n145/' > runtime/windows/n145.s
runtime/windows/n146.s: bin/lamb
	echo 146 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n146/' > runtime/windows/n146.s
runtime/windows/n147.s: bin/lamb
	echo 147 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n147/' > runtime/windows/n147.s
runtime/windows/n148.s: bin/lamb
	echo 148 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n148/' > runtime/windows/n148.s
runtime/windows/n149.s: bin/lamb
	echo 149 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n149/' > runtime/windows/n149.s
runtime/windows/n150.s: bin/lamb
	echo 150 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n150/' > runtime/windows/n150.s
runtime/windows/n151.s: bin/lamb
	echo 151 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n151/' > runtime/windows/n151.s
runtime/windows/n152.s: bin/lamb
	echo 152 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n152/' > runtime/windows/n152.s
runtime/windows/n153.s: bin/lamb
	echo 153 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n153/' > runtime/windows/n153.s
runtime/windows/n154.s: bin/lamb
	echo 154 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n154/' > runtime/windows/n154.s
runtime/windows/n155.s: bin/lamb
	echo 155 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n155/' > runtime/windows/n155.s
runtime/windows/n156.s: bin/lamb
	echo 156 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n156/' > runtime/windows/n156.s
runtime/windows/n157.s: bin/lamb
	echo 157 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n157/' > runtime/windows/n157.s
runtime/windows/n158.s: bin/lamb
	echo 158 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n158/' > runtime/windows/n158.s
runtime/windows/n159.s: bin/lamb
	echo 159 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n159/' > runtime/windows/n159.s
runtime/windows/n160.s: bin/lamb
	echo 160 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n160/' > runtime/windows/n160.s
runtime/windows/n161.s: bin/lamb
	echo 161 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n161/' > runtime/windows/n161.s
runtime/windows/n162.s: bin/lamb
	echo 162 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n162/' > runtime/windows/n162.s
runtime/windows/n163.s: bin/lamb
	echo 163 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n163/' > runtime/windows/n163.s
runtime/windows/n164.s: bin/lamb
	echo 164 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n164/' > runtime/windows/n164.s
runtime/windows/n165.s: bin/lamb
	echo 165 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n165/' > runtime/windows/n165.s
runtime/windows/n166.s: bin/lamb
	echo 166 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n166/' > runtime/windows/n166.s
runtime/windows/n167.s: bin/lamb
	echo 167 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n167/' > runtime/windows/n167.s
runtime/windows/n168.s: bin/lamb
	echo 168 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n168/' > runtime/windows/n168.s
runtime/windows/n169.s: bin/lamb
	echo 169 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n169/' > runtime/windows/n169.s
runtime/windows/n170.s: bin/lamb
	echo 170 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n170/' > runtime/windows/n170.s
runtime/windows/n171.s: bin/lamb
	echo 171 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n171/' > runtime/windows/n171.s
runtime/windows/n172.s: bin/lamb
	echo 172 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n172/' > runtime/windows/n172.s
runtime/windows/n173.s: bin/lamb
	echo 173 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n173/' > runtime/windows/n173.s
runtime/windows/n174.s: bin/lamb
	echo 174 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n174/' > runtime/windows/n174.s
runtime/windows/n175.s: bin/lamb
	echo 175 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n175/' > runtime/windows/n175.s
runtime/windows/n176.s: bin/lamb
	echo 176 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n176/' > runtime/windows/n176.s
runtime/windows/n177.s: bin/lamb
	echo 177 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n177/' > runtime/windows/n177.s
runtime/windows/n178.s: bin/lamb
	echo 178 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n178/' > runtime/windows/n178.s
runtime/windows/n179.s: bin/lamb
	echo 179 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n179/' > runtime/windows/n179.s
runtime/windows/n180.s: bin/lamb
	echo 180 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n180/' > runtime/windows/n180.s
runtime/windows/n181.s: bin/lamb
	echo 181 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n181/' > runtime/windows/n181.s
runtime/windows/n182.s: bin/lamb
	echo 182 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n182/' > runtime/windows/n182.s
runtime/windows/n183.s: bin/lamb
	echo 183 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n183/' > runtime/windows/n183.s
runtime/windows/n184.s: bin/lamb
	echo 184 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n184/' > runtime/windows/n184.s
runtime/windows/n185.s: bin/lamb
	echo 185 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n185/' > runtime/windows/n185.s
runtime/windows/n186.s: bin/lamb
	echo 186 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n186/' > runtime/windows/n186.s
runtime/windows/n187.s: bin/lamb
	echo 187 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n187/' > runtime/windows/n187.s
runtime/windows/n188.s: bin/lamb
	echo 188 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n188/' > runtime/windows/n188.s
runtime/windows/n189.s: bin/lamb
	echo 189 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n189/' > runtime/windows/n189.s
runtime/windows/n190.s: bin/lamb
	echo 190 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n190/' > runtime/windows/n190.s
runtime/windows/n191.s: bin/lamb
	echo 191 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n191/' > runtime/windows/n191.s
runtime/windows/n192.s: bin/lamb
	echo 192 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n192/' > runtime/windows/n192.s
runtime/windows/n193.s: bin/lamb
	echo 193 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n193/' > runtime/windows/n193.s
runtime/windows/n194.s: bin/lamb
	echo 194 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n194/' > runtime/windows/n194.s
runtime/windows/n195.s: bin/lamb
	echo 195 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n195/' > runtime/windows/n195.s
runtime/windows/n196.s: bin/lamb
	echo 196 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n196/' > runtime/windows/n196.s
runtime/windows/n197.s: bin/lamb
	echo 197 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n197/' > runtime/windows/n197.s
runtime/windows/n198.s: bin/lamb
	echo 198 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n198/' > runtime/windows/n198.s
runtime/windows/n199.s: bin/lamb
	echo 199 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n199/' > runtime/windows/n199.s
runtime/windows/n200.s: bin/lamb
	echo 200 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n200/' > runtime/windows/n200.s
runtime/windows/n201.s: bin/lamb
	echo 201 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n201/' > runtime/windows/n201.s
runtime/windows/n202.s: bin/lamb
	echo 202 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n202/' > runtime/windows/n202.s
runtime/windows/n203.s: bin/lamb
	echo 203 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n203/' > runtime/windows/n203.s
runtime/windows/n204.s: bin/lamb
	echo 204 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n204/' > runtime/windows/n204.s
runtime/windows/n205.s: bin/lamb
	echo 205 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n205/' > runtime/windows/n205.s
runtime/windows/n206.s: bin/lamb
	echo 206 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n206/' > runtime/windows/n206.s
runtime/windows/n207.s: bin/lamb
	echo 207 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n207/' > runtime/windows/n207.s
runtime/windows/n208.s: bin/lamb
	echo 208 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n208/' > runtime/windows/n208.s
runtime/windows/n209.s: bin/lamb
	echo 209 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n209/' > runtime/windows/n209.s
runtime/windows/n210.s: bin/lamb
	echo 210 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n210/' > runtime/windows/n210.s
runtime/windows/n211.s: bin/lamb
	echo 211 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n211/' > runtime/windows/n211.s
runtime/windows/n212.s: bin/lamb
	echo 212 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n212/' > runtime/windows/n212.s
runtime/windows/n213.s: bin/lamb
	echo 213 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n213/' > runtime/windows/n213.s
runtime/windows/n214.s: bin/lamb
	echo 214 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n214/' > runtime/windows/n214.s
runtime/windows/n215.s: bin/lamb
	echo 215 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n215/' > runtime/windows/n215.s
runtime/windows/n216.s: bin/lamb
	echo 216 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n216/' > runtime/windows/n216.s
runtime/windows/n217.s: bin/lamb
	echo 217 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n217/' > runtime/windows/n217.s
runtime/windows/n218.s: bin/lamb
	echo 218 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n218/' > runtime/windows/n218.s
runtime/windows/n219.s: bin/lamb
	echo 219 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n219/' > runtime/windows/n219.s
runtime/windows/n220.s: bin/lamb
	echo 220 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n220/' > runtime/windows/n220.s
runtime/windows/n221.s: bin/lamb
	echo 221 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n221/' > runtime/windows/n221.s
runtime/windows/n222.s: bin/lamb
	echo 222 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n222/' > runtime/windows/n222.s
runtime/windows/n223.s: bin/lamb
	echo 223 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n223/' > runtime/windows/n223.s
runtime/windows/n224.s: bin/lamb
	echo 224 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n224/' > runtime/windows/n224.s
runtime/windows/n225.s: bin/lamb
	echo 225 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n225/' > runtime/windows/n225.s
runtime/windows/n226.s: bin/lamb
	echo 226 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n226/' > runtime/windows/n226.s
runtime/windows/n227.s: bin/lamb
	echo 227 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n227/' > runtime/windows/n227.s
runtime/windows/n228.s: bin/lamb
	echo 228 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n228/' > runtime/windows/n228.s
runtime/windows/n229.s: bin/lamb
	echo 229 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n229/' > runtime/windows/n229.s
runtime/windows/n230.s: bin/lamb
	echo 230 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n230/' > runtime/windows/n230.s
runtime/windows/n231.s: bin/lamb
	echo 231 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n231/' > runtime/windows/n231.s
runtime/windows/n232.s: bin/lamb
	echo 232 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n232/' > runtime/windows/n232.s
runtime/windows/n233.s: bin/lamb
	echo 233 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n233/' > runtime/windows/n233.s
runtime/windows/n234.s: bin/lamb
	echo 234 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n234/' > runtime/windows/n234.s
runtime/windows/n235.s: bin/lamb
	echo 235 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n235/' > runtime/windows/n235.s
runtime/windows/n236.s: bin/lamb
	echo 236 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n236/' > runtime/windows/n236.s
runtime/windows/n237.s: bin/lamb
	echo 237 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n237/' > runtime/windows/n237.s
runtime/windows/n238.s: bin/lamb
	echo 238 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n238/' > runtime/windows/n238.s
runtime/windows/n239.s: bin/lamb
	echo 239 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n239/' > runtime/windows/n239.s
runtime/windows/n240.s: bin/lamb
	echo 240 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n240/' > runtime/windows/n240.s
runtime/windows/n241.s: bin/lamb
	echo 241 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n241/' > runtime/windows/n241.s
runtime/windows/n242.s: bin/lamb
	echo 242 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n242/' > runtime/windows/n242.s
runtime/windows/n243.s: bin/lamb
	echo 243 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n243/' > runtime/windows/n243.s
runtime/windows/n244.s: bin/lamb
	echo 244 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n244/' > runtime/windows/n244.s
runtime/windows/n245.s: bin/lamb
	echo 245 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n245/' > runtime/windows/n245.s
runtime/windows/n246.s: bin/lamb
	echo 246 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n246/' > runtime/windows/n246.s
runtime/windows/n247.s: bin/lamb
	echo 247 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n247/' > runtime/windows/n247.s
runtime/windows/n248.s: bin/lamb
	echo 248 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n248/' > runtime/windows/n248.s
runtime/windows/n249.s: bin/lamb
	echo 249 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n249/' > runtime/windows/n249.s
runtime/windows/n250.s: bin/lamb
	echo 250 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n250/' > runtime/windows/n250.s
runtime/windows/n251.s: bin/lamb
	echo 251 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n251/' > runtime/windows/n251.s
runtime/windows/n252.s: bin/lamb
	echo 252 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n252/' > runtime/windows/n252.s
runtime/windows/n253.s: bin/lamb
	echo 253 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n253/' > runtime/windows/n253.s
runtime/windows/n254.s: bin/lamb
	echo 254 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n254/' > runtime/windows/n254.s
runtime/windows/n255.s: bin/lamb
	echo 255 | bin/lamb --untyped --compile --target windows | sed 's/lamb_main/lamb_n255/' > runtime/windows/n255.s
