---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - badblocks
  - hdd
  - fsck
  - check
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Check the HDD with `badblocks`


---

## Content

`badblocks` is a Linux utility to check for bad sectors on a disk drive. 

It can be used to generate a file that can then feed to `fsck`.

```bash
badblocks -v /dev/hda1 > bad_blocks
```

This generates a `bad_blocks` file. Input `bad_blocks` into `fsck` with:

```bash
fsck -t ext3 -l bad_blocks /dev/hda1
```

Outputting:

```plain-text
Pass 1: Checking inodes, blocks, and sizes
Pass 2: Checking directory structure
Pass 3: Checking directory connectivity
Pass 4: Check reference counts.
Pass 5: Checking group summary information.

/dev/hda1: ***** FILE SYSTEM WAS 
           MODIFIED *****
/dev/hda1: 11/360 files, 63/1440 blocks
```

If the block was particularly bad, not just marginal, the contents of the file may be corrupted.


---

## Revision

You can check your hard drive for bad sectors with 

???.

- badblocks
- fsck
- usermod
- hostname
