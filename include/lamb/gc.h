#ifndef LAMB_GC_H__
#define LAMB_GC_H__

#include <stdint.h>
#include "runtime.h"

#ifndef GC_MEMORY_SIZE
#define GC_MEMORY_SIZE 65536
#endif

typedef struct memory memory_t;
typedef struct free_chunk free_chunk_t;
typedef struct used_chunk used_chunk_t;

struct memory {
  uintptr_t volume;
  void *array;
  memory_t *next;
};

/*     +===============================+     *
 *     |      THE  MEMORY  LAYOUT      |     *
 *     |      for  the free_chunk      |     *
 *     +===============================+     *
 *     |0|..|7|8|..|15|16|..|23|24|..|S|     *
 * MSB +------+-------+--------+-------+ LSB *
 *     | size |  next |  prev  |  free |     *
 *     +------+-------+--------+-------+     *
 * where                                     *
 *   S = size + 23                           */
struct free_chunk {
  uintptr_t size;
  free_chunk_t *prev;
  free_chunk_t *next;
};

/*     +====================================================+     *
 *     |                 THE  MEMORY LAYOUT                 |     *
 *     |                 for the used_chunk                 |     *
 *     +====================================================+     *
 *     |0|..|T-1|T|..|T+7|T+8|..|T+15|T+16|..|T+23|T+16|..|U|     *
 * MSB +--------+--------+-----------+------------+---------+ LSB *
 *     |stackmap|    n   |    size   |    next    |   used  |     *
 *     +--------+--------+-----------+------------+---------+     *
 * where                                                          *
 *   S = n * size                                                 *
 *   T = ceil(size / 8 (bytes) / 8 (bits)) * 8                    *
 *   U = T + S + 23                                               */
struct used_chunk {
  uintptr_t n;
  uintptr_t size;
  used_chunk_t *next;
};

void gc_init(void);
void gc_exit(void);
void gc_mark(uintptr_t, closure_t *, uintptr_t, closure_t *);
void gc_sweep(uintptr_t, closure_t *, uintptr_t, closure_t *);
void gc_free(void);
void gc_perform(uintptr_t, closure_t *, uintptr_t, closure_t *);
void gc_extend(void);
void *gc_allocate(uintptr_t, uintptr_t, const uintptr_t *);
void *gc_alloc(uintptr_t, closure_t *, uintptr_t, closure_t *, uintptr_t, uintptr_t, const uintptr_t *);

#endif
