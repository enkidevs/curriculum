---
author: catalin
type: normal
category: how-to
links:
  - >-
    [Netstat
    Tutorial](http://www.c-jump.com/CIS24/Slides/Networking/html_utils/netstat.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Network Statistics


---

## Content

Short for *Network Statistics*, the `netstat` command is a simple, yet powerful tool that provides useful information about your network configuration and activity.

`netstat` is a collection of different utilities, invoked by different **flags**.

When ran with no *flags*, `netstat` will display **active internet connections**, just as running it with the `-a` flag.

You can limit what type of connections you see by **protocol** with:

- `-t` (`--tcp`) for TCP connections
- `-u` (`--udp`) for UDP connections

To get the **kernel routing table**[1], the `-r` flag is needed:

```bash
netstat -r
Routing tables

Internet:
Destination        Gateway ...
default            192.168.62.254 ...
127                localhost ...
...

```

Running `netstat` with the `-i` (Unix only) flag will output the **network interfaces** currently installed in your system.

```bash
netstat -i
Name  Mtu     Network    Address
lo0   16384   <Link#1>   ...
lo0   16384   127        localhost ...
lo0   16384   localhost  ::1 ...
...
```

Per-protocol statistics are also available with `-s` flag:

```bash
netstat -s
tcp:
   13348093 packets sent
   ...
```

The `netstat` is available on most operating systems including **Windows**, **Linux** and **OS X**.


---

## Practice

Which flag can you use to display the **kernel routing table**?

```bash
netstat ???
```

- `-r`
- `-x`
- `-i`
- `-u`
- `-t`


---

## Revision

What flag would you use to filter the output of the following snippet, showing only `TCP` connections:

```bash
netstat ???
```

- `-t`
- `-i`
- `-u`
- `-r`
- `-tcp`


---

## Footnotes

[1:kernel routing table]
This is the same as the **IP routing table**, mentioned in the previous insight.
On **Linux** the same information can be retrieved from the table using `route` command.
