---
author: jfarmer
type: normal
category: must-know
tags:
  - introduction
  - workout
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The Basics of The Pipe Operator `|`


---

## Content

In Unix, every process has three standard streams: `stdin`, `stdout`, and `stderr`.  By default anything a process writes to `stdout` will appear as text on the console.  However, we can make it so that one process's `stdout` is attached to another process's `stdin` to produce a "pipeline."

To do this we use the pipe operator `|`.  Here is a simple example:

```shell
ps ax | grep mysql
2922 ?        S      0:00
    /bin/sh /usr/bin/mysqld_safe
3164 ?        Sl   204:21
    /usr/sbin/mysqld
```

On its own, the `ps ax` command writes a list of currently-running processes to `stdout`.  On its own, the `grep mysql` command reads from `stdin` and writes all input lines containing "mysql" to `stdout`.

Together, we get a single "pipeline" that lists all currently-running processes whose names contain "mysql".  The key thing is that `ps` is unaware that `grep` is involved and `grep` is unaware that `ps` involved — both processes are only thinking in terms of reading from `stdin` and writing to `stdout`.  The operating system glues the two processes together using the `|` operator.


---

## Revision

Print the lines which contain `eth0` by pipelining `ifconfig` ‘s output :

```bash
??? ??? ??? eth0
```

- `ifconfig`
- `|`
- `grep`
- `>`
- `>>`
