---
author: tuwi.dc
levels:
  - basic
  - advanced
  - medium
type: normal
category: how to
tags:
  - linux
  - chattr
  - unalterable
  - terminal
aspects:
  - obscura
  - workout
---

# Making a file unalterable with 

`chattr`


---

## Content

You can make a file unalterable so that it cannot be changed or deleted even by root:

```bash
$ chattr +i /path/to/file
```

After that the file becomes *untouchable*.

To update the file, remove the attribute using `-i` flag:

```bash
$ chattr -i /path/to/file
```

Use `-R` flag to unlock a directory.

```bash
$ chattr -R -i directory/
```

The Mac equivalent is:

```bash
#to "lock" the file
$ chflags uchg /path/to/file
#to "unlock"
$ chflags nouchg /path/to/file
```


---

## Revision

Make `enki`  *file* untouchable:

    $ ??? ??? enki

* `chattr`
* `+i`
* `-R`
* `-Ri`
* `-i`

