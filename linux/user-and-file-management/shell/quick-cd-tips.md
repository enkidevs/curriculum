---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

  - beginner

type: normal

category: hack

tags:

  - sudo

  - cd

  - terminal



notes: ''

---

# Quick `cd` tips

---
## Content

The `pushd` command saves the current working directory in memory so it can be returned to at any time.

The `popd` command returns to the path at the top of the directory stack.
```bash
[/usr/ports]$ pushd /etc
/etc /usr/ports
[/etc]$ popd
/usr/ports
[/usr/ports]$
```
To list remembered directories use `dirs` command:
```bash
[/usr/ports]$ dirs
/usr/ports
```
And to clear the stack:
```bash
[/usr/ports]$ dirs -c
[/usr/ports]$ dirs
```

Or, to undo the last change of directory and go back to last visited path :
```
$ cd -
```

---
## Practice

Directories saved by `pushd` can be seen using

???

* dirs
* cd -
* topd
* dirs -c

---
## Revision

`pushd` ,`popd`  and `dirs` are shell built-ins which allow you to manipulate the

???

* directory stack
* switch
* directory queue
* memory

 
