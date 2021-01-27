---
author: tuwidc
type: normal
category: must-know
tags:
  - shutdown
  - linux
  - halt
  - poweroff
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Commands to shutdown or restart the system


---

## Content

To shutdown:

```bash
sudo shutdown -h now 
sudo halt
sudo poweroff
sudo init 0 
```

To restart:

```bash
sudo reboot
sudo shutdown -r now
sudo init 6
```


---

## Practice

```bash
??? 
```

command restarts the system.

- `sudo shutdown -r now`
- `sudo halt`
- `sudo shutdown -h now`
- `sudo init 0`


---

## Revision

```bash
???
```

command shuts down the system.

- `sudo shutdown -h now`
- `sudo reboot`
- `sudo init 6`
- `sudo shutdown -r now`
