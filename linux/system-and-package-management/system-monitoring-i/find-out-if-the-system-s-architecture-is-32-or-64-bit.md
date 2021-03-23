---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - uname
  - architecture
  - kernel
  - null
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Find out if the system's architecture is 32 or 64 bit


---

## Content

The easiest way to do it is executing:

```bash
uname -m
```

This will output `x86_64` or `i386/i586/i686`.

You can use `-a` flag for an extended output:

```bash
uname -a
```

The result for a 32-bit system[1]:

```plain-text
Linux XXX 2.6.38-generic .. i386 GNU/Linux
```

Whereas a 64-bit system will show:

```plain-text
Linux XXX 2.6.38 generic .. x86_64 GNU/Linux
```

The `x86_64` at the end before the GNU/Linux means that the system is running a 64 bit architecture.


---

## Practice

To find out *just* your system’s architecture, you would run :

```bash
??? ???
```

- `uname`
- `-m`
- `-s`
- `-arch`


---

## Revision

To find out your system’s arhitecture and properties, you would run :

```bash
???
```

- `uname -a`
- `uname -s`
- `uname -arch`


---

## Footnotes

[1:32-bit of Context]
i386 means you are running a 32-bit kernel supporting codes compatible with the Intel 80386 processor - which is from 1985. The same principle applies for every other `iXXX` output, all being 32-bit.
