#include <stdlib.h>
#include <setjmp.h>
#include <string.h>
#include <lamb/runtime.h>
#include <lamb/gc.h>

uintptr_t lamb_absurd(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};
  GRAB(&env, &stack);
  ACCESS(&env, &stack, 0);
  exit(1);
}

uintptr_t peirce_cont(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  --stack_count;
  env_values[1] = stack_values[stack_count];
  longjmp(*((jmp_buf *) (uintptr_t) env_values[0].code), 1);
}

uintptr_t lamb_peirce(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  uintptr_t stack_map = 4;
  env_t env1 = {2, gc_alloc(env_count, env_values, stack_count, stack_values, 2, sizeof(closure_t), &stack_map)};
  env1.values[0].code = NULL;
  env1.values[0].env.count = 0;
  env1.values[0].env.values = NULL;
  env1.values[1].code = NULL;
  env1.values[1].env.count = 0;
  env1.values[1].env.values = NULL;

  jmp_buf buf;

  if (setjmp(buf) == 0) {
    void **p = (void **) &env1.values[0].code;
    *p = malloc(sizeof(jmp_buf));
    memcpy(*p, (void *) &buf, sizeof(jmp_buf));

    env_t env = {env_count, env_values};
    stack_t stack = {stack_count, stack_values};
    GRAB(&env, &stack);
    PUSH(&env1, &stack, peirce_cont);
    uintptr_t i = ACCESS(&env, &stack, 0);
    free((jmp_buf *) (uintptr_t) env1.values[0].code);
    return i;
  } else {
    --stack_count;
    free((jmp_buf *) (uintptr_t) env1.values[0].code);
    return env1.values[1].code(env1.values[1].env.count, env1.values[1].env.values, stack_count, stack_values);
  }
}
