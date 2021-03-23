---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - du
  - command
  - terminal
  - size
links:
  - >-
    [`du`
    Manpage](https://www.commandlinux.com/man-page/man1/du.1.html){documentation}
practiceQuestion:
  formats:
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Practical `du` Command


---

## Content

The Linux `du` (disk usage) provides information on disk usage of files and directories.

```bash
du tmp/
# 16	tmp/npm.npmjs.org/net-ping/
# ...
# 520	tmp/npm-17349-xo9lASR4
# 56023  tmp/
```

> 💡 The usual output of `du` is expressed in Kilobytes.

The `-h` flag will display the result in a human-readable format, with sizes expressed in Bytes, Kilobytes, Megabytes, and so on.

```bash
du -h tmp/
# 16K	tmp/npm.npmjs.org/net-ping/
# ...
# 520K	tmp/npm-17349-xo9lASR4
# 56M  tmp/
```

The `-s` flag will summarize the output, meaning that it will return the total for each argument (folder). We'll couple it with the `-h` flag to get a more readable output[1]:

```bash
du -s -h tmp/
# 55K	tmp/
```

The `-a` flag will display the disk usage for all the files and directories.

```bash
du -ah tmp/
# 12K	tmp/npm.npmjs.org/net-ping-1.1.11.tgz
# ...
# 52K	tmp/npm-17349-xo9lASR4
# 55K	tmp/
```

To find the largest three files in a directory `dir`:

```bash
du -h dir | sort -rh | head -3
```


---

## Practice

Find out the sizes of all items on your Desktop, expressed in an easily readable format:

```bash
??? ??? ???
```

- `du`
- `-ha`
- `~/Desktop/`
- `-a`
- `-hs`
- `-hvs`


---

## Revision

The `du` command stands for ???. 

- disk usage
- disk utility
- document usage
- memory usage


---

## Footnotes

[1: Multiple Flags]

You can write both flags as you would normally (`-s -h`) or you can combine them in the same flag `-sh`.
