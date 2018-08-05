# A Lamb Tutorial

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

## LEXEMES

Lamb の語彙素はつぎのとおり．

- *lexeme* ::= `'` | `(` | `)` | `->` | `.` | `:` | `:=` | `^` | `def` | `in` | `let` | `type` | `val` | **NAT** | **CHAR** | **STRING** | **ID**

ただし **NAT**, **CHAR**, **STRING** および **ID** は語彙素のクラスで，正規表現で定義されます．

- **SPACE**: `/[\t\n\r ]+/`
- **COMMENT**: `/--[^\n]*\n/`
- **NAT**: `/[0-9]+/`
- **CHAR**: `/'([^\\']|\\.)'/`
- **STRING**: `/"([^\\"]|\\.)*"/`
- **ID**: `/[A-Z_a-z][A-Z_a-z0-9]*/`

**SPACE** と **COMMENT** は字句解析器によって無視されます．

## TYPES

型は型変数， 基底型， 関数型のみ．

- *ty* ::= *atty* | *atty* `->` *ty*
- *atty* ::= `'` **ID** | **ID** | `(` *ty* `)`

型変数は，識別子のまえに `'` をつけたものです．例．

<pre><code><strong>def</strong> I : 'a -> 'a := ^x. x</code></pre>

基底型は， 識別子です．例．

<pre><code><strong>def</strong> I : a -> a := ^x. x</code></pre>

型変数と基底型の違いは，
言葉で説明するのはすこし難しい．そこで例で説明しましょう．
たとえば，チャーチ数の 2 は基底型でつぎのように書くことができます:

<pre><code><strong>def</strong> two : (a -> a) -> a -> a := ^f. ^x. f (f x)</code></pre>

ここで `a -> a` という部分に着目しますと，
これは `two` の型に2回出現することがわかります
(`->` が右結合なので， `(a -> a) -> a -> a = (a -> a) -> (a -> a)` ということに注意してください)．
そこで `'b = a -> a` とおいて，
これをひとつにまとめたい．
それなら型変数でもって，つぎのように書いてもよろしい:

<pre><code><strong>def</strong> two : 'b -> 'b := ^f. ^x. f (f x)</code></pre>

ここで `'b = a -> a` であることは， 処理系によって推論されます．
ところが基底型でつぎのようには書けません:

<pre><code><em>-- これは非合法</em>
<strong>def</strong> two : c -> c := ^f. ^x. f (f x)</code></pre>

なんとなれば， `c` というのは基底型であって，関数型ではないからです．
関数型でないのにもかかわらず関数としてもちいているので，
エラーになるというわけです．

型変数は，そこに具体的な，すなわち基底型もしくは関数型が代入されることを表すわけです．

### 型変数と基底型のスコープ

型変数と基底型にはスコープがあります．
たとえば，つぎのように `one` と `two` を定義した場合，
`one` の型に含まれる `a` と `two` の型に含まれる `a` はべつのものである，
と考えるほうが自然でしょう．

<pre><code><strong>def</strong> one : (a -> a) -> a -> a := ^f. ^x. f x
<strong>def</strong> two : (a -> a) -> a -> a := ^f. ^x. f (f x)</code></pre>

では，つぎの場合はどうでしょうか？

<pre><code><strong>def</strong> two : (a -> a) -> a -> a := ^f. ^x.
  <strong>let</strong> y : a := f x <strong>in</strong>
    f y</code></pre>

すくなくともわたしは， `y : a` という部分の `a` は，
`two` の型に含まれる `a` と同じ型を表しているつもりです．

Lamb では，この場合 `two` の型に含まれる `a` と，
`y : a` の `a` は同じ型として扱われます．
したがって，上記の例は合法です．
基底型だけでなく型変数についてもまったく同様に扱われます．

ところが，プログラム全体ですべての `a` が同じ型として扱われるわけではありません．
たとえば，この節の最初で示したつぎの例では，
`a` はべつの型として扱われます．

<pre><code><strong>def</strong> one : (a -> a) -> a -> a := ^f. ^x. f x
<strong>def</strong> two : (a -> a) -> a -> a := ^f. ^x. f (f x)</code></pre>

まれではありますが， `one` と `two` の `a` を同じ型として扱いたいこともあるかもしれません．
その場合， `type` 宣言をすればよろしい:

<pre><code><strong>type</strong> a
<strong>def</strong> one : (a -> a) -> a -> a := ^f. ^x. f x
<strong>def</strong> two : (a -> a) -> a -> a := ^f. ^x. f (f x)</code></pre>

この仕様は FFI を書くとき便利です．このことはのちのちの節でくわしく説明します．

## EXPRESSIONS

式は自然数，文字，文字列，変数，適用，抽象そして `let` です．

- *asc* ::= ε | `:` *ty*
- *exp* ::= *appexp* | `^` **ID** *asc* `.` *exp* | `let` **ID** *asc* `:=` *exp* `in` *exp*
- *appexp* ::= **atexp** | **appexp** **atexp**
- *atexp* ::= **NAT** | **CHAR** | **STRING** | **ID** | `(` *exp* `)`

このうち自然数，文字および文字列は，変数，抽象，抽象のみっつの要素に還元できます．
具体的には，それぞれ自然数と文字はチャーチ数，文字列はチャーチリストにエンコーディングされます．
たとえば，

- `0 = ^f. ^x. x`
- `1 = ^f. ^x. f x`
- `2 = ^f. ^x. f (f x)`
- `'a' = 97`
- `'b' = 98`
- `'c' = 99`
- "" = `^f. ^x. x`
- "a" = `^f. ^x. f 'a' x`
- `"abc" = ^f. ^x. f 'a' (f 'b' (f 'c' x))`

です． したがって Lamb の式のうち本質的な要素は，変数，適用，抽象，そして `let` といえます．

### Let 多相

Lamb は let 多相をサポートしています．
したがって， つぎのコードは合法です:

<pre><code><strong>def</strong> I :=
  <strong>let</strong> I := ^x. x <strong>in</strong>
    I I</code></pre>

もし多相性がない単相な言語だとすれば，
このコードは型が循環してしまうため，型エラーにならなければならないことに注意してください．

ところでさきほど， Lamb では let はほかの要素に還元できない，
本質的な要素だと述べました．それはなぜでしょうか．
型なしラムダ計算では， `let x := e1 in e2` は `(^x. e2) e1` の略記として定義することができるでしょう．
それでは， Lamb ではどうなのでしょうか？
それができないのです． 前述した let 多相の例を考えてみますと

<pre><code><strong>def</strong> I :=
  <strong>let</strong> I := ^x. x <strong>in</strong>
    I I</code></pre>

は合法にもかかわらず

<pre><code><strong>def</strong> I :=
  (^I. I I) (^x. x)</code></pre>

は型エラーになってしまい，非合法です．

それでは，単純型つきラムダ計算ではどうなのでしょうか．
じつは，単純型つきラムダ計算では
`let x := e1 in e2` を `(^x. e2) e1` と定義しても問題ないのです．
なぜならもともと単相なので

<pre><code><strong>def</strong> I :=
  <strong>let</strong> I := ^x. x <strong>in</strong>
    I I</code></pre>

も型エラーにならなければならないからです．
両方型エラーになるか，もしくは両方型エラーにならないならば，
`let x := e1 in e2` を `(^x. e2) e1` と定義しても問題ありません．
Lamb には多相性があるためこの条件を満たさないので，単なる略記として定義できないのです．

## DECLARATIONS

宣言は `type`, `val`, `def` のみっつです．

- *decls* ::= ε | *decl* *decls*
- *decl* ::= `type` **ID** | `val` **ID** `:` *ty* | `def` **ID** *asc* `:=` *exp*

またプログラム全体は，宣言の列です．

- *program* ::= *decls*

### 単相宣言

`type` は単相宣言といい，
基底型が単相であることを宣言します．
たとえばつぎのコードでは， `a` は多相ですが `false` は単相です．

<pre><code><strong>type</strong> false
<strong>val</strong> absurd : false -> a
</code></pre>

これは一見無意味な仕様に思えるかもしれませんが，後述する FFI を書くときに便利です．
たとえば， チャーチ数では遅いから，
C の `uint64_t` などを直接使いたい，としましょう．
その場合，つぎのように書くことになります:

<pre><code><strong>type</strong> uint64_t
<strong>val</strong> zero64 : uint64_t
<strong>val</strong> succ64 : uint64_t -> uint64_t
<strong>val</strong> add64 : uint64_t -> uint64_t -> uint64_t
<strong>val</strong> sub64 : uint64_t -> uint64_t -> uint64_t
<strong>val</strong> mul64 : uint64_t -> uint64_t -> uint64_t
<strong>val</strong> div64 : uint64_t -> uint64_t -> uint64_t
<strong>val</strong> mod64 : uint64_t -> uint64_t -> uint64_t
</code></pre>

しかし `uint64_t` に多相になってほしいわけではないでしょう．
そこで `type` で単相であることを宣言しておくわけです．

### val 宣言

`val` 宣言にはふたつの用途があります．
ひとつめは分割コンパイル， ふたつめは FFI です．

#### 分割コンパイル

Lamb は分割コンパイルをサポートしています．
たとえば，つぎのふたつのコードを，べつべつにコンパイルしてリンクしたいとしましょう．

**k.lam**:

<pre><code><strong>def</strong> K := ^x. ^_. x</code></pre>

**sep.lam**:

<pre><code><strong>def</strong> main := K("hello world\n")</code></pre>

その場合，まず **k.lam** の型定義をするファイルが必要です．
手書きすることもできますが，さいわい，これは `-i` オプションで自動生成できます:

```
$ lamb -o k.la -i k.lam
```

拡張子はなんでもかまいませんが， **.la** という拡張子をつける習慣があります．

**k.la**:

<pre><code><strong>val</strong> K : a -> b -> a</code></pre>

つぎに， **k.lam** と **sep.lam** を `-c` オプションをつけてコンパイルします．
**sep.lam** は **k.lam** に依存しているので，
コンパイルするために型定義ファイルが必要です．
そのため， 自動生成した **k.la** を引数として与えます．

```
$ lamb -c k.lam
$ lamb -c k.la sep.lam
```

引数の順番には意味があります． 依存関係の順番にコマンドラインから与えなければなりません．
エラーメッセージの表示位置など厳密には細かい違いがありますが，
基本的には， `cat` で結合したファイルをコンパイルしていると考えてください．

最後に，生成されたオブジェクトコードを `--link` オプションでリンクします:

```
$ lamb --link k.lam.o sep.lam.o
$ ./a.out
hello world
```

リンクは `ld` などでもできますが，
libc や Lamb のランタイムも手動でリンクしなければなりません．
`lamb` コマンドでリンクすることがもっとも簡単です．

#### FFI

Lamb は FFI もサポートしています．

この節の最後に載せてある内容の **ffi.lam** と **ffi.c** を用意してください．
まず， **ffi.c** をコンパイルしておきましょう．

```
$ gcc -I$HOME/.lamb/include -c -o ffi.c.o ffi.c
```

つぎに， **ffi.lam** をコンパイルしておきます．

```
$ lamb -c -o ffi.lam.o ffi.lam
```

最後に， **ffi.c.o** と **ffi.lam.o** をリンクします．

```
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
