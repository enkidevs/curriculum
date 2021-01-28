---
author: tuwidc
type: normal
category: best-practice
tags:
  - linux
  - crontab
  - tmp
  - temp
  - cleanup
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Changing the `/tmp` cleanup frequency


---

## Content

The `/tmp` directory is cleared by default at every boot as the `TMPTIME` in `/etc/default/rcS` is 0 by default.

`TMPTIME` says how frequently (in days) the `tmp` directory should be cleared. 

`TMPTIME=7` would allow files to stay in /tmp until they are a week old, and then be deleted on the next reboot. 

A negative number `TMPTIME=-1` tells the system to never delete anything in /tmp.

*Be careful* as deleting /tmp blindly may also delete files that are being used by running programs.

Yet, for servers that rarely reboot, setting up an entry in the `crontab` may be necessary:

```bash
crontab -e
```

Add:

```plain-text
0 5 * * 1 rm -rf /tmp/*
```

This would clear `tmp` every weekend at 5 AM.


---

## Practice

A negative value of `TMPTIME`  tells the system to delete the tmp folder 

??? .

- never
- every day
- when a process stops using them
- after a reboot


---

## Revision

The default `TMPTIME`  (which clears tmp directory after every reboot) value is 

??? .

- 0
- -1
- 1
- 7
