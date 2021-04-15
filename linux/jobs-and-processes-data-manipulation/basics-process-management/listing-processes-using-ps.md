---
author: jfarmer
type: normal
category: must-know
links:
  - >-
    [Process
    basics](http://www.tldp.org/LDP/intro-linux/html/sect_04_01.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Listing Processes Using `ps`


---

## Content

The `ps` command (short for *process status*) displays information about the currently-running processes.

Without any flags, `ps` will display all processes started by the current user.  For example:

```plain-text
ps
  PID TTY           TIME CMD
20094 ttys000    0:00.11 -bash
 3086 ttys002    0:00.68 -bash
```

The columns are as follows:

- `PID`: the process ID
- `TTY`: the terminal in which the command was launched
- `TIME`: the length of time the process has been running
- `CMD`: the name of the command

A very common usage of `ps` is `ps aux`, which displays every process running on the system along with additional information like the user who launched the process and the amount of CPU and memory being used.

It's also common to use `ps aux` in conjunction with `grep` to search for a specific process.  To see if the SSH server `sshd` is running, one might run the following:

```shell
ps aux | grep sshd
root      2848  ... /usr/sbin/sshd -D
```

The `...` represents some fields removed to make the output fit on a single line, but it would include things like memory consumed, time running, and so on.  `root` is the user who launched the process and `2848` is the process ID.


---

## Revision

To view every process running on the machine, you can run:

```plain-text
??? ???
```

- `ps`
- `aux`
- `pid`
- `-a`
