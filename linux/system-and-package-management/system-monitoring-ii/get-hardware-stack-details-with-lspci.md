---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - hardware
  - info
  - lsusb
  - lspci
  - lshw
links:
  - '[lspci](http://linux.die.net/man/8/lspci){website}'
  - '[lshw](http://linux.die.net/man/1/lshw){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Get hardware stack details with `lspci`


---

## Content

`lspci` will provide information on a system's hardware[1].

It has varying levels of verbosity, acquire additional information using `-v` and `-vv` flags.

Graphics:

```bash
lspci -nnk | grep VGA -A1
```

Audio:

```bash
lspci -v | grep -A7 -i "audio"
```

Networking:

```bash
lspci -nnk | grep net -A2
```

`lspci` does not show USB hardware other than USB busses. Instead, `lsusb` is the equivalent of `lspci` for USB devices. 

`sudo lshw` will return a very comprehensive list of hardware and settings.


---

## Practice

How would you retrieve information on audio hardware?

```bash
??? ??? | ??? 
  -A7 -i "audio"
```

- `lspci`
- `-v`
- `grep`
- `-o`
- `sudo`
- `regx`


---

## Revision

`lspci`  provides information on 

??? .

- system’s hardware
- system’s software
- connected USB devices
- settings


---

## Footnotes

[1:OS specific]
Some of the Linux distributions might not have `lspci` installed by default. If that is the case, you have to install `pciutils` package.
