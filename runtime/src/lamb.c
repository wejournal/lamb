#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../include/runtime.h"
#include "../include/gc.h"

uintptr_t lamb_main(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);

#define LAMB_N(n) \
  uintptr_t lamb_n ## n (uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);

LAMB_N(0); LAMB_N(1); LAMB_N(2); LAMB_N(3); LAMB_N(4); LAMB_N(5); LAMB_N(6); LAMB_N(7); LAMB_N(8); LAMB_N(9); LAMB_N(10); LAMB_N(11); LAMB_N(12); LAMB_N(13); LAMB_N(14); LAMB_N(15); LAMB_N(16); LAMB_N(17); LAMB_N(18); LAMB_N(19); LAMB_N(20); LAMB_N(21); LAMB_N(22); LAMB_N(23); LAMB_N(24); LAMB_N(25); LAMB_N(26); LAMB_N(27); LAMB_N(28); LAMB_N(29); LAMB_N(30); LAMB_N(31); LAMB_N(32); LAMB_N(33); LAMB_N(34); LAMB_N(35); LAMB_N(36); LAMB_N(37); LAMB_N(38); LAMB_N(39); LAMB_N(40); LAMB_N(41); LAMB_N(42); LAMB_N(43); LAMB_N(44); LAMB_N(45); LAMB_N(46); LAMB_N(47); LAMB_N(48); LAMB_N(49); LAMB_N(50); LAMB_N(51); LAMB_N(52); LAMB_N(53); LAMB_N(54); LAMB_N(55); LAMB_N(56); LAMB_N(57); LAMB_N(58); LAMB_N(59); LAMB_N(60); LAMB_N(61); LAMB_N(62); LAMB_N(63); LAMB_N(64); LAMB_N(65); LAMB_N(66); LAMB_N(67); LAMB_N(68); LAMB_N(69); LAMB_N(70); LAMB_N(71); LAMB_N(72); LAMB_N(73); LAMB_N(74); LAMB_N(75); LAMB_N(76); LAMB_N(77); LAMB_N(78); LAMB_N(79); LAMB_N(80); LAMB_N(81); LAMB_N(82); LAMB_N(83); LAMB_N(84); LAMB_N(85); LAMB_N(86); LAMB_N(87); LAMB_N(88); LAMB_N(89); LAMB_N(90); LAMB_N(91); LAMB_N(92); LAMB_N(93); LAMB_N(94); LAMB_N(95); LAMB_N(96); LAMB_N(97); LAMB_N(98); LAMB_N(99); LAMB_N(100); LAMB_N(101); LAMB_N(102); LAMB_N(103); LAMB_N(104); LAMB_N(105); LAMB_N(106); LAMB_N(107); LAMB_N(108); LAMB_N(109); LAMB_N(110); LAMB_N(111); LAMB_N(112); LAMB_N(113); LAMB_N(114); LAMB_N(115); LAMB_N(116); LAMB_N(117); LAMB_N(118); LAMB_N(119); LAMB_N(120); LAMB_N(121); LAMB_N(122); LAMB_N(123); LAMB_N(124); LAMB_N(125); LAMB_N(126); LAMB_N(127); LAMB_N(128); LAMB_N(129); LAMB_N(130); LAMB_N(131); LAMB_N(132); LAMB_N(133); LAMB_N(134); LAMB_N(135); LAMB_N(136); LAMB_N(137); LAMB_N(138); LAMB_N(139); LAMB_N(140); LAMB_N(141); LAMB_N(142); LAMB_N(143); LAMB_N(144); LAMB_N(145); LAMB_N(146); LAMB_N(147); LAMB_N(148); LAMB_N(149); LAMB_N(150); LAMB_N(151); LAMB_N(152); LAMB_N(153); LAMB_N(154); LAMB_N(155); LAMB_N(156); LAMB_N(157); LAMB_N(158); LAMB_N(159); LAMB_N(160); LAMB_N(161); LAMB_N(162); LAMB_N(163); LAMB_N(164); LAMB_N(165); LAMB_N(166); LAMB_N(167); LAMB_N(168); LAMB_N(169); LAMB_N(170); LAMB_N(171); LAMB_N(172); LAMB_N(173); LAMB_N(174); LAMB_N(175); LAMB_N(176); LAMB_N(177); LAMB_N(178); LAMB_N(179); LAMB_N(180); LAMB_N(181); LAMB_N(182); LAMB_N(183); LAMB_N(184); LAMB_N(185); LAMB_N(186); LAMB_N(187); LAMB_N(188); LAMB_N(189); LAMB_N(190); LAMB_N(191); LAMB_N(192); LAMB_N(193); LAMB_N(194); LAMB_N(195); LAMB_N(196); LAMB_N(197); LAMB_N(198); LAMB_N(199); LAMB_N(200); LAMB_N(201); LAMB_N(202); LAMB_N(203); LAMB_N(204); LAMB_N(205); LAMB_N(206); LAMB_N(207); LAMB_N(208); LAMB_N(209); LAMB_N(210); LAMB_N(211); LAMB_N(212); LAMB_N(213); LAMB_N(214); LAMB_N(215); LAMB_N(216); LAMB_N(217); LAMB_N(218); LAMB_N(219); LAMB_N(220); LAMB_N(221); LAMB_N(222); LAMB_N(223); LAMB_N(224); LAMB_N(225); LAMB_N(226); LAMB_N(227); LAMB_N(228); LAMB_N(229); LAMB_N(230); LAMB_N(231); LAMB_N(232); LAMB_N(233); LAMB_N(234); LAMB_N(235); LAMB_N(236); LAMB_N(237); LAMB_N(238); LAMB_N(239); LAMB_N(240); LAMB_N(241); LAMB_N(242); LAMB_N(243); LAMB_N(244); LAMB_N(245); LAMB_N(246); LAMB_N(247); LAMB_N(248); LAMB_N(249); LAMB_N(250); LAMB_N(251); LAMB_N(252); LAMB_N(253); LAMB_N(254); LAMB_N(255);

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

#define CASE(n) \
  case n: \
    PUSH(&env, &stack, input_cont); \
    PUSH(&env1, &stack, lamb_n ## n); \
    return ACCESS(&env, &stack, 1);

  switch (n) {
    CASE(0); CASE(1); CASE(2); CASE(3); CASE(4); CASE(5); CASE(6); CASE(7); CASE(8); CASE(9); CASE(10); CASE(11); CASE(12); CASE(13); CASE(14); CASE(15); CASE(16); CASE(17); CASE(18); CASE(19); CASE(20); CASE(21); CASE(22); CASE(23); CASE(24); CASE(25); CASE(26); CASE(27); CASE(28); CASE(29); CASE(30); CASE(31); CASE(32); CASE(33); CASE(34); CASE(35); CASE(36); CASE(37); CASE(38); CASE(39); CASE(40); CASE(41); CASE(42); CASE(43); CASE(44); CASE(45); CASE(46); CASE(47); CASE(48); CASE(49); CASE(50); CASE(51); CASE(52); CASE(53); CASE(54); CASE(55); CASE(56); CASE(57); CASE(58); CASE(59); CASE(60); CASE(61); CASE(62); CASE(63); CASE(64); CASE(65); CASE(66); CASE(67); CASE(68); CASE(69); CASE(70); CASE(71); CASE(72); CASE(73); CASE(74); CASE(75); CASE(76); CASE(77); CASE(78); CASE(79); CASE(80); CASE(81); CASE(82); CASE(83); CASE(84); CASE(85); CASE(86); CASE(87); CASE(88); CASE(89); CASE(90); CASE(91); CASE(92); CASE(93); CASE(94); CASE(95); CASE(96); CASE(97); CASE(98); CASE(99); CASE(100); CASE(101); CASE(102); CASE(103); CASE(104); CASE(105); CASE(106); CASE(107); CASE(108); CASE(109); CASE(110); CASE(111); CASE(112); CASE(113); CASE(114); CASE(115); CASE(116); CASE(117); CASE(118); CASE(119); CASE(120); CASE(121); CASE(122); CASE(123); CASE(124); CASE(125); CASE(126); CASE(127); CASE(128); CASE(129); CASE(130); CASE(131); CASE(132); CASE(133); CASE(134); CASE(135); CASE(136); CASE(137); CASE(138); CASE(139); CASE(140); CASE(141); CASE(142); CASE(143); CASE(144); CASE(145); CASE(146); CASE(147); CASE(148); CASE(149); CASE(150); CASE(151); CASE(152); CASE(153); CASE(154); CASE(155); CASE(156); CASE(157); CASE(158); CASE(159); CASE(160); CASE(161); CASE(162); CASE(163); CASE(164); CASE(165); CASE(166); CASE(167); CASE(168); CASE(169); CASE(170); CASE(171); CASE(172); CASE(173); CASE(174); CASE(175); CASE(176); CASE(177); CASE(178); CASE(179); CASE(180); CASE(181); CASE(182); CASE(183); CASE(184); CASE(185); CASE(186); CASE(187); CASE(188); CASE(189); CASE(190); CASE(191); CASE(192); CASE(193); CASE(194); CASE(195); CASE(196); CASE(197); CASE(198); CASE(199); CASE(200); CASE(201); CASE(202); CASE(203); CASE(204); CASE(205); CASE(206); CASE(207); CASE(208); CASE(209); CASE(210); CASE(211); CASE(212); CASE(213); CASE(214); CASE(215); CASE(216); CASE(217); CASE(218); CASE(219); CASE(220); CASE(221); CASE(222); CASE(223); CASE(224); CASE(225); CASE(226); CASE(227); CASE(228); CASE(229); CASE(230); CASE(231); CASE(232); CASE(233); CASE(234); CASE(235); CASE(236); CASE(237); CASE(238); CASE(239); CASE(240); CASE(241); CASE(242); CASE(243); CASE(244); CASE(245); CASE(246); CASE(247); CASE(248); CASE(249); CASE(250); CASE(251); CASE(252); CASE(253); CASE(254); CASE(255);
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
