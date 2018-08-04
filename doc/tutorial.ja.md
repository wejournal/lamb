# Lamb チュートリアル

## 前提

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

## インストール

つぎのコマンドを実行すると， `~/.lamb` に必要な諸々のファイルがインストールされます．

```
$ git clone git://github.com/wejournal/lamb.git
$ cd lamb
$ make -j8
$ make install # ~/.lamb にインストールする
$ export PATH="$HOME/.lamb/bin:$PATH"
```

## HELLO WORLD

つぎのような内容の `hello.lam` を用意してください．

<pre><code>
<strong>def</strong> main := ^stdin.
  "hello world\n"
</code></pre>

実行形式を生成するのは簡単です．

```
$ lamb hello.lam
$ ./a.out
hello world
```
