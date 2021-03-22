---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - dd
  - disk spee
  - benchmark
  - io
  - performance
  - terminal
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Test disk speed


---

## Content

In Linux, the `dd` command can be used for simple I/O performance measurements as follows: 

```bash
dd if=/dev/zero of=~/testfile \
          bs=1G count=1 oflag=direct
```

Flags:

- `if` : input file;
- `of` : output file;
- `bs` : sets the `if` and `of` sizes to *bytes*; block size (base 10 integer, 1G=1024×1024×1024 bytes = 1.073 GB);
- `count` : number of blocks (1 means that 1 block of 1G is copied);
- `oflag=direct` : uses *direct* I/O data, avoiding the buffer cache; it speeds up the process[1];

This will produce an output similar to:

```plain-text
1+0 records in
1+0 records out
1073741824 bytes (1.1 GB) copied,
32.474 s, 33.1 MB/s
```

Here the test took 32.474 seconds to run and `33.1 MB/s` was the actual disk speed.
Don't forget to delete the test file when finished.


---

## Revision

What command should be run with the following options to obtain an I/O performance measurement?

```bash
??? if=/dev/zero of= ~/testfile
      bs=1G count=1 oflag=direct
```

- `dd`
- `dw`
- `sudo`
- `Dd`


---

## Footnotes

[1:Avoiding cache]
The file system cache (*buffed cache*) stores in memory recently used blocks of data to speed up the future access (the same principle applies to the RAM memory, which the buffer cache may borrow to store more data).

When you are copying a large file, the copied data will end up in the cache as well, occupying it unnecessary and dropping older blocks. This slows the system because all other applications that had their blocks stored in cache have to reread them from memory.
