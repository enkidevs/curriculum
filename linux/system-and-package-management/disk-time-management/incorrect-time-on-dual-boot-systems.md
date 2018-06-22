---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

tags:

  - linux

  - terminal

  - time

  - UTC




---

# Incorrect time on dual boot systems

---
## Content

If you are using a Windows and Unix dual boot system, chances are that at some point the time settings on Windows reseted. 

This happens because Windows uses a *local time system*, while most of the other operating systems(Mac,Linux) use *UTC*[1].

The fix consists of either switching Windows to UTC or Mac/Linux to local. The perk of switching Windows UTC is that you dont have to switch the clock when moving between time zones, but it is more difficult to do. 

Therefore, to make Linux use *local* time, edit `rcS` file, containing variables that affect the behaviour of boot scripts:

```
$ sudo nano /etc/default/rcS
```
And change: 
```
UTC = yes
``` 
to 
```
UTC = no
```

Other fields that can be modified in the `rcS` file include:
```
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

* UTC
* LTS
* UTL

---
## Footnotes
[1:UTC]
Coordinated Universal Time, ranging from UTC-12 to UTC+12.
 
