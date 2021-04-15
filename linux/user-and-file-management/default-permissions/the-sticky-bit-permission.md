---
author: tuwidc
type: normal
category: feature
tags:
  - linux
  - terminal
  - permissions
  - sticky bit
  - deep
  - workout
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The `sticky bit` permission

---

## Content

The sticky bit is a permission bit that protects the files within a directory. If the directory has the sticky bit set, a file can be deleted only by the owner of the file, the owner of the directory, or by root.

This special permission prevents a user from deleting other users' files from public directories such as `/tmp`:

```bash
ll .
drwxrwxrwt 17 root root 4096 Jul 20 01:09 ./
```

The `t` in the end of the permission set means that the sticky bit is active in this folder.

To set the sticky do:

```bash
chmod +t file
```

To unset it:

```bash
chmod -t file
```

---

## Revision

The sticky bit prevents ???.

- other users from deleting the file
- the owner of the file from deleting the file
- the root from deleting the file
- the owner from moving the file
