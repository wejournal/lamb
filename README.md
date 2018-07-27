# Lamb

An implementation of Lambda Calculus.

## Building

Install mlton, mlyacc and mllex. And type:

```
make
```

## SYNOPSIS

```
lamb [-t|--typed|-u|--untyped] [-c|--compile|-e|--eval|-i|--infer] [--target {linux|windows}] < foo.lam > foo.s
```

## USAGE

If you type simply:

```
$ lamb < foo.lam > foo.s
```

Lamb's default behavior is:

```
$ lamb --typed --compile --target linux < foo.lam > foo.s
```

### VM Execution

```
$ lamb --eval < foo.lam
```

`--typed` is default.

### Type Inference Only

```
$ lamb --infer < foo.lam
```

### Skip Type Check

WITH GREAT POWER COMES GREAT RESPONSIBILITY.

```
$ lamb --untyped --compile < foo.lam > foo.s
```

```
$ lamb --untyped --eval < foo.lam > foo.s
```

### Windows Target (Cross Compiling)

```
$ lamb --target windows < foo.lam > foo.s
$ x86_64-w64-mingw32-gcc runtime.c gc.c lamb.c foo.s
```

Note: macOS target is not tested.
But its ABI is same as Linux, System V AMD64 ABI, so I believe it works.

## Language Design Note

A Lamb program is a church list of numbers. The following code shows `a` to stdout.

```
let nil := ^f. ^z. z in
let cons := ^x. ^xs. ^f. ^z. f x (xs f z) in
  cons 97 nil
```

97 is an abbreviation of `S (S (.. (S O) ..))` repeating 97 times.
(in ASCII, the charcode of `a` is 97.)
where `S` and `O` are church number constructors.
