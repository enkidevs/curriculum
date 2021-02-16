---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - terminal
  - time
  - UTC
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Incorrect time on dual boot systems


---

## Content

If you are using a Windows and Unix dual boot system, chances are that at some point the time settings on Windows will reset. 

This happens because Windows uses a *local time system*, while most of the other operating systems(Mac, Linux) use *UTC*[1].

The fix consists of either switching Windows to UTC or Mac/Linux to local. The perk of switching Windows UTC is that you don't have to switch the clock when moving between time zones, but it is more difficult to do so.

Therefore, to make Linux use *local* time, edit the `rcS` file, containing variables that affect the behaviour of the boot scripts:

```bash
sudo nano /etc/default/rcS
```

And change: 

```plain-text
UTC = yes
```

to 

```plain-text
UTC = no
```

Other fields that can be modified in the `rcS` file include:

```plain-text
TMPTIME=0 # delete /tmp every x days
SULOGIN=no # spawn sulogin
DELAYLOGIN=no # log in after boot
VERBOSE=no
FSCKFIX=no # automatically repair
           # filesystems
```


---

## Revision

Most of the Unix/Linux operating systems use ??? as the basis for local time.

- UTC
- LTS
- UTL


---

## Footnotes

[1:UTC]
Coordinated Universal Time, ranging from UTC-12 to UTC+12.
