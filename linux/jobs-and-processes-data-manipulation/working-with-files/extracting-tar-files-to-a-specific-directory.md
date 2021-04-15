---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - tar
  - terminal
  - extract
  - compress
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Extracting `tar` files to a specific directory


---

## Content

To extract an archive to a directory different from the current directory, use the `-C` flag:

```bash
tar -xf archive.tar -C /target/directory
```


---

## Revision

To extract a tar archive to a different directory than the current one, the ??? flag should be used.

- -C
- -l
- -p
- -L
