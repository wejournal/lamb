#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../include/runtime.h"
#include "../include/gc.h"

uintptr_t lamb_main(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);

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

  uintptr_t stack_map = 4;
  closure_t *new_env_values =
    gc_alloc(env.count, env.values, stack.count, stack.values, env.count + 1, sizeof(closure_t), &stack_map);
  memcpy(new_env_values, env.values, (env.count + 1) * sizeof(closure_t));
  env.values = new_env_values;
  env.values[env.count].code = NULL;
  ++env.values[env.count].env.count;
  env.values[env.count].env.values = NULL;
  env_t env1 = {0, gc_allocate(0, sizeof(closure_t), &stack_map)};

#define CASE(n) \
  case n: \
    PUSH(&env, &stack, input_cont); \
    PUSH(&env1, &stack, lamb_n ## n); \
    return ACCESS(&env, &stack, 1);

  switch (n) {
    CASE(0);
    CASE(1);
    CASE(2);
    CASE(3);
    CASE(4);
    CASE(5);
    CASE(6);
    CASE(7);
    CASE(8);
    CASE(9);
    CASE(10);
    CASE(11);
    CASE(12);
    CASE(13);
    CASE(14);
    CASE(15);
    CASE(16);
    CASE(17);
    CASE(18);
    CASE(19);
    CASE(20);
    CASE(21);
    CASE(22);
    CASE(23);
    CASE(24);
    CASE(25);
    CASE(26);
    CASE(27);
    CASE(28);
    CASE(29);
    CASE(30);
    CASE(31);
    CASE(32);
    CASE(33);
    CASE(34);
    CASE(35);
    CASE(36);
    CASE(37);
    CASE(38);
    CASE(39);
    CASE(40);
    CASE(41);
    CASE(42);
    CASE(43);
    CASE(44);
    CASE(45);
    CASE(46);
    CASE(47);
    CASE(48);
    CASE(49);
    CASE(50);
    CASE(51);
    CASE(52);
    CASE(53);
    CASE(54);
    CASE(55);
    CASE(56);
    CASE(57);
    CASE(58);
    CASE(59);
    CASE(60);
    CASE(61);
    CASE(62);
    CASE(63);
    CASE(64);
    CASE(65);
    CASE(66);
    CASE(67);
    CASE(68);
    CASE(69);
    CASE(70);
    CASE(71);
    CASE(72);
    CASE(73);
    CASE(74);
    CASE(75);
    CASE(76);
    CASE(77);
    CASE(78);
    CASE(79);
    CASE(80);
    CASE(81);
    CASE(82);
    CASE(83);
    CASE(84);
    CASE(85);
    CASE(86);
    CASE(87);
    CASE(88);
    CASE(89);
    CASE(90);
    CASE(91);
    CASE(92);
    CASE(93);
    CASE(94);
    CASE(95);
    CASE(96);
    CASE(97);
    CASE(98);
    CASE(99);
    CASE(100);
    CASE(101);
    CASE(102);
    CASE(103);
    CASE(104);
    CASE(105);
    CASE(106);
    CASE(107);
    CASE(108);
    CASE(109);
    CASE(110);
    CASE(111);
    CASE(112);
    CASE(113);
    CASE(114);
    CASE(115);
    CASE(116);
    CASE(117);
    CASE(118);
    CASE(119);
    CASE(120);
    CASE(121);
    CASE(122);
    CASE(123);
    CASE(124);
    CASE(125);
    CASE(126);
    CASE(127);
    CASE(128);
    CASE(129);
    CASE(130);
    CASE(131);
    CASE(132);
    CASE(133);
    CASE(134);
    CASE(135);
    CASE(136);
    CASE(137);
    CASE(138);
    CASE(139);
    CASE(140);
    CASE(141);
    CASE(142);
    CASE(143);
    CASE(144);
    CASE(145);
    CASE(146);
    CASE(147);
    CASE(148);
    CASE(149);
    CASE(150);
    CASE(151);
    CASE(152);
    CASE(153);
    CASE(154);
    CASE(155);
    CASE(156);
    CASE(157);
    CASE(158);
    CASE(159);
    CASE(160);
    CASE(161);
    CASE(162);
    CASE(163);
    CASE(164);
    CASE(165);
    CASE(166);
    CASE(167);
    CASE(168);
    CASE(169);
    CASE(170);
    CASE(171);
    CASE(172);
    CASE(173);
    CASE(174);
    CASE(175);
    CASE(176);
    CASE(177);
    CASE(178);
    CASE(179);
    CASE(180);
    CASE(181);
    CASE(182);
    CASE(183);
    CASE(184);
    CASE(185);
    CASE(186);
    CASE(187);
    CASE(188);
    CASE(189);
    CASE(190);
    CASE(191);
    CASE(192);
    CASE(193);
    CASE(194);
    CASE(195);
    CASE(196);
    CASE(197);
    CASE(198);
    CASE(199);
    CASE(200);
    CASE(201);
    CASE(202);
    CASE(203);
    CASE(204);
    CASE(205);
    CASE(206);
    CASE(207);
    CASE(208);
    CASE(209);
    CASE(210);
    CASE(211);
    CASE(212);
    CASE(213);
    CASE(214);
    CASE(215);
    CASE(216);
    CASE(217);
    CASE(218);
    CASE(219);
    CASE(220);
    CASE(221);
    CASE(222);
    CASE(223);
    CASE(224);
    CASE(225);
    CASE(226);
    CASE(227);
    CASE(228);
    CASE(229);
    CASE(230);
    CASE(231);
    CASE(232);
    CASE(233);
    CASE(234);
    CASE(235);
    CASE(236);
    CASE(237);
    CASE(238);
    CASE(239);
    CASE(240);
    CASE(241);
    CASE(242);
    CASE(243);
    CASE(244);
    CASE(245);
    CASE(246);
    CASE(247);
    CASE(248);
    CASE(249);
    CASE(250);
    CASE(251);
    CASE(252);
    CASE(253);
    CASE(254);
    CASE(255);
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

  GRAB(&env, &stack);

  uintptr_t stack_map = 4;
  env_t env1 = {0, gc_allocate(0, sizeof(closure_t), &stack_map)};

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
