# Lamb チュートリアル

Lamb は静的に型つけされた，遅延評価の意味論をもつ純粋関数型言語です．

## ビルド

```
$ git clone git://github.com/wejournal/lamb.git
$ cd lamb
$ make -j8
$ export LAMB_HOME="$PWD"
$ export PATH="$LAMB_HOME/bin:$PATH"
```

`LAMB_HOME` 環境変数は(いまのところ)必要なので，設定しておいてください．

## Hello World

なにはともあれ， hello world を書いてみましょう．
`hello.lam` という名前で，つぎのようなファイルを用意します．

```
def main := ^stdin. "hello world\n"
```

コンパイル方法はつぎのとおり．

```
$ lamb -o hello hello.lam
$ ./hello
hello world
```

`main` 関数の第1引数は標準入力で，
チャーチエンコーディングされた自然数のリストです．
戻り値は標準出力にそのまま出力されます．
これらの仕様により， 標準入力をすべて標準出力に出力するプログラムはつぎのように書くことができます:

```
def main := ^stdin. stdin
```

## Scoped Type Variables

Lamb の型変数はデフォルトで Scoped Type Variables です．
つまり

```
def id : a -> a := ^x.
  let y : a := x in
    y
```

というようにした場合， `id : a -> a` の部分では `a` は多相になりますが
`y : a` という部分では `a` は単相です．

## Type Hole

Lamb では Type Hole も使えます．

```
def const : 'a -> 'b -> 'a := ^x. ^y. x
```

のようにクォートで指定します．

## 分割コンパイル

巨大なファイルをコンパイルすると， 当然ですが時間がかかります．
ですが，変更していない部分はコンパイルしなおさずともよいはずです．
そのような場合，あまり変更しない部分と頻繁に変更する部分を別のファイルにしておけば，
あまり変更しない部分のコンパイルをしなおさずに済みます．
このような機能を，分割コンパイルといいます．

では，つぎのような `k.lam` というファイルがあって，
今回はそうではありませんが， ものすごく巨大でコンパイルに時間がかかるけれども，
あまり変更されないファイルであるとしましょう．

```
def K := ^x. ^y. x
```

そのような場合，まず `-c` オプションをつけて， `k.lam` 単体でコンパイルしておきます．

```
$ lamb -o k.o -c k.lam
```

それから， `k.o` を使いたいファイルでは，つぎのように `val` で型宣言をします:

```
val K : a -> b -> a
def main := K("hello world\n")
```

このファイルを `hello.lam` としましょう． こちらも `-c` オプションでコンパイルしておきます:

```
$ lamb -o hello.o -c hello.lam
```

これで `k.o` と `hello.o` というふたつのオブジェクトコードができました．
あとは `--link` オプションで， `k.o` と `hello.o` をリンクするのみです!

```
$ lamb -o hello --link k.o hello.o
```

若干まわりくどいように思えるかもしれませんが，
実際には，これらの手順は `Makefile` などを書くことで簡単に自動化できます．つぎのように:

```
OBJS := k.o hello.o

hello: $(OBJS)
	lamb --link $^

%.o: %.lam
	lamb -o $@ $<
```

あとはファイルが増えたら `OBJS` に追記してゆけばよいわけです．
こうしておけば， `make -j8` のように並列コンパイルもできるので高速です．

## FFI

Lamb の世界ですべてが完結すればよいのですが， 現実はたいてい，そうではありません．
実際のところ， どのような言語であれ C などで書かれたライブラリ関数を呼ぶ必要があります．
Lamb はそのために必要な機能を備えています．
たとえば， チャーチリストでは非効率的なので，
C レベルの文字列を直接使いたいということはあるでしょう．
そのためにまずは， `ffi.lam` という名前でつぎのようなファイルを作成しましょう．

```
type void
type string

val seq : a -> b -> b
val puts : string -> void
val hello : string

def main := ^_. seq (puts hello) ""
```

この例では，正格評価の関数 `seq` と文字列を出力する関数 `puts` および文字列 `hello` を，
C で実装して呼びたいわけです． それでは， それぞれの関数を C で実装してみましょう．

```
#include <stdio.h>
#include <runtime.h>

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

`lamb_` という接頭辞は， ほかの言語の識別子と衝突しないために Lamb コンパイラが自動的に付与します．

FFI で呼びだす関数は，すべてこのようなシグネチャをしていなければなりません．
`ACCESS` や `GRAB` は `runtime.h` で定義されていますが，
これらの関数の意味を知るには Krivine Machine について理解しなければなりません．
それはこのチュートリアルの手には余るので，
ここで説明することは避けますが，
ともあれ，このようにバインディングを書くことで C の関数を呼ぶことができます．

## 式と型

- *ty* ::= *atty* | *atty* `->` *ty*
- *atty* ::= `'` **ID** | **ID** | `(` *ty* `)`
- *tyopt* ::= ε | `:` *ty*
- *exp* ::= *atexp* | `^` **ID** *tyopt* `.` *exp* | `let` **ID** *tyopt* `:=` *exp* `in` *exp*
- *atexp* ::= **NAT** | **CHAR** | **STRING** | **ID** | `(` *exp* `)`

## 宣言

Lamb プログラムは，宣言の列です． 宣言は， `type t` と `val x : t` と `def x [: t] := e`
というみっつの形式しかもちません．

- *program* ::= *decls*
- *decls* ::= ε | *decl* *decls*
- *decl* ::= `type` **ID** | `val` **ID** `:` *ty* | `def` **ID** *tyopt* `:=` *exp*

### 単相宣言

`type t` は `t` という識別子が単相の型であることを宣言します．
たとえば，

```
type A
def id_A : A -> A := ^x. x
```

のようにすれば， `A` は単相の型であるということになります．
小文字と大文字で区別しているということではありません． もし

```
def id_A : A -> A := ^x. x
```

のように， `type` で宣言せずに `A` をいきなりもちいれば，
これは多相型ということになってしまいます．
つまり `type` をもちいた場合
`id_A id_A` は型エラーになりますが，
もちいなければ型エラーになりません．

`type` の仕様は一見奇妙に思えるかもしれませんが，
動作は完全に論理的です．
なぜならば， Scoped Type Variables の仕様があるので，
この動作は式で完全に説明できるからです．
ここで

```
def const_AB : A -> B -> A := ^x : A. ^y : B.
  let id_A : A -> A := ^z. z in
    id_A x
```

という宣言について考えてみますと，
Scoped Type Variables があるので，
`id_A : A -> A` という宣言が多相でないということはわかるでしょう．
つまりもし， 

```
def const_BA : B -> A -> B := ^x : B. ^y : A.
  let id_A : A -> A := ^z. z in
    id_A x
```

というようにした場合，これは型エラーになることが妥当ということです．

言いかえれば， もし `A` が型環境に自由変数として含まれる場合，
Scoped Type Variables の仕様によってそれは単相にならなければならないということです．
つまり `type` 宣言は， 型環境に自由変数を追加する構文ということになります．

単相宣言は一見無意味に思えるかもしれませんが，
FFI を書くときなどに非常に便利です．
たとえば

```
type int64_t
val add : int64_t -> int64_t -> int64_t
val sub : int64_t -> int64_t -> int64_t
val mul : int64_t -> int64_t -> int64_t
val div : int64_t -> int64_t -> int64_t
val mod : int64_t -> int64_t -> int64_t
```

のようにすれば，
高速に動作する整数の演算を簡単に用意できますが，
`int64_t` は多相ではなく単相になってほしいと考えられるからです．
大文字から始まる識別子は単相，
小文字から始まる識別子は多相というふうにもできますが，
Scoped Type Variables から自然にでる仕様なので，
こちらを採用しています．
