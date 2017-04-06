# Network interfaces
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

links:

  - http://www.tutorialspoint.com/unix_commands/ifconfig.htm

---
## Content

The `ifconfig` command is available on **Linux** and **OS X**. It enables users to configure and view information about network interfaces via the command line.

The **network interface** is an interconnection point between a computer and a private/public network.

Keep in mind that interfaces don't have to be in physical form (e.g. ethernet interface), but can also be a simulating piece of software.

Such an example is the **loopback** (`lo0`) interface specified by IP protocol:
```
127.0.0.1 // IPv4
::1 //IPv6
```

The equivalent for `ifconfig` command on **Windows** is `ipconfig`, but works in a slightly different way[1].

To view all (active and innactive) network interfaces with their details the `-a` flag must be used:
```bash
$ ifconfig -a
lo0: ... (loopback)
en0: ... (physical net. conn.)
en1: ... (physical net. conn.)
fw0: ... (IP over Firewall)

```

Keep in mind that in **OSX** the `-a` flag is implied, while on **Linux** running it with no flags will only show *active* connections.

To show only *inactive* connections:
```bash
$ ifconfig -u
```

Specifying an interface name as an argument will limit the output to that specific interface.

Interfaces vary from distribution to distribution, for example: lo is used on Linux machine whilst on Mac ones lo0 is used.

An example output for the *loopback* on **Linux** is:

```
$ ifconfig lo
lo Link encap:Local Loopback  
   inet addr:127.0.0.1  
   Mask:255.0.0.0
...


```
You can also activate[2] or deactivate an interface with the `up` flag or `down` respectively:

```
$ ifconfig eth0 up
$ ifconfig eth0 down

```

---
## Practice

What is the corespondent for `ifconfig` in **Windows**?

???

* `ipconfig`
* `tracepath`
* `netstat`
* `ipconfig`

---
## Revision

Which flag is used to show active and inactive connections while running the following command ?
```
$ ifconfig ???
```

* `-a`
* `-up`
* `-all`
* `-ai`
* `-i`
* `-u`

---
## Footnotes

[1:ipconfig]
For example, to display detailed, full configuration information, on Windows, the command is:
```
C:\> IPCONFIG /all
```

[2:activate/deactivate]
Instead of using the `up/down` flags, specialised equivalent commands are available(The same command is used on all distributions):

```
$ ifconfig eth0 up
$ ifconfig eth0 down
```
