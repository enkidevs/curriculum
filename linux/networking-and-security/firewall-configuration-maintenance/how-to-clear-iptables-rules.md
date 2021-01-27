---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - firewall
  - iptables
  - disable
  - accept
  - chain
  - allow
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# How to clear `iptables` rules


---

## Content

Although it is not a good idea, often we need to make sure that nothing is blocking our 
data from/to a specific host. This can mean the *firewall* needs to be 'disabled'.

On Debian systems, we can issue the following commands as root:

```bash
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT
```

These commands clear the current custom rules and disable the default ones.

Here:

`-X` flag will attempt to delete every non-builtin chain in the table

`-F` flag is equivalent  to deleting all the rules 

`-t` option targets the table passed as an argument

`-P` flag sets a certain policy (ie `ACCEPT`)

In practice, you might not want to wipe the state clean since it will leave your machine vulnerable.


---

## Revision

On a Debian system, to stop the firewall you have to ??? the rules.

- clear
- stop
- target
- add
