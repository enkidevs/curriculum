---
author: tuwi.dc

levels:

  - basic

  - medium

  - beginner

type: normal

category: how to

tags:

  - linux

  - dd

  - disk spee

  - benchmark

  - io

  - performance

  - terminal

---

# Test disk speed

---
## Content

In Linux, the `dd` command can be used for simple I/O performance measurements as follows: 

```
$ dd if=/dev/zero of=~/testfile \
          bs=1G count=1 oflag=direct
```
Flags:
- `if` : input file;
- `of` : output file;
- `bs` : sets the `if` and `of` sizes to *bytes*; block size (base 10 integer, 1G=1024×1024×1024 bytes = 1.073 GB);
- `count` : number of blocks (1 means that 1 block of 1G is copied);
- `oflag=direct` : uses *direct* I/O data, avoiding the buffer cache; it speeds up the process[1];

This will produce an output similar to:
```
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
```
$ ??? if=/dev/zero of= ~/testfile
      bs=1G count=1 oflag=direct
```

* `dd`
* `dw`
* `sudo`
* `Dd`

