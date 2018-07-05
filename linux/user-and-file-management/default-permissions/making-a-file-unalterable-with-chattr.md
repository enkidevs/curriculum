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

  - obscura

  - workout




aspects:
  - obscura
  - workout


---

# Making a file unalterable with `chattr`

---
## Content

You can make a file unalterable so that it cannot be changed or deleted even by root:
```
$ chattr +i /path/to/file
```

After that the file becomes *untouchable*.

To update the file, remove the attribute using `-i` flag:
```
$ chattr -i /path/to/file
```
Use `-R` flag to unlock a directory.
```
$ chattr -R -i directory/
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

Make `enki`  *file* untouchable:
```
$ ??? ??? enki
```

* `chattr`
* `+i`
* `-R`
* `-Ri`
* `-i`

 
