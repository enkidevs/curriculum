---
author: catalin
type: normal
category: how-to
links:
  - >-
    [www.computerhope.com](http://www.computerhope.com/unix/uifconfi.htm){website}
  - '[en.wikipedia.org](https://en.wikipedia.org/wiki/Network_interface){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Network Interfaces


---

## Content

The `ifconfig` command is available on **Linux** and **OS X**. It enables users to configure and view information about network interfaces via the command line.

The **network interface** is an interconnection point between a computer and a private/public network.

Keep in mind that interfaces don't have to be in physical form (e.g. ethernet interface), but can also be a simulating piece of software.

Such an example is the **loopback**[1] (`lo0`) interface specified by the IP protocol:

```plain-text
127.0.0.1 // IPv4
::1 //IPv6
```

On **Windows**, the closest equivalent of `ifconfig` command is `ipconfig`, which works in a slightly different way[2].

To view all (active and inactive) network interfaces with their details the `-a` flag must be used:

```bash
ifconfig -a
lo0: ... (loopback)
en0: ... (physical net. conn.)
en1: ... (physical net. conn.)
fw0: ... (IP over Firewall)

```

Keep in mind that in **OS X** the `-a` flag is implied, while on **Linux** running it with no flags will only show *active* connections.

To show only *inactive* connections:

```bash
ifconfig -u
```

Specifying an interface name as an argument will limit the output to that specific interface.

Interfaces vary from distribution to distribution, for example: `lo` is used on Linux machines, while `lo0` is available on OSX.

An example output for the *loopback* on **Linux** is:

```plain-text
ifconfig lo
lo Link encap:Local Loopback
   inet addr:127.0.0.1
   Mask:255.0.0.0
...
```

You can also activate[3] or deactivate an interface with the `up` flag or `down` respectively:

```plain-text
ifconfig eth0 up
ifconfig eth0 down
```


---

## Practice

What is the equivalent of `ifconfig` on **Windows**?

???

- `ipconfig`
- `tracepath`
- `netstat`
- `ifconfig`


---

## Revision

Which flag is used to show active and inactive connections while running the following command ?

```plain-text
ifconfig ???
```

- `-a`
- `-up`
- `-all`
- `-ai`
- `-i`
- `-u`


---

## Footnotes

[1:loopback]
The **loopback** is a virtual network interface that a device can use to communicate with itself.

This is especially useful for diagnostic and troubleshooting purposes or to connect to servers running on the same machine as the client.

For `IPv4`, the loopback interface is assigned all the IPs in the `127.0.0.0/8` address block.

[2:ipconfig]
For example, to display detailed, full configuration information, on Windows, the command is:

```plain-text
C:\> IPCONFIG /all
```

[3:activate/deactivate]
Instead of using the `up/down` flags, specialized equivalent commands are available(the same command is used on all distributions):

```plain-text
ifup eth0
ifdown eth0
```
