---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - chattr
  - unalterable
  - terminal
  - obscura
  - workout
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Making a file unalterable with `chattr`


---

## Content

You can make a file unalterable so that it cannot be changed or deleted even by root:

```bash
sudo chattr +i /path/to/file
```

After that the file becomes *untouchable*.

To make it alterable again, remove the attribute using `-i` flag:

```bash
sudo chattr -i /path/to/file
```

Use the `-R` flag to unlock a directory.

```bash
sudo chattr -R -i directory/
```

The Mac equivalent is:

```bash
# to "lock" the file
chflags uchg /path/to/file
# to "unlock"
chflags nouchg /path/to/file
```


---

## Revision

Make `enki` *file* unalterable:

```bash
sudo ??? ??? enki
```

- `chattr`
- `+i`
- `-R`
- `-Ri`
- `-i`
