#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../include/runtime.h"
#include "../include/gc.h"

uintptr_t lamb_main(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);

uintptr_t lamb_n0(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n1(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n2(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n3(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n4(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n5(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n6(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n7(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n8(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n9(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n10(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n11(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n12(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n13(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n14(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n15(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n16(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n17(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n18(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n19(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n20(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n21(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n22(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n23(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n24(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n25(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n26(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n27(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n28(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n29(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n30(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n31(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n32(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n33(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n34(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n35(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n36(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n37(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n38(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n39(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n40(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n41(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n42(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n43(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n44(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n45(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n46(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n47(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n48(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n49(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n50(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n51(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n52(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n53(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n54(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n55(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n56(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n57(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n58(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n59(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n60(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n61(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n62(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n63(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n64(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n65(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n66(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n67(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n68(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n69(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n70(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n71(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n72(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n73(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n74(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n75(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n76(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n77(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n78(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n79(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n80(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n81(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n82(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n83(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n84(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n85(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n86(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n87(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n88(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n89(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n90(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n91(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n92(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n93(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n94(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n95(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n96(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n97(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n98(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n99(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n100(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n101(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n102(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n103(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n104(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n105(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n106(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n107(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n108(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n109(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n110(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n111(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n112(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n113(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n114(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n115(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n116(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n117(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n118(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n119(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n120(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n121(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n122(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n123(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n124(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n125(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n126(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n127(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n128(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n129(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n130(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n131(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n132(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n133(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n134(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n135(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n136(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n137(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n138(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n139(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n140(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n141(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n142(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n143(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n144(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n145(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n146(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n147(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n148(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n149(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n150(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n151(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n152(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n153(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n154(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n155(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n156(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n157(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n158(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n159(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n160(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n161(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n162(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n163(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n164(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n165(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n166(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n167(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n168(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n169(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n170(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n171(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n172(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n173(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n174(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n175(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n176(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n177(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n178(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n179(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n180(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n181(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n182(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n183(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n184(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n185(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n186(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n187(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n188(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n189(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n190(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n191(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n192(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n193(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n194(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n195(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n196(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n197(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n198(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n199(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n200(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n201(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n202(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n203(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n204(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n205(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n206(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n207(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n208(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n209(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n210(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n211(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n212(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n213(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n214(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n215(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n216(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n217(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n218(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n219(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n220(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n221(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n222(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n223(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n224(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n225(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n226(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n227(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n228(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n229(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n230(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n231(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n232(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n233(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n234(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n235(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n236(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n237(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n238(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n239(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n240(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n241(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n242(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n243(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n244(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n245(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n246(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n247(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n248(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n249(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n250(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n251(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n252(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n253(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n254(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);
uintptr_t lamb_n255(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);

uintptr_t input_string_volume;
uintptr_t input_string_length;
bool input_string_is_eof;
uint8_t *input_string;

uintptr_t input_cont(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};

  uintptr_t i = env.values[env.count].env.count;

  int n;

  if (i < input_string_length) {
    n = input_string[i];
  } else if (input_string_is_eof) {
    n = EOF;
  } else if (i < input_string_volume) {
    n = getchar();

    if (n == EOF)
      input_string_is_eof = true;
    else {
      input_string[i] = n;
      ++input_string_length;
    }
  } else {
    uint8_t *new_input_string = malloc(input_string_volume + 65536);
    memcpy(new_input_string, input_string, input_string_volume);
    free(input_string);
    input_string = new_input_string;
    input_string_volume += 65536;

    n = getchar();

    if (n == EOF)
      input_string_is_eof = true;
    else {
      input_string[i] = n;
      ++input_string_length;
    }
  }

  if (n == EOF)
    return ACCESS(&env, &stack, 0);

  uintptr_t stack_map = 0;
  env_t env1 = {0, gc_allocate(0, 0, &stack_map)};

  stack_map = 4;
  closure_t *new_env_values =
    gc_alloc(env.count, env.values, stack.count, stack.values, env.count + 1, sizeof(closure_t), &stack_map);
  memcpy(new_env_values, env.values, (env.count + 1) * sizeof(closure_t));
  env.values = new_env_values;
  env.values[env.count].code = NULL;
  ++env.values[env.count].env.count;
  env.values[env.count].env.values = NULL;

  switch (n) {
  case 0:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n0);
    return ACCESS(&env, &stack, 1);
  case 1:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n1);
    return ACCESS(&env, &stack, 1);
  case 2:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n2);
    return ACCESS(&env, &stack, 1);
  case 3:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n3);
    return ACCESS(&env, &stack, 1);
  case 4:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n4);
    return ACCESS(&env, &stack, 1);
  case 5:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n5);
    return ACCESS(&env, &stack, 1);
  case 6:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n6);
    return ACCESS(&env, &stack, 1);
  case 7:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n7);
    return ACCESS(&env, &stack, 1);
  case 8:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n8);
    return ACCESS(&env, &stack, 1);
  case 9:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n9);
    return ACCESS(&env, &stack, 1);
  case 10:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n10);
    return ACCESS(&env, &stack, 1);
  case 11:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n11);
    return ACCESS(&env, &stack, 1);
  case 12:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n12);
    return ACCESS(&env, &stack, 1);
  case 13:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n13);
    return ACCESS(&env, &stack, 1);
  case 14:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n14);
    return ACCESS(&env, &stack, 1);
  case 15:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n15);
    return ACCESS(&env, &stack, 1);
  case 16:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n16);
    return ACCESS(&env, &stack, 1);
  case 17:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n17);
    return ACCESS(&env, &stack, 1);
  case 18:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n18);
    return ACCESS(&env, &stack, 1);
  case 19:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n19);
    return ACCESS(&env, &stack, 1);
  case 20:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n20);
    return ACCESS(&env, &stack, 1);
  case 21:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n21);
    return ACCESS(&env, &stack, 1);
  case 22:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n22);
    return ACCESS(&env, &stack, 1);
  case 23:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n23);
    return ACCESS(&env, &stack, 1);
  case 24:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n24);
    return ACCESS(&env, &stack, 1);
  case 25:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n25);
    return ACCESS(&env, &stack, 1);
  case 26:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n26);
    return ACCESS(&env, &stack, 1);
  case 27:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n27);
    return ACCESS(&env, &stack, 1);
  case 28:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n28);
    return ACCESS(&env, &stack, 1);
  case 29:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n29);
    return ACCESS(&env, &stack, 1);
  case 30:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n30);
    return ACCESS(&env, &stack, 1);
  case 31:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n31);
    return ACCESS(&env, &stack, 1);
  case 32:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n32);
    return ACCESS(&env, &stack, 1);
  case 33:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n33);
    return ACCESS(&env, &stack, 1);
  case 34:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n34);
    return ACCESS(&env, &stack, 1);
  case 35:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n35);
    return ACCESS(&env, &stack, 1);
  case 36:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n36);
    return ACCESS(&env, &stack, 1);
  case 37:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n37);
    return ACCESS(&env, &stack, 1);
  case 38:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n38);
    return ACCESS(&env, &stack, 1);
  case 39:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n39);
    return ACCESS(&env, &stack, 1);
  case 40:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n40);
    return ACCESS(&env, &stack, 1);
  case 41:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n41);
    return ACCESS(&env, &stack, 1);
  case 42:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n42);
    return ACCESS(&env, &stack, 1);
  case 43:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n43);
    return ACCESS(&env, &stack, 1);
  case 44:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n44);
    return ACCESS(&env, &stack, 1);
  case 45:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n45);
    return ACCESS(&env, &stack, 1);
  case 46:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n46);
    return ACCESS(&env, &stack, 1);
  case 47:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n47);
    return ACCESS(&env, &stack, 1);
  case 48:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n48);
    return ACCESS(&env, &stack, 1);
  case 49:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n49);
    return ACCESS(&env, &stack, 1);
  case 50:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n50);
    return ACCESS(&env, &stack, 1);
  case 51:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n51);
    return ACCESS(&env, &stack, 1);
  case 52:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n52);
    return ACCESS(&env, &stack, 1);
  case 53:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n53);
    return ACCESS(&env, &stack, 1);
  case 54:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n54);
    return ACCESS(&env, &stack, 1);
  case 55:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n55);
    return ACCESS(&env, &stack, 1);
  case 56:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n56);
    return ACCESS(&env, &stack, 1);
  case 57:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n57);
    return ACCESS(&env, &stack, 1);
  case 58:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n58);
    return ACCESS(&env, &stack, 1);
  case 59:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n59);
    return ACCESS(&env, &stack, 1);
  case 60:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n60);
    return ACCESS(&env, &stack, 1);
  case 61:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n61);
    return ACCESS(&env, &stack, 1);
  case 62:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n62);
    return ACCESS(&env, &stack, 1);
  case 63:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n63);
    return ACCESS(&env, &stack, 1);
  case 64:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n64);
    return ACCESS(&env, &stack, 1);
  case 65:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n65);
    return ACCESS(&env, &stack, 1);
  case 66:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n66);
    return ACCESS(&env, &stack, 1);
  case 67:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n67);
    return ACCESS(&env, &stack, 1);
  case 68:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n68);
    return ACCESS(&env, &stack, 1);
  case 69:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n69);
    return ACCESS(&env, &stack, 1);
  case 70:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n70);
    return ACCESS(&env, &stack, 1);
  case 71:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n71);
    return ACCESS(&env, &stack, 1);
  case 72:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n72);
    return ACCESS(&env, &stack, 1);
  case 73:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n73);
    return ACCESS(&env, &stack, 1);
  case 74:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n74);
    return ACCESS(&env, &stack, 1);
  case 75:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n75);
    return ACCESS(&env, &stack, 1);
  case 76:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n76);
    return ACCESS(&env, &stack, 1);
  case 77:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n77);
    return ACCESS(&env, &stack, 1);
  case 78:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n78);
    return ACCESS(&env, &stack, 1);
  case 79:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n79);
    return ACCESS(&env, &stack, 1);
  case 80:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n80);
    return ACCESS(&env, &stack, 1);
  case 81:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n81);
    return ACCESS(&env, &stack, 1);
  case 82:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n82);
    return ACCESS(&env, &stack, 1);
  case 83:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n83);
    return ACCESS(&env, &stack, 1);
  case 84:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n84);
    return ACCESS(&env, &stack, 1);
  case 85:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n85);
    return ACCESS(&env, &stack, 1);
  case 86:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n86);
    return ACCESS(&env, &stack, 1);
  case 87:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n87);
    return ACCESS(&env, &stack, 1);
  case 88:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n88);
    return ACCESS(&env, &stack, 1);
  case 89:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n89);
    return ACCESS(&env, &stack, 1);
  case 90:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n90);
    return ACCESS(&env, &stack, 1);
  case 91:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n91);
    return ACCESS(&env, &stack, 1);
  case 92:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n92);
    return ACCESS(&env, &stack, 1);
  case 93:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n93);
    return ACCESS(&env, &stack, 1);
  case 94:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n94);
    return ACCESS(&env, &stack, 1);
  case 95:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n95);
    return ACCESS(&env, &stack, 1);
  case 96:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n96);
    return ACCESS(&env, &stack, 1);
  case 97:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n97);
    return ACCESS(&env, &stack, 1);
  case 98:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n98);
    return ACCESS(&env, &stack, 1);
  case 99:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n99);
    return ACCESS(&env, &stack, 1);
  case 100:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n100);
    return ACCESS(&env, &stack, 1);
  case 101:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n101);
    return ACCESS(&env, &stack, 1);
  case 102:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n102);
    return ACCESS(&env, &stack, 1);
  case 103:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n103);
    return ACCESS(&env, &stack, 1);
  case 104:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n104);
    return ACCESS(&env, &stack, 1);
  case 105:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n105);
    return ACCESS(&env, &stack, 1);
  case 106:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n106);
    return ACCESS(&env, &stack, 1);
  case 107:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n107);
    return ACCESS(&env, &stack, 1);
  case 108:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n108);
    return ACCESS(&env, &stack, 1);
  case 109:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n109);
    return ACCESS(&env, &stack, 1);
  case 110:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n110);
    return ACCESS(&env, &stack, 1);
  case 111:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n111);
    return ACCESS(&env, &stack, 1);
  case 112:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n112);
    return ACCESS(&env, &stack, 1);
  case 113:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n113);
    return ACCESS(&env, &stack, 1);
  case 114:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n114);
    return ACCESS(&env, &stack, 1);
  case 115:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n115);
    return ACCESS(&env, &stack, 1);
  case 116:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n116);
    return ACCESS(&env, &stack, 1);
  case 117:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n117);
    return ACCESS(&env, &stack, 1);
  case 118:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n118);
    return ACCESS(&env, &stack, 1);
  case 119:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n119);
    return ACCESS(&env, &stack, 1);
  case 120:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n120);
    return ACCESS(&env, &stack, 1);
  case 121:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n121);
    return ACCESS(&env, &stack, 1);
  case 122:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n122);
    return ACCESS(&env, &stack, 1);
  case 123:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n123);
    return ACCESS(&env, &stack, 1);
  case 124:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n124);
    return ACCESS(&env, &stack, 1);
  case 125:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n125);
    return ACCESS(&env, &stack, 1);
  case 126:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n126);
    return ACCESS(&env, &stack, 1);
  case 127:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n127);
    return ACCESS(&env, &stack, 1);
  case 128:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n128);
    return ACCESS(&env, &stack, 1);
  case 129:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n129);
    return ACCESS(&env, &stack, 1);
  case 130:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n130);
    return ACCESS(&env, &stack, 1);
  case 131:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n131);
    return ACCESS(&env, &stack, 1);
  case 132:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n132);
    return ACCESS(&env, &stack, 1);
  case 133:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n133);
    return ACCESS(&env, &stack, 1);
  case 134:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n134);
    return ACCESS(&env, &stack, 1);
  case 135:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n135);
    return ACCESS(&env, &stack, 1);
  case 136:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n136);
    return ACCESS(&env, &stack, 1);
  case 137:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n137);
    return ACCESS(&env, &stack, 1);
  case 138:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n138);
    return ACCESS(&env, &stack, 1);
  case 139:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n139);
    return ACCESS(&env, &stack, 1);
  case 140:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n140);
    return ACCESS(&env, &stack, 1);
  case 141:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n141);
    return ACCESS(&env, &stack, 1);
  case 142:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n142);
    return ACCESS(&env, &stack, 1);
  case 143:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n143);
    return ACCESS(&env, &stack, 1);
  case 144:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n144);
    return ACCESS(&env, &stack, 1);
  case 145:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n145);
    return ACCESS(&env, &stack, 1);
  case 146:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n146);
    return ACCESS(&env, &stack, 1);
  case 147:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n147);
    return ACCESS(&env, &stack, 1);
  case 148:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n148);
    return ACCESS(&env, &stack, 1);
  case 149:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n149);
    return ACCESS(&env, &stack, 1);
  case 150:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n150);
    return ACCESS(&env, &stack, 1);
  case 151:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n151);
    return ACCESS(&env, &stack, 1);
  case 152:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n152);
    return ACCESS(&env, &stack, 1);
  case 153:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n153);
    return ACCESS(&env, &stack, 1);
  case 154:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n154);
    return ACCESS(&env, &stack, 1);
  case 155:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n155);
    return ACCESS(&env, &stack, 1);
  case 156:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n156);
    return ACCESS(&env, &stack, 1);
  case 157:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n157);
    return ACCESS(&env, &stack, 1);
  case 158:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n158);
    return ACCESS(&env, &stack, 1);
  case 159:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n159);
    return ACCESS(&env, &stack, 1);
  case 160:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n160);
    return ACCESS(&env, &stack, 1);
  case 161:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n161);
    return ACCESS(&env, &stack, 1);
  case 162:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n162);
    return ACCESS(&env, &stack, 1);
  case 163:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n163);
    return ACCESS(&env, &stack, 1);
  case 164:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n164);
    return ACCESS(&env, &stack, 1);
  case 165:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n165);
    return ACCESS(&env, &stack, 1);
  case 166:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n166);
    return ACCESS(&env, &stack, 1);
  case 167:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n167);
    return ACCESS(&env, &stack, 1);
  case 168:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n168);
    return ACCESS(&env, &stack, 1);
  case 169:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n169);
    return ACCESS(&env, &stack, 1);
  case 170:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n170);
    return ACCESS(&env, &stack, 1);
  case 171:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n171);
    return ACCESS(&env, &stack, 1);
  case 172:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n172);
    return ACCESS(&env, &stack, 1);
  case 173:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n173);
    return ACCESS(&env, &stack, 1);
  case 174:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n174);
    return ACCESS(&env, &stack, 1);
  case 175:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n175);
    return ACCESS(&env, &stack, 1);
  case 176:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n176);
    return ACCESS(&env, &stack, 1);
  case 177:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n177);
    return ACCESS(&env, &stack, 1);
  case 178:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n178);
    return ACCESS(&env, &stack, 1);
  case 179:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n179);
    return ACCESS(&env, &stack, 1);
  case 180:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n180);
    return ACCESS(&env, &stack, 1);
  case 181:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n181);
    return ACCESS(&env, &stack, 1);
  case 182:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n182);
    return ACCESS(&env, &stack, 1);
  case 183:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n183);
    return ACCESS(&env, &stack, 1);
  case 184:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n184);
    return ACCESS(&env, &stack, 1);
  case 185:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n185);
    return ACCESS(&env, &stack, 1);
  case 186:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n186);
    return ACCESS(&env, &stack, 1);
  case 187:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n187);
    return ACCESS(&env, &stack, 1);
  case 188:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n188);
    return ACCESS(&env, &stack, 1);
  case 189:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n189);
    return ACCESS(&env, &stack, 1);
  case 190:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n190);
    return ACCESS(&env, &stack, 1);
  case 191:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n191);
    return ACCESS(&env, &stack, 1);
  case 192:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n192);
    return ACCESS(&env, &stack, 1);
  case 193:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n193);
    return ACCESS(&env, &stack, 1);
  case 194:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n194);
    return ACCESS(&env, &stack, 1);
  case 195:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n195);
    return ACCESS(&env, &stack, 1);
  case 196:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n196);
    return ACCESS(&env, &stack, 1);
  case 197:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n197);
    return ACCESS(&env, &stack, 1);
  case 198:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n198);
    return ACCESS(&env, &stack, 1);
  case 199:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n199);
    return ACCESS(&env, &stack, 1);
  case 200:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n200);
    return ACCESS(&env, &stack, 1);
  case 201:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n201);
    return ACCESS(&env, &stack, 1);
  case 202:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n202);
    return ACCESS(&env, &stack, 1);
  case 203:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n203);
    return ACCESS(&env, &stack, 1);
  case 204:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n204);
    return ACCESS(&env, &stack, 1);
  case 205:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n205);
    return ACCESS(&env, &stack, 1);
  case 206:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n206);
    return ACCESS(&env, &stack, 1);
  case 207:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n207);
    return ACCESS(&env, &stack, 1);
  case 208:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n208);
    return ACCESS(&env, &stack, 1);
  case 209:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n209);
    return ACCESS(&env, &stack, 1);
  case 210:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n210);
    return ACCESS(&env, &stack, 1);
  case 211:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n211);
    return ACCESS(&env, &stack, 1);
  case 212:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n212);
    return ACCESS(&env, &stack, 1);
  case 213:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n213);
    return ACCESS(&env, &stack, 1);
  case 214:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n214);
    return ACCESS(&env, &stack, 1);
  case 215:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n215);
    return ACCESS(&env, &stack, 1);
  case 216:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n216);
    return ACCESS(&env, &stack, 1);
  case 217:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n217);
    return ACCESS(&env, &stack, 1);
  case 218:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n218);
    return ACCESS(&env, &stack, 1);
  case 219:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n219);
    return ACCESS(&env, &stack, 1);
  case 220:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n220);
    return ACCESS(&env, &stack, 1);
  case 221:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n221);
    return ACCESS(&env, &stack, 1);
  case 222:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n222);
    return ACCESS(&env, &stack, 1);
  case 223:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n223);
    return ACCESS(&env, &stack, 1);
  case 224:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n224);
    return ACCESS(&env, &stack, 1);
  case 225:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n225);
    return ACCESS(&env, &stack, 1);
  case 226:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n226);
    return ACCESS(&env, &stack, 1);
  case 227:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n227);
    return ACCESS(&env, &stack, 1);
  case 228:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n228);
    return ACCESS(&env, &stack, 1);
  case 229:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n229);
    return ACCESS(&env, &stack, 1);
  case 230:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n230);
    return ACCESS(&env, &stack, 1);
  case 231:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n231);
    return ACCESS(&env, &stack, 1);
  case 232:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n232);
    return ACCESS(&env, &stack, 1);
  case 233:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n233);
    return ACCESS(&env, &stack, 1);
  case 234:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n234);
    return ACCESS(&env, &stack, 1);
  case 235:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n235);
    return ACCESS(&env, &stack, 1);
  case 236:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n236);
    return ACCESS(&env, &stack, 1);
  case 237:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n237);
    return ACCESS(&env, &stack, 1);
  case 238:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n238);
    return ACCESS(&env, &stack, 1);
  case 239:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n239);
    return ACCESS(&env, &stack, 1);
  case 240:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n240);
    return ACCESS(&env, &stack, 1);
  case 241:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n241);
    return ACCESS(&env, &stack, 1);
  case 242:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n242);
    return ACCESS(&env, &stack, 1);
  case 243:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n243);
    return ACCESS(&env, &stack, 1);
  case 244:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n244);
    return ACCESS(&env, &stack, 1);
  case 245:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n245);
    return ACCESS(&env, &stack, 1);
  case 246:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n246);
    return ACCESS(&env, &stack, 1);
  case 247:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n247);
    return ACCESS(&env, &stack, 1);
  case 248:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n248);
    return ACCESS(&env, &stack, 1);
  case 249:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n249);
    return ACCESS(&env, &stack, 1);
  case 250:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n250);
    return ACCESS(&env, &stack, 1);
  case 251:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n251);
    return ACCESS(&env, &stack, 1);
  case 252:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n252);
    return ACCESS(&env, &stack, 1);
  case 253:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n253);
    return ACCESS(&env, &stack, 1);
  case 254:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n254);
    return ACCESS(&env, &stack, 1);
  case 255:
    PUSH(&env, &stack, input_cont);
    PUSH(&env1, &stack, lamb_n255);
    return ACCESS(&env, &stack, 1);
  default:
    return ACCESS(&env, &stack, 0);
  }
}

uintptr_t input(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};
  GRAB(&env, &stack);
  GRAB(&env, &stack);

  uintptr_t stack_map = 4;
  closure_t *new_env_values =
    gc_alloc(env.count, env.values, stack.count, stack.values, env.count + 1, sizeof(closure_t), &stack_map);
  memcpy(new_env_values, env.values, env.count * sizeof(closure_t));
  env.values = new_env_values;
  env.values[env.count].code = NULL;
  env.values[env.count].env.count = 0;
  env.values[env.count].env.values = NULL;

  return input_cont(env.count, env.values, stack.count, stack.values);
}

uintptr_t O(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  return 0;
}

uintptr_t S(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};

  GRAB(&env, &stack);
  uintptr_t n = ACCESS(&env, &stack, 0);

  return n + 1;
}

uintptr_t f(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t*stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};

  uintptr_t stack_map = 0;
  env_t env1 = {0, gc_allocate(0, 0, &stack_map)};

  GRAB(&env, &stack);
  PUSH(&env1, &stack, O);
  PUSH(&env1, &stack, S);
  uintptr_t n = ACCESS(&env, &stack, 0);

  putchar(n);

  --stack.count;
  --stack.count;
  GRAB(&env, &stack);
  return ACCESS(&env, &stack, 0);
}

int main(int argc, char *argv[]) {
  input_string_volume = 65536;
  input_string_length = 0;
  input_string_is_eof = false;
  input_string = malloc(65536);

  runtime_init();

  /* States */

  env_t env;
  stack_t stack;
  uintptr_t stack_map = 4;

  env.count = 0;
  env.values = gc_allocate(0, sizeof(closure_t), &stack_map);
  stack.count = 0;
  stack.values = gc_allocate(256, sizeof(closure_t), &stack_map);

  /* Primitives */

  closure_t prim_O;
  prim_O.code = O;
  prim_O.env = env;

  closure_t prim_f;
  prim_f.code = f;
  prim_f.env = env;

  closure_t prim_input;
  prim_input.code = input;
  prim_input.env = env;

  stack.count = 3;
  stack.values[0] = prim_O;
  stack.values[1] = prim_f;
  stack.values[2] = prim_input;

  lamb_main(env.count, env.values, stack.count, stack.values);

  runtime_exit();
}
