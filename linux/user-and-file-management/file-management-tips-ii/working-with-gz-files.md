---
author: danadelberg
type: normal
category: must-know
tags:
  - gzip
links:
  - >-
    [www.cyberciti.biz](http://www.cyberciti.biz/faq/howto-compress-expand-gz-files/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Working with `.gz` files


---

## Content

Commonly, files for Linux will be compressed with `gzip`, a file format designed for the GNU Project. 

To extract a `.gz` file, you can use the following commands interchangeably.

```bash
gzip -d file.gz 
gunzip file.gz
```

The `-d` flag stands for decompress. To compress a file, omit the flag.

```bash
gzip file
```


---

## Practice

The ??? flag is used to decompress files.

- `-d`
- `-c`
- `-f`
- `no flag`


---

## Revision

Complete the command to decompress `update.gz` :

```bash
??? ??? update.gz
```

- `gzip`
- `-d`
- `-r`
- `unzip`
