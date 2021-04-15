---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - terminal
  - dd
  - benchmark
  - cpu
  - checksum
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# CPU benchmark with `dd`


---

## Content

`dd` in conjunction with any stream-processing CPU-intensive program can also be used as a simple CPU benchmark! You can run this out of the box as follows:

```bash
dd if=/dev/zero bs=1M count=1024 | md5sum
```

In this case the `md5sum` program was used, which calculates the MD5 hash of data that is fed to it. 

In effect, `dd` here fetches 1 GB of zeroes from the Linux kernel, feeds that to `md5sum`, and then prints how fast in `MB/sec` that was processed. So for example on a modern 3.6 GHz AMD Phenom II CPU:

```bash
dd if=/dev/zero bs=1M count=1024 | md5sum
1024+0 records in
1024+0 records out
1073741824 bytes (1.1 GB) copied, 
2.28735 s, 469 MB/s
cd573cfaace07e7949bc0c46028904ff  - 
```


---

## Revision

As a hack for bench-testing the computer’s CPU you can use:

```bash
??? if=/dev/zero bs=1M 
         count=1024 | ???
```

- `dd`
- `md5sum`
- `db`
- `md5s`
