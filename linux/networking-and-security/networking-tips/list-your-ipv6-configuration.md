---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - ipv6
  - ifconfig
  - ip
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# List your IPv6 configuration


---

## Content

To see the IPv6 configuration on a linux server using the `ip` tool:

```bash
ip -6 addr show dev <interface>
ip -6 addr show dev eth0
```

Or, using the `ifconfig` tool:

```bash
ifconfig <interface> |grep "inet6"
ifconfig eth0 |grep "inet6"
```


---

## Practice

List **IPv6** configuration via `ifconfig`:

```bash
??? <interface> |
    ??? ???
```

- `ifconfig`
- `grep`
- `"inet6"`
- `ip`
- `ip-config`
- `ipv6`
- `"ipv6"`


---

## Revision

Check the IPv6 configuration of an interface using `ip` command:

```bash
ip  ??? ???
    show ??? ???
```

- `-6`
- `addr`
- `dev`
- `interface_name`
