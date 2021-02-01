---
author: catalin
type: normal
category: how-to
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
links:
  - >-
    [WOOF](https://www.home.unix-ag.org/simon/woof.html){website}

---

# Easy way of sharing files


---

## Content

File transfer on the network without setting up extra software can be easily achieved using the `woof` utility.

`woof` (Web Offer One File) is a script and will run on any machine with *Python* installed.

To download it, check the **Learn More** section.

To share a file:

```bash
./woof /directory/file

```

This will give you a **URL** that can be typed in a browser and the download will begin.

You can also share directories:

```bash
./woof -z /directory/
```

This will compress the directory into a **gzipped** tarball.

You can also share `woof` itself:

```bash
./woof -s
```


---

## Revision

A quick way of sharing files is using ??? utility.

- woof
- mv
- ssh
- share
