---
author: tuwidc

levels:

  - basic

  - advanced

  - medium

aspects:
  - obscura
  - workout

type: normal

category: how to

tags:

  - linux

  - chattr

  - unalterable

  - terminal

  - obscura

  - workout



---

# Making a file unalterable with `chattr`

---
## Content

You can make a file unalterable so that it cannot be changed or deleted even by root:
```
$ sudo chattr +i /path/to/file
```

After that the file becomes *untouchable*.

To update the file, remove the attribute using `-i` flag:
```
$ sudo chattr -i /path/to/file
```
Use `-R` flag to unlock a directory.
```
$ sudo chattr -R -i directory/
```

The Mac equivalent is:
```
#to "lock" the file
$ chflags uchg /path/to/file
#to "unlock"
$ chflags nouchg /path/to/file
```

---
## Revision

Make `enki` *file* untouchable:
```
$ sudo ??? ??? enki
```

* `chattr`
* `+i`
* `-R`
* `-Ri`
* `-i`

 
