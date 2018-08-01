#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../include/runtime.h"
#include "../include/gc.h"

memory_t *memory = NULL;
free_chunk_t *free_chunk = NULL;
used_chunk_t *used_chunk = NULL;

/* If size is a multiple of 64                 *
 * then stack_map_size = (size / 64) * 8;      *
 * else stack_map_size = ((size /64) + 1) * 8; */
static inline uintptr_t calc_stack_map_size(uintptr_t size) {
  return
    size % (sizeof(uintptr_t) * 8) == 0
    ? (size / (sizeof(uintptr_t) * 8)) * 8
    : ((size / (sizeof(uintptr_t) * 8)) + 1) * 8;
}

void gc_init(void) {
  memory = malloc(sizeof(memory_t));
  memory->volume = GC_MEMORY_SIZE;
  memory->array = malloc(GC_MEMORY_SIZE);
  memory->next = NULL;

  free_chunk = memory->array;
  free_chunk->size = GC_MEMORY_SIZE - sizeof(free_chunk_t);
  free_chunk->next = NULL;
}

void gc_exit(void) {
  memory_t *mem = memory;

  while (mem) {
    memory_t *next = mem->next;
    free(mem->array);
    free(mem);
    mem = next;
  }
}

bool is_used(void *p) {
  used_chunk_t *tmp = used_chunk;

  while (tmp) {
    uintptr_t q = ((uintptr_t) tmp) + sizeof(used_chunk_t);

    if (((uintptr_t) p) == q)
      return true;

    tmp = tmp->next;
  }

  return false;
}

bool is_free(void *p) {
  free_chunk_t *tmp = free_chunk;

  while (tmp) {
    uintptr_t q = ((uintptr_t) tmp) + sizeof(free_chunk_t);

    if (((uintptr_t) p) == q)
      return true;

    tmp = tmp->next;
  }

  return false;
}

void gc_mark(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  uintptr_t lives_size = 0;
  void **lives = malloc(16777216);

  /* If env_values is an invalid pointer, ignore it. */
  if (!(env_values && !is_used(env_values) && !is_free(env_values))) {
    lives[lives_size] = env_values;
    ++lives_size;
  }

  lives[lives_size] = stack_values;
  ++lives_size;

  while (lives_size > 0) {
    --lives_size;
    void *live = lives[lives_size];
    used_chunk_t *live_chunk = (used_chunk_t *) (((uintptr_t) live) - sizeof(used_chunk_t));

    if ((live_chunk->size & 1) == 1)
      continue;

    uintptr_t stack_map_size = calc_stack_map_size(live_chunk->size);
    uintptr_t *stack_map = (uintptr_t *) (((uintptr_t) live_chunk) - stack_map_size);

    for (uintptr_t i = 0; i < live_chunk->n; ++i) {
      for (uintptr_t j = 0; j < live_chunk->size / sizeof(uintptr_t); ++j) {
        uintptr_t x = j / (sizeof(uintptr_t) * 8);
        uintptr_t y = j % (sizeof(uintptr_t) * 8);
        bool ptr = (stack_map[x] >> y) & 1;

        if (!ptr)
          continue;

        void *p = (void *) (((uintptr_t *) live)[i * (live_chunk->size / sizeof(uintptr_t)) + j]);

        if (!p)
          continue;

        if (lives_size < 16777216) {
          lives[lives_size] = p;
          ++lives_size;
        } else {
          fprintf(stderr, "runtime error: gc lives stack over flow\n");
          exit(1);
        }
      }
    }

    live_chunk->size |= 1;
  }

  free(lives);
}

void gc_sweep(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  used_chunk_t **addr = &used_chunk;

  while (*addr) {
    used_chunk_t *tmp = *addr;
    if ((tmp->size & 1) == 1) {
      tmp->size &= ~1;
      addr = &tmp->next;
    } else {
      uintptr_t stack_map_size = calc_stack_map_size(tmp->size);
      free_chunk_t *freed = (free_chunk_t *) (((uintptr_t) tmp) - stack_map_size);
      freed->size = tmp->n * tmp->size + stack_map_size + sizeof(used_chunk_t) - sizeof(free_chunk_t);
      freed->next = free_chunk;
      free_chunk = freed;
      *addr = tmp->next;
    }
  }
}

void gc_compact(void) {
  free_chunk_t *tmp = free_chunk;

  while (tmp) {
    uintptr_t tmp_addr = (uintptr_t) tmp;
    uintptr_t succ_addr = tmp_addr + tmp->size + sizeof(free_chunk_t);

    free_chunk_t *pred = NULL;
    free_chunk_t *succ = NULL;

    free_chunk_t *tmp1 = free_chunk;

    while (tmp1) {
      uintptr_t tmp1_addr = (uintptr_t) tmp1;

      if (tmp1_addr == succ_addr)
        succ = tmp1;
      else if (((uintptr_t)tmp1->next) == succ_addr)
        pred = tmp1;

      if (succ && pred)
        break;

      tmp1 = tmp1->next;
    }

    if (succ) {
      if (pred)
        pred->next = succ->next;

      if (((uintptr_t) free_chunk) == succ_addr)
        free_chunk = free_chunk->next;

      tmp->size += sizeof(free_chunk_t) + succ->size;
    }

    tmp = tmp->next;
  }
}

void gc_free() {
  memory_t **addr = &memory;

  while (*addr) {
    memory_t *mem = *addr;

    if (!mem->next)
      return;

    uintptr_t i = (uintptr_t) mem->array;
    uintptr_t j = i + mem->volume;

    bool empty = true;
    used_chunk_t *tmp = used_chunk;

    while (tmp) {
      uintptr_t k = (uintptr_t) tmp;

      if (i <= k && k < j) {
        empty = false;
        break;
      }

      tmp = tmp->next;
    }

    if (empty) {
      free_chunk_t **free_addr = &free_chunk;

      while (*free_addr) {
        free_chunk_t *tmp = *free_addr;

        uintptr_t k = (uintptr_t) tmp;

        if (i <= k && k < j)
          *free_addr = tmp->next;
        else
          free_addr = &tmp->next;
      }

      *addr = mem->next;
      free(mem->array);
      free(mem);
    } else {
      addr = &mem->next;
    }
  }
}

void gc_perform(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  gc_mark(env_count, env_values, stack_count, stack_values);
  gc_sweep(env_count, env_values, stack_count, stack_values);
  gc_compact();
  gc_free();
}

void gc_extend() {
  memory_t *mem = malloc(sizeof(memory_t));
  mem->volume = GC_MEMORY_SIZE;
  mem->array = malloc(GC_MEMORY_SIZE);
  mem->next = memory;

  memory = mem;

  free_chunk_t *tmp = memory->array;
  tmp->size = GC_MEMORY_SIZE - sizeof(free_chunk_t);
  tmp->next = free_chunk;

  free_chunk = tmp;
}

void *gc_allocate(uintptr_t n, uintptr_t size, const uintptr_t *stack_map) {
  /* If size is a multiple of 8         *
   * then size = nsize;                 *
   * else size = ((nsize / 8) + 1) * 8; */
  size =
    size % sizeof(uintptr_t) == 0
    ? size
    : ((size / sizeof(uintptr_t)) + 1) * sizeof(uintptr_t);

  uintptr_t nsize = n * size;
  uintptr_t stack_map_size = calc_stack_map_size(size);
  uintptr_t used_chunk_size = stack_map_size + sizeof(used_chunk_t) + nsize;

  free_chunk_t **addr = &free_chunk;

  while (*addr) {
    free_chunk_t *tmp = *addr;

    if (tmp->size < used_chunk_size) {
      addr = &tmp->next;
      continue;
    }

    free_chunk_t *next = (free_chunk_t *) (((uintptr_t) tmp) + used_chunk_size);
    next->size = tmp->size - used_chunk_size;
    next->next = tmp->next;
    *addr = next;

    uintptr_t *stack_map_addr = (uintptr_t *) tmp;
    used_chunk_t *new = (used_chunk_t *) (((uintptr_t) tmp) + stack_map_size);

    memcpy(stack_map_addr, stack_map, stack_map_size);
    new->n = n;
    new->size = size;
    new->next = used_chunk;

    used_chunk = new;

    void *p = (void *) (((uintptr_t) new) + sizeof(used_chunk_t));
    memset(p, 0, nsize);
    return p;
  }

  return NULL;
}

void *gc_alloc(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values, uintptr_t n, uintptr_t size, const uintptr_t *stack_map) {
  void *p = gc_allocate(n, size, stack_map);

  if (!p) {
    gc_perform(env_count, env_values, stack_count, stack_values);
    p = gc_allocate(n, size, stack_map);
  }

  if (!p) {
    gc_extend();
    p = gc_allocate(n, size, stack_map);
  }

  if (!p) {
    fprintf(stderr, "runtime error: can't allocate memory.\n");
    exit(1);
  }

  return p;
}
