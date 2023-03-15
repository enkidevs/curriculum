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

There are several ways to shut down or restart your Linux system.

First, we have these commands:
```bash
sudo poweroff

sudo reboot
```

Next, we have `init` commands that tell the system to change the current *run level*[1]:
```bash
# To shutdown:
sudo init 0 

# To restart:
sudo init 6
```


Next, a `halt` command can stop all CPU functions.
```bash
sudo halt
```

Finally, we can also use these commands:

```bash
# To shutdown
sudo shutdown -h now 

# or you can set a shutdown in 30 seconds:
sudo shutdown -h -t30


# the -h means "halt the system after shutdown"
# while the -r means "restart the system after shutdown"

# To restart:
sudo shutdown -r now

# you can also add a time:
# erestart at 14:20
sudo shutdown -r 14:20

```

Note: you can also use `--help` to view additional options for the shutdown command.


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


---

## Footnotes

[1: Run Levels]

A run level is a software configuration which allows only a selected group of processes to exist. They determine which program can execute after the OS boots up.
