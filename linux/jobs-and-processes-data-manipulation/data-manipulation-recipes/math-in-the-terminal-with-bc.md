---
author: catalin
type: normal
category: tip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Math in the terminal with bc


---

## Content

As some shells offer the option of doing mathematical operations natively while others rely on `expr` to evaluate expressions, porting calculations between **UNIX** systems can raise some problems.

However, you can use the `bc` (basic calculator) to implement portable calculations in the shell.

Note the difference when using `bc`:

```bash
echo 10+3
10+3
echo 10+3 | bc
13
```

Multiple operations are supported:

```bash
echo "(4-3)^20-44" | bc
-43
```

You can convert bases with `obase`:

```bash
echo "obase=16; 2^8-1"|bc
FF
```

You can also specify the number of digits displayed with `scale`:

```bash
echo "scale=5; 100/70"|bc
1.42857
```


---

## Practice

Print the result of the following expressions, but only show the first 5 digits:

```bash
??? "???=???; 58/21" | ???
```

- `echo`
- `scale`
- `5`
- `bc`
- `obase`
- `math`
- `6`


---

## Revision

You can compute a mathematical expression in terminal by piping it through:

```bash
echo '(4-2)^3*2` | ???
```

- `bc`
- `math`
- `grep`
- `bo`
