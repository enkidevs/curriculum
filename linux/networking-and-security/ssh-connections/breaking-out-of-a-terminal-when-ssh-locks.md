---
author: tuwidc
type: normal
category: must-know
tags:
  - linux
  - terminal
  - ssh
  - lock
  - escape
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Breaking out of a terminal when `ssh` locks


---

## Content

At times an `ssh` connection times-out or disconnects and the current terminal locks. 

Normal key combinations are forwarded over the ssh session, therefore no standard breaking keys will work. 

Instead, use the escape sequences. To kill the current session hit `↵` and write `~.`.

More of these escape sequences can be listed with `↵` and `~?`:

```shell
Supported escape sequences:
  ~.  - terminate session
  ~B  - send a BREAK to the remote system
  ~R  - Request rekey (SSH protocol 2 only)
  ~#  - list forwarded connections
  ~?  - this message
  ~~  - send the escape character 

```

*Note:*  `↵` is the Enter key.


---

## Revision

If an `ssh` connection times-out or disconnects, press ??? 

to kill the current session. (↵ being the Enter Key).

- ↵  ~.
- ↵ ~#
- ↵ ~R
