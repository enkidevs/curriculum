# Network Statistics
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[more details here](http://www.c-jump.com/CIS24/Slides/Networking/html_utils/netstat.html)'

---
## Content

Short from *Network Statistics*, the `netstat` command is a simple and powerful tool that provides useful information about network configuration and activity.

`netstat` is a collection of different utilities, running on different **flags**. When ran with no *flags*, `netstat` will display **active internet connections**.

You can limit what active/passive sockets[1] you see with:
 - `-t` for TCP socket connections
 - `-u` for UDP
 - `-w` for RAW[2]

To get the **kernel interface table**[3], the `-r` flag is needed:
```bash
$ netstat -r

```
Running `netstat` with the `-i` flag will output **statistics for the network interfaces** currently configured.
```bash
$ netstat -i
```

The `netstat` command has proven useful in a variety of situations, being available in most operating systems including **Windows**, **Linux** and **OS X**.

---

**FOOTNOTES**

[1:socket]
Socket is a bound to a port number which helps `TPC` layer to identify which are the clients that data needs to be sent to. 

[2:RAW sockets]
A raw socket is an internet socket that enables direct sending and reciving of internet protocol requests without any protocol-specific transport layer formatting.

[3:kernel interface table]
On **Linux** the same information can be retrieved form the table using `route` command.

---
## Practice

Which flag is needed to display kernel interface table
??? ?

* `-r`
* `-x`
* `-i`

---
## Revision

Flag for all TCP connections used with $ netstat 
??? ?

* `-t`
* `-i`
* `-u`
