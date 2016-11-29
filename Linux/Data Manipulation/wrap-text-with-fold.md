# Wrap text with `fold`
author: catalin

levels:

  - basic

  - medium

  - beginner

type: normal

category: feature

links:

  - >-
    [www.tutorialspoint.com](http://www.tutorialspoint.com/unix_commands/fold.htm){website}

---
## Content

You can use the `fold` command to break down text at a specified **width**.

 This proves useful for formatting text for devices not capable of wrapping text automatically.

Consider the file `enki.txt`:
```
This is a file with a single long line
```

Fold the text:
```
$ fold enki.txt
```
This won't have any result because the default **width** is `80`.

Using the `-w` flag you can change it:
```
$ fold -w11 enki.txt
This is a f
ile with a
single long
 line
```

---
## Practice

How do you break down `file.txt` every 5 characters?
```
$ ??? ??? ???
```
* `fold`
* `-w5`
* `file.txt`
* `enki.txt`
* `wrap`
* `-s`
* `-w4`
* `-w6`

---
## Revision

Which command breaks down text at a specified *width*?

???
*fold
*cat
*nl
*break