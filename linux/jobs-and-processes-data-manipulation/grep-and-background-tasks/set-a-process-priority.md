---
author: tuwidc
type: normal
category: feature
tags:
  - linux
  - terminal
  - nice
  - renice
  - PID
  - priority
  - process
practiceQuestion:
  formats:
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Set a process priority


---

## Content

`Nice` is a command in Unix and Linux operating systems that allows for the adjustment of the 'niceness' value of processes. 

Adjusting the 'niceness' value of processes allows for setting an advised CPU priority that the kernel's scheduler will use to determine which processes get more or less CPU time. 

In Linux this niceness value can be ignored by the scheduler, however other Unix implementations can treat this differently.

The `renice` tool lets us alter such  scheduling priority of a running process.

Priorities range from `-20` to `19`. 

A nice value of `-20` represents highest priority, while a value of `19` is the lowest priority.

To decrease the priority of a running process:

```plain-text
renice new_priority -p PID_OF_THE_PROCESS
```

Like :

```plain-text
renice 16 -p 13245
13245: old priority 10, new priority 16
```

The same to increase it:

```plain-text
renice 5 -p 13254
13254: old priority 16, new priority 5
```


---

## Practice

Set the highest priority for the process with ID `2314`:

```bash
??? ??? ??? 2314
```

- `renice`
- `-20`
- `-p`
- `19`
- `nice`
- `0`
- `-pr`


---

## Revision

A process’ nice value of 15 represents a ??? priority.

- low
- high
- default
- medium
