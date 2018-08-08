#include <string.h>
#include "../include/lamb/runtime.h"
#include "../include/lamb/gc.h"

void runtime_init(void) {
  gc_init();
}

void runtime_exit(void) {
  gc_exit();
}

uintptr_t ACCESS(env_t *env, stack_t *stack, uintptr_t i)
{
  closure_t clos = env->values[env->count - i - 1];
  return clos.code(clos.env.count, clos.env.values, stack->count, stack->values);
}

void GRAB(env_t *env, stack_t *stack)
{
  uintptr_t stack_map = 4;
  closure_t *new_env_values =
    gc_alloc(env->count, env->values, stack->count, stack->values, env->count + 1, sizeof(closure_t), &stack_map);
  memcpy(new_env_values, env->values, env->count * sizeof(closure_t));
  --stack->count;
  closure_t clos = stack->values[stack->count];
  env->values = new_env_values;
  env->values[env->count] = clos;
  ++env->count;
}

void PUSH(env_t *env, stack_t *stack, uintptr_t (*code)(uintptr_t, closure_t *, uintptr_t, closure_t *))
{
  closure_t clos;
  clos.code = code;
  clos.env = *env;

  stack->values[stack->count] = clos;
  ++stack->count;
}
