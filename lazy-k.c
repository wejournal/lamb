#include "runtime.h"
#include "gc.h"

closure_t *lamb_main(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values);

closure_t *nil(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};

  GRAB(&env, &stack);
  GRAB(&env, &stack);
  return ACCESS(&env, &stack, 0);
}

closure_t *O(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  return 0;
}

closure_t *S(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};

  GRAB(&env, &stack);
  uintptr_t n = ACCESS(&env, &stack, 0);

  return n + 1;
}

closure_t *f(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};

  uintptr_t stack_map = 0;
  env_t env1 = {0, gc_allocate(0, 0, &stack_map)};

  GRAB(&env, &stack);
  PUSH(&env1, &stack, O);
  PUSH(&env1, &stack, S);
  uintptr_t n = ACCESS(&env, &stack, 0);

  --stack.count;
  --stack.count;

  if (n > 255)
    return;

  putchar(n);

  GRAB(&env, &stack);

  env_t env2 = {0, gc_allocate(0, 0, &stack_map)};

  PUSH(&env2, &stack, O);
  PUSH(&env2, &stack, f);

  return ACCESS(&env, &stack, 0);
}

int main(int argc, char *argv[]) {
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

  closure_t prim_nil;
  prim_nil.code = nil;
  prim_nil.env = env;

  stack.count = 3;
  stack.values[0] = prim_O;
  stack.values[1] = prim_f;
  stack.values[2] = prim_nil;

  lamb_main(env.count, env.values, stack.count, stack.values);

  runtime_exit();
}
