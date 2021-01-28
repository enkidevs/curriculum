---
author: mihaiberq
type: normal
category: feature
links:
  - >-
    [Classic test
    command](https://wiki.bash-hackers.org/commands/classictest){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The `test` Built-in


---

## Content

Previously, you've seen the `&&` and `||` operators that have different results based on whether other commands were successful or not. The `test` built-in allows us to evaluate expressions and, therefore, to have a different approach to using `&&` and `||`.

The syntax is as follows:

```bash
test expression
# or
[ expression ]
```

While the first option should work in most shells, the second one doesn't work in *zsh* for example.

The command returns **0** if the `expression` evaluates to *false* and **1** otherwise. The `[` **command** must take `]` as its last argument. For example, here are some simple tests you can perform:

```bash
test 1 -lt 2 && echo true || echo false
# true
```

`test` has a number of conditional flags, some of which are:

- `-e FILE`: true if *FILE* exists
- `-d FILE`: true if *FILE* exists and is a directory
- `-x FILE`: true if *FILE* exists and is executable
- `-z STRING`: true if *STRING* is empty
- `STRING1 \< STRING2`: true if *STRING1* sorts before *STRING2* (in ASCII; `=, \>` are also available)
- `INT1 -eq INT2`: true if *INT1* is equal to *INT2* (`-ne, -lt, -le, -gt, -ge` are also available)
- `!TEST`: true if *TEST* is false

Another example:

```bash
[ 1 \< 2 ] && [ "abc" = "abc" ]; echo $?
# 1
```

As you can see, `\<` must be escaped when using `[]`. `$?` is used to get the return value, hence the printed `1`.

There are also flags that replicate the functionality of `&&` (`-a`) and `||` (`-o`), but their use is *ill-advised*.


---

## Practice

Fill in the gaps for the following snippet to make sense:

```bash
touch script.sh
test ??? script.sh && echo "created"
# created
chmod +x script.sh
test ??? script.sh && echo "executable"
# executable
```

- `-e`
- `-x`
- `-ex`
- `-d`
- `-z`


---

## Revision

The equivalent syntax for the `test <expr>` command is

???

- `[ <expr> ]`
- `[<expr>]`
- `(( <expr> ))`
- `$(<expr>)`
- `!<expr>`
