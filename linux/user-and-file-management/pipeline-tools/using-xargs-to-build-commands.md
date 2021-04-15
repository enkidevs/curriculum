---
author: aakarsh
type: normal
category: must-know
tags:
  - xargs
  - workout
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using `xargs` to build commands.


---

## Content

Use `xargs` to build and execute commands
from standard input. This often provides a simpler construct than using explicit loops.

Consider:

```bash
echo 1 2 3 4 | xargs echo
# output 1 2 3 4
```

The `-n` flag specifies the **max** output per command line:

```bash
echo 1 2 3 4 | xargs -n 2
# output (2 per line):
# 1 2
# 3 4
```

Suppose you want to delete all files in `/path`.

```bash
rm `find /path -type f`
```

Running the command above may fail because there are too many files in `/path`, exceeding the command line maximum length.

Instead, running the following won't[1]:

```bash
find /path -type f -print | xargs rm
```

The difference is that `xargs` will print the input take from `find` in sublists and call `rm` on each one.

For commands that require more than one argument at the time, the `{}` default argument list maker can be used[2]:

```bash
find . -name "*.bak" -print0 |
 xargs -0 -I {} mv {} ~/old.files

```

Output from the `find` will substitute for every file found both `{}` occurrences.


---

## Revision

`xargs` takes the ??? stream and transforms it into the ??? stream for other utilities to use.

- STDIN
- STDOUT
- STDERR


---

## Footnotes

[1:error handling]
To make sure empty files are treated correctly, pass the `-0` flag to `xargs` to split the lists at **null** chars together with `-print0` flag of the `find` command.
[2:example explanation]
The command below will find all `.bak` files in the current directory then move them to `~/old.files`.
