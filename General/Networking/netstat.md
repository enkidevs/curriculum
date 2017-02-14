# netstat.md
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

Short from *Network Statistics*, the `netstat` command is a simple and really powerful tool that provides useful information regarding network configuration and activity.

`netstat` is a collection of different utilities, running on different **flags**, yet running it with no flags will display **active internet connections**[1].

You can limit what active/passive sockets you see with:
 - `-t` for TCP socket connections
 - `-u` for UDP
 - `-w` for RAW  
 - `-x` for Unix connections


To get the **kernel interface table**[2], the `-r` flag is needed:
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

[1:active internet connection]
In the active internet connections displayed are without servers.

[2:kernel interface table]
On **Linux** the same table can be achieved using `route` command.


---
## Practice

What other command can be used on Linux to get the same kernel interfaces table
??? ?

* `route`
* `traceroute`
* `nslookup`

---
## Revision

What flag do we need to use to get all Unix connections
??? ?

* `-x`
* `-i`
* `-u`
