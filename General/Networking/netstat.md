# Network Statistics
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

links:

  - http://www.c-jump.com/CIS24/Slides/Networking/html_utils/netstat.html

  - https://www.ibm.com/support/knowledgecenter/en/SSMN28_4.1.1/com.ibm.rm.doc_4.1.1/frp_r_pdg_netstat_command.html

---
## Content

Short from *Network Statistics*, the `netstat` command is a simple and powerful tool that provides useful information about your network configuration and activity.

`netstat` is a collection of different utilities, running on different **flags**.

When ran with no *flags*, `netstat` will display **active internet connections**, just as running it with the `-a` flag.

You can limit what type of connections you see by **protocol** with:
 - `-t` (`--tcp`) for TCP connections
 - `-u` (`--udp`) for UDP connections

To get the **kernel interface table**[1], the `-r` flag is needed:
```bash
$ netstat -r

```
Running `netstat` with the `-i` (Unix only) flag will output the **network interfaces** currently installed in your system.
```bash
$ netstat -i
```

Per-protocol statistics are also available with `-s` flag:
```bash
$ netstat -s
tcp:
   13348093 packets sent
   ...
```

The `netstat` is available in most operating systems including **Windows**, **Linux** and **OS X**.

---
## Practice

Which flag can you use to display the **kernel interface table**?
```bash
$ netstat ???
```

* `-r`
* `-x`
* `-i`
* `-u`
* `-t`

---
## Revision

What flag would you use to filter the output of the following snippet, showing only `TCP` connections:
```bash
$ netstat ???
```

* `-t`
* `-i`
* `-u`
* `-r`
* `-tcp`

---
## Footnotes

[1:kernel interface table]
On **Linux** the same information can be retrieved form the table using `route` command.
