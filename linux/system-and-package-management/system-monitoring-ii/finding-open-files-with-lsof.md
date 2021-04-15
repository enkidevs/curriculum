---
author: jfarmer
type: normal
category: must-know
tags:
  - files
  - open
  - ls
  - lsof
links:
  - '[inux.die.net](https://linux.die.net/man/8/lsof){website}'
notes: to review parent
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Finding Open Files With `lsof`


---

## Content

The `lsof`[1] command displays a list of currently open files and the program that has opened it.  There are two common scenarios where `lsof` is incredibly useful:

1. You have a specific program in mind and want to know what files it's using, e.g., you're not sure where a program's configuration files live.
2. You have a specific file in mind and want to know what programs are using it, e.g., some program is overwriting a file but you don't know which one.

In order to see every file and every process you have to have `root` permission, otherwise you will only be able to see files opened by processes you've started or have permission to see.

### Finding Files By Process

If you know the name of a process and want to see which files it has open, you can use the `-p` option, like so:

```shell
sudo lsof -p 3164
COMMAND  PID  ...  NAME
mysqld  3164  ... /var/lib/mysql
```

We've truncated the output here for illustration purposes.

### Finding Processes By File

If you know the name of a specific file and want to know which processes have it open, you can pass in the name of the file directly, like so:

```shell
sudo lsof /var/log/syslog
```


---

## Practice

???

flag is required to find files used by a specific process.

- `-p`
- `-f`
- `-r`
- `-pr`


---

## Revision

You can find *all* the processes that are using a file by issuing:

```bash
??? ??? ???
```

- `sudo`
- `lsof`
- `filename`
- `proc`
- `ls -apl`


---

## Footnotes

[1:lsof]
You can think of `lsof` as ls + of ,standing for **list** *open files*.
