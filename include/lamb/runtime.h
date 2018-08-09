#ifndef RUNTIME_H__
#define RUNTIME_H__

#include <stdint.h>

typedef struct closure closure_t;
typedef struct stack stack_t;
typedef struct env env_t;

struct stack {
  uintptr_t count;
  closure_t *values;
};

struct env {
  uintptr_t count;
  closure_t *values;
};

struct closure {
  uintptr_t (*code)(uintptr_t, closure_t *, uintptr_t, closure_t *);
  env_t env;
};

void runtime_init(void);
void runtime_exit(void);

uintptr_t ACCESS(env_t *, stack_t *, uintptr_t);
void GRAB(env_t *, stack_t *);
void PUSH(env_t *, stack_t *, uintptr_t (*code)(uintptr_t, closure_t *, uintptr_t, closure_t *));

#define LAMB_N(n) \
  uintptr_t lamb_n ## n (uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values)

LAMB_N(0); LAMB_N(1); LAMB_N(2); LAMB_N(3); LAMB_N(4); LAMB_N(5); LAMB_N(6); LAMB_N(7); LAMB_N(8); LAMB_N(9); LAMB_N(10); LAMB_N(11); LAMB_N(12); LAMB_N(13); LAMB_N(14); LAMB_N(15);
LAMB_N(16); LAMB_N(17); LAMB_N(18); LAMB_N(19); LAMB_N(20); LAMB_N(21);
LAMB_N(22); LAMB_N(23); LAMB_N(24); LAMB_N(25); LAMB_N(26); LAMB_N(27); LAMB_N(28); LAMB_N(29); LAMB_N(30); LAMB_N(31);
LAMB_N(32); LAMB_N(33); LAMB_N(34); LAMB_N(35); LAMB_N(36); LAMB_N(37); LAMB_N(38); LAMB_N(39); LAMB_N(40); LAMB_N(41); LAMB_N(42); LAMB_N(43); LAMB_N(44); LAMB_N(45); LAMB_N(46); LAMB_N(47);
LAMB_N(48); LAMB_N(49); LAMB_N(50); LAMB_N(51); LAMB_N(52); LAMB_N(53); LAMB_N(54); LAMB_N(55); LAMB_N(56); LAMB_N(57); LAMB_N(58); LAMB_N(59); LAMB_N(60); LAMB_N(61); LAMB_N(62); LAMB_N(63);
LAMB_N(64); LAMB_N(65); LAMB_N(66); LAMB_N(67); LAMB_N(68); LAMB_N(69); LAMB_N(70); LAMB_N(71); LAMB_N(72); LAMB_N(73); LAMB_N(74); LAMB_N(75); LAMB_N(76); LAMB_N(77); LAMB_N(78); LAMB_N(79);
LAMB_N(80); LAMB_N(81); LAMB_N(82); LAMB_N(83); LAMB_N(84); LAMB_N(85); LAMB_N(86); LAMB_N(87); LAMB_N(88); LAMB_N(89); LAMB_N(90); LAMB_N(91); LAMB_N(92); LAMB_N(93); LAMB_N(94); LAMB_N(95);
LAMB_N(96); LAMB_N(97); LAMB_N(98); LAMB_N(99); LAMB_N(100); LAMB_N(101); LAMB_N(102); LAMB_N(103); LAMB_N(104); LAMB_N(105); LAMB_N(106); LAMB_N(107); LAMB_N(108); LAMB_N(109); LAMB_N(110); LAMB_N(111);
LAMB_N(112); LAMB_N(113); LAMB_N(114); LAMB_N(115); LAMB_N(116); LAMB_N(117); LAMB_N(118); LAMB_N(119); LAMB_N(120); LAMB_N(121); LAMB_N(122); LAMB_N(123); LAMB_N(124); LAMB_N(125); LAMB_N(126); LAMB_N(127);
LAMB_N(128); LAMB_N(129); LAMB_N(130); LAMB_N(131); LAMB_N(132); LAMB_N(133); LAMB_N(134); LAMB_N(135); LAMB_N(136); LAMB_N(137); LAMB_N(138); LAMB_N(139); LAMB_N(140); LAMB_N(141); LAMB_N(142); LAMB_N(143);
LAMB_N(144); LAMB_N(145); LAMB_N(146); LAMB_N(147); LAMB_N(148); LAMB_N(149); LAMB_N(150); LAMB_N(151); LAMB_N(152); LAMB_N(153); LAMB_N(154); LAMB_N(155); LAMB_N(156); LAMB_N(157); LAMB_N(158); LAMB_N(159);
LAMB_N(160); LAMB_N(161); LAMB_N(162); LAMB_N(163); LAMB_N(164); LAMB_N(165); LAMB_N(166); LAMB_N(167); LAMB_N(168); LAMB_N(169); LAMB_N(170); LAMB_N(171); LAMB_N(172); LAMB_N(173); LAMB_N(174); LAMB_N(175);
LAMB_N(176); LAMB_N(177); LAMB_N(178); LAMB_N(179); LAMB_N(180); LAMB_N(181); LAMB_N(182); LAMB_N(183); LAMB_N(184); LAMB_N(185); LAMB_N(186); LAMB_N(187); LAMB_N(188); LAMB_N(189); LAMB_N(190); LAMB_N(191);
LAMB_N(192); LAMB_N(193); LAMB_N(194); LAMB_N(195); LAMB_N(196); LAMB_N(197); LAMB_N(198); LAMB_N(199); LAMB_N(200); LAMB_N(201); LAMB_N(202); LAMB_N(203); LAMB_N(204); LAMB_N(205); LAMB_N(206); LAMB_N(207);
LAMB_N(208); LAMB_N(209); LAMB_N(210); LAMB_N(211); LAMB_N(212); LAMB_N(213); LAMB_N(214); LAMB_N(215); LAMB_N(216); LAMB_N(217); LAMB_N(218); LAMB_N(219); LAMB_N(220); LAMB_N(221); LAMB_N(222); LAMB_N(223);
LAMB_N(224); LAMB_N(225); LAMB_N(226); LAMB_N(227); LAMB_N(228); LAMB_N(229); LAMB_N(230); LAMB_N(231); LAMB_N(232); LAMB_N(233); LAMB_N(234); LAMB_N(235); LAMB_N(236); LAMB_N(237); LAMB_N(238); LAMB_N(239);
LAMB_N(240); LAMB_N(241); LAMB_N(242); LAMB_N(243); LAMB_N(244); LAMB_N(245); LAMB_N(246); LAMB_N(247); LAMB_N(248); LAMB_N(249); LAMB_N(250); LAMB_N(251); LAMB_N(252); LAMB_N(253); LAMB_N(254); LAMB_N(255);

#endif
