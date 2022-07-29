---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
---

# Input And Output Redirection With `<` and `>`


---

## Content

The pipe operator `|` allows us to glue the `stdout` of one process to the `stdin` of another process.  However, it's also possible to make a process's `stdout` descriptor point directly to a file, so that everything written to stdout is actually written to a file.  We can do likewise for `stdin`, so that the contents of the file are read in automatically as input.

To do this we use the redirection operators `>` and `<`.

To redirect a process's output to a file, use the `>` operator like so:

```shell
ps aux > ps_output.txt
```

This will write the output of `ps aux` to the file `ps_output.txt` in the current directory (whereas normally it would show the output on screen).  The `ps` command itself is unaware that it's actually writing to a file.  Internally it is simply writing to "standard output" and the operating system is redirecting standard output to a literal file behind the scenes.

To have a specific file treated as standard input, use the `<` operator like so:

```shell
sort < words.txt
Aardvark
Advice
Apple
...
```

Here, `sort` will read `stdin` until it sees the "end of file" marker and sort the lines alphabetically, writing the sorted output to `stdout`.

The `>` operator is much more common than the `<` operator because many programs have direct support for an input filename as an argument.  For example, `sort words.txt` would work just as well as `sort < words.txt`.  However, if `sort` only had support for reading from `stdin`, we could still get it to read from a file by using `<`.

It's relatively rarer for a program to have direct support for an "output filename".  That is, it's more likely for a program to write whatever output it has to `stdout` and rely on the user to redirect `stdout` if necessary.

### The Problem With `cat file | ...`

You might run into this idiom

```shell
cat some_file.txt | some_command
```

where `some_file.txt` is any old file and `some_command` is used to process the contents of the file.  The `cat` command will write the contents of `some_file.txt` to `stdout` while the pipe operator will glue that to `some_command`'s standard input.

Using `cat` and `|`in this way is redundant since one can use `<` like so and bypass the entire "pipe" mechanism:

```shell
some_command < some_file.txt
```


---

## Practice

Which of the following can redirect the output of a process to a file? 

???

- `>`
- `<`
- `|`
- `$`


---

## Revision

Piping `cat` like this:

```bash
cat file.txt | command
```

Is the same as running:

```plain-text
??? ??? ???
```

- `command`
- `<`
- `file.txt`
- `>`
