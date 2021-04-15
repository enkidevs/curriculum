---
author: tuwidc
type: normal
category: best-practice
tags:
  - iptables
  - firewall
  - logging
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Logging dropped firewall packets


---

## Content

If you want to determine what sort of traffic is being blocked, a way of doing so is by logging the dropped packets with a logdrop chain.

Start by creating a new chain:

```bash
# the `-N` flag creates a chain
iptables -N LOGDROP
```

Set the logging burst and the syslog prefix:

```bash
iptables -A LOGDROP -m limit \
--limit 60/min -j LOG  \
--log-prefix "IPTables-Dropped: " 
```

Set the last action to `DROP`:

```bash
iptables -A LOGDROP -j DROP
```

Instead of dropping in the usual way: 

```bash
iptables -A INPUT -j DROP
```

Use:

```bash
iptables -A INPUT -j LOGDROP
```


---

## Revision

The action flow to log dropped packets is:

```plain-text
1. ???
2. ???
3. ???
4. ???
```

- `Create a new chain`
- `Set the number of logged packets`
- `Set the last action of the chain to DROP`
- `Use the new chain as target`
