# The ifconfig command
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - http://www.tutorialspoint.com/unix_commands/ifconfig.htm

---
## Content

The `ifconfig` command is available on **Linux** and **OS X**. It enables users to configure and view information about network interfaces via command line interface.

The **network interface** is an interconnection point between the a private or public network.

The equivalent for `ifconfig` command on **Windows** is `ipconfig`, but works in a slightly different way[1].

To view all active network interfaces with their details, the command must be run without any flag:
```
$ ifconfig

```
To see both, active and inactive connections the `-a` flag can be used.

Specifying an interface name as an argument will limit the output to that specific interface.
Interfaces vary from distribution to distribution, for example: lo is used on Linux machine whilst on Mac ones lo0 is used.

An example of `$ ifconfig lo`:

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

What is the corespondent for ifconfig in Windows
??? ?

* `ipconfig`
* `tracepath`
* `netstat`
* `ipconfig`

---
## Revision

Which flag is used to show active and innactive connections
??? ?

* `a`
* `up`
* `all`

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
