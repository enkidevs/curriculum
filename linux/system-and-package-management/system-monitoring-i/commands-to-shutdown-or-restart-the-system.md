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
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
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

What is the command to make the system start the restart process `now`?
```bash
??? 
```

- `sudo shutdown -r now`
- `sudo halt`
- `sudo shutdown -h now`
- `sudo init 0`


---

## Revision

What is the command to shutdown the system `now`?
```bash
???
```



- `sudo shutdown -h now`
- `sudo reboot`
- `sudo init 6`
- `sudo shutdown -r now`
