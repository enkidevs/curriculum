---
author: tuwidc
type: normal
category: feature
tags:
  - linux
  - df
  - disk usage
  - terminal
  - human readable
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Get disk space usage with `df`


---

## Content

The `df` (disk free) command provides the `-h` flag as an option to display sizes in human readable formats. 

```bash
df -h
Filesystem  Size  Used Avail Use% Mounted on
/dev/sda1   107G   94G  7.6G  93% /
udev        1.9G  4.0K  1.9G   1% /dev
tmpfs       392M  884K  391M   1% /run
none        5.0M     0  5.0M   0% /run/lock
none        2.0G   39M  1.9G   2% /run/shm
```


---

## Revision

You can get the free disk status with ???. 

- `df`
- `du`
- `touch`
- `dd`
