---
author: tuwidc
type: normal
category: feature
tags:
  - shell
  - bash
  - linux
  - filehandle
  - stderr
  - stdout
  - workout
links:
  - >-
    [More redirection
    tricks](http://stackoverflow.com/questions/818255/in-the-shell-what-does-21-mean){website}
notes: ''
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The `2>&1` redirection


---

## Content

You can use `2>&1` at the end of a command to incorporate the error stream into the output stream.
For context, `1` is `stdout` and `2` is `stderr`.

At first, `2>1` may look like a good way to redirect stderr to stdout. However, it will actually be interpreted as "redirect stderr to a file named 1".

`&` indicates that what follows is a file descriptor and not a filename.
So the construct becomes `2>&1`.

This can be useful when you want to pipe the output through a *filtering function*:

```bash
ls -ld ~ /tnt 2>&1 |
        sed '/[nN]o/d'
# this will print
drwxr-xr-x 18 osboxes osboxes 4096
        Jun  9 16:01 /home/osboxes
# instead of
ls: cannot access '/tnt': No such
         file or directory
drwxr-xr-x 18 osboxes osboxes 4096
         Jun  9 16:01 /home/osboxes

```

There's also the shorthand notation that combines the stream merging with the output redirection:

```bash
./script.sh > /dev/null 2>&1
# same as
./script.sh &> /dev/null
```


---

## Practice

Redirect stdout to stderr :

```bash
ls -ld ~/ ???
```

- `1>&2`
- `1>2`
- `2>&1`
- `2>1`


---

## Revision

You can incorporate the error stream into the output stream using ???

- `2>&1`
- `1>&2`
- `2>&0`


---

## Quiz

### how do you merge output streams?


Which of the following commands will suppress both stdout and stderr?

 ???

- ./script.sh &> /dev/null
- ./script.sh > /dev/null 1>&0
- ./script.sh 2>&1 > /dev/null
- ./script.sh 2>&0 > /dev/null
