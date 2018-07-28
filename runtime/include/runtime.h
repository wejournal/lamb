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
  closure_t *(*code)(uintptr_t, closure_t *, uintptr_t, closure_t *);
  env_t env;
};

void runtime_init(void);
void runtime_exit(void);

closure_t *ACCESS(env_t *, stack_t *, uintptr_t);
void GRAB(env_t *, stack_t *);
void PUSH(env_t *, stack_t *, closure_t *(*code)(uintptr_t, closure_t *, uintptr_t, closure_t *));

#endif
