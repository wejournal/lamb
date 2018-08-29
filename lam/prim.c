#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <lamb/runtime.h>
#include <lamb/gc.h>

#define LAMB_BINOP(type, name, op) \
  uintptr_t name(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) { \
    env_t env = {env_count, env_values};                                \
    stack_t stack = {stack_count, stack_values};                        \
    GRAB(&env, &stack);                                                 \
    type n = ACCESS(&env, &stack, 0);                                   \
    GRAB(&env, &stack);                                                 \
    type m = ACCESS(&env, &stack, 0);                                   \
    return n op m;                                                      \
  }

uintptr_t lamb_true(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  return (uintptr_t) true;
}

uintptr_t lamb_false(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  return (uintptr_t) false;
}

uintptr_t lamb_if(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};
  GRAB(&env, &stack);
  uintptr_t p = ACCESS(&env, &stack, 0);
  GRAB(&env, &stack);
  GRAB(&env, &stack);

  if (p)
    return ACCESS(&env, &stack, 1);
  else
    return ACCESS(&env, &stack, 0);
}

uintptr_t lamb_zero64(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  return (uintptr_t) 0;
}

uintptr_t lamb_succ64(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};
  GRAB(&env, &stack);
  uintptr_t n = ACCESS(&env, &stack, 0);
  return n + 1;
}

LAMB_BINOP(uint64_t, lamb_eq64, ==)
LAMB_BINOP(uint64_t, lamb_lt64, <)
LAMB_BINOP(uint64_t, lamb_add64, +)
LAMB_BINOP(uint64_t, lamb_sub64, -)
LAMB_BINOP(uint64_t, lamb_mul64, *)
LAMB_BINOP(uint64_t, lamb_div64, /)
LAMB_BINOP(uint64_t, lamb_mod64, %)

uintptr_t lamb_print64(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};
  GRAB(&env, &stack);
  uintptr_t n = ACCESS(&env, &stack, 0);
  printf("%lu", n);
  return 0;
}

uintptr_t lamb_seq(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};
  uintptr_t stack_map = 4;
  stack_t stack1 = {0, gc_alloc(env_count, env_values, stack_count, stack_values, 256, sizeof(closure_t), &stack_map)};
  GRAB(&env, &stack);
  memcpy(stack1.values + (256 - stack.count), stack.values, stack.count * sizeof(closure_t));
  ACCESS(&env, &stack1, 0);
  GRAB(&env, &stack);
  return ACCESS(&env, &stack, 0);
}

uintptr_t lamb_newline(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  return (uintptr_t) "\n";
}

uintptr_t lamb_puts(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};
  GRAB(&env, &stack);
  const char *msg = (const char *) ACCESS(&env, &stack, 0);
  puts(msg);
  return 0;
}
