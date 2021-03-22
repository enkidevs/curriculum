---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - distribution
  - lsb_release
  - command
  - temrinal
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Detect your linux distribution


---

## Content

You can find the base of your linux distribution by issuing the `lsb_release` [1]command like below:

```bash
lsb_release -i
Distributor ID:	elementary OS
```

To get more detailed information about your system you can use the `-a` flag:

```bash
lsb_release -a
No LSB modules are available.
Distributor ID:	elementary OS
Description:	elementary OS Luna
Release:	0.2.1
Codename:	luna
```


---

## Revision

You can get *detailed* information about your Linux distribution by running:

```bash
???
```

- `lsb_release -a`
- `lsb_release -i`
- `ls_release -a`
- `lin_release`


---

## Footnotes

[1:LSB]
**LSB** in the `lsb_release` command stands for *Linux Standard Base* which is a joint project by several Linux Distributions aiming to standardise the software system architecture.
