# Lamb チュートリアル

## PREREQUISITES

以下のコマンドが必要です:

- mlton
- mlyacc
- mllex
- gcc
- x86_64-w64-mingw32-gcc

これらのコマンドをインストールする方法は環境によって異なると思いますが，
Ubuntu の場合は，つぎのパッケージをインストールすればよろしい．

```
$ sudo apt install mlton
$ sudo apt install mingw-w64
```

## INSTALLATION

つぎのコマンドを実行すると， `~/.lamb` に必要な諸々のファイルがインストールされます．

```
$ git clone git://github.com/wejournal/lamb.git
$ cd lamb
$ make -j8
$ make install # ~/.lamb にインストールする
$ export PATH="$HOME/.lamb/bin:$PATH"
```

## HELLO WORLD

つぎのような内容の **hello.lam** を用意してください．

<pre><code><strong>def</strong> main := ^stdin.
  "hello world\n"</code></pre>

実行形式を生成するのは簡単です．

```
$ lamb hello.lam
$ ./a.out
hello world
```
## SEPARATE COMPILATION

**k.lam**:

<pre><code><strong>def</strong> K := ^x. ^_. x</code></pre>

**hello.lam**:

<pre><code><strong>def</strong> main := K("hello world\n")</code></pre>

```
$ lamb -o k.lami -i k.lam
$ cat k.lami
val K : a -> b -> a
$ lamb -c k.lam
$ lamb -c k.lami hello.lam
$ lamb --link k.lam.o hello.lam.o
$ ./a.out
hello world
```

## FFI

```
$ gcc -I$HOME/.lamb/include -c -o ffi.c.o ffi.c
$ lamb -c -o ffi.lam.o ffi.lam
$ lamb --link ffi.lam.o ffi.c.o
$ ./a.out
hello world
```

**ffi.lam**:

<pre><code><strong>type</strong> void
<strong>type</strong> string

<strong>val</strong> seq : a -> b -> b
<strong>val</strong> puts : string -> void
<strong>val</strong> hello : string

<strong>def</strong> main := ^_. seq (puts hello) ""</code></pre>

**ffi.c**:

```c
#include <stdio.h>
#include <lamb/runtime.h>

uintptr_t lamb_seq(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};
  GRAB(&env, &stack);
  ACCESS(&env, &stack, 0);
  GRAB(&env, &stack);
  return ACCESS(&env, &stack, 0);
}

uintptr_t lamb_hello(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  return (uintptr_t) "hello world";
}

uintptr_t lamb_puts(uintptr_t env_count, closure_t *env_values, uintptr_t stack_count, closure_t *stack_values) {
  env_t env = {env_count, env_values};
  stack_t stack = {stack_count, stack_values};
  GRAB(&env, &stack);
  const char *msg = (const char *) ACCESS(&env, &stack, 0);
  puts(msg);
  return 0;
}
```
