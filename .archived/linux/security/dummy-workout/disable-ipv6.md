---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - linux

  - ipv6

  - ipv4

  - security

  - disable

  - terminal

  - sysctl

  - ip

---
# Disable `IPv6`

---
## Content

Often services and applications try to use `IPv6` and, upon failure, fall back to `IPv4`. If you consider this being an inconvenient or want more privacy online[1], you can choose to disable `IPv6`.

First, check its status:
```
$ cat
  /proc/sys/net/ipv6/conf/all/disable_ipv6
```
`1` indicates that is completely disabled , `0` otherwise.

To disable it until the system reboots, run:
```
$ echo "1" > 
/proc/sys/net/ipv6/conf/all/disable_ipv6
``` 

To disable it permanently, append these to `/etc/sysctl.conf`:
```
net.ipv6.conf.all.disable_ipv6=1
net.ipv6.conf.default.disable_ipv6=1
net.ipv6.conf.lo.disable_ipv6=1 
```
And issue this command to apply the settings:
```
$ sysctl -p
```

---
## Revision

Which of the following is a reason to disable IPv6? 

???
* Privacy concerns
* It slows the internet connection
* Not all of the websites support IPv6
* Your ISP doesn’t support IPv6

---
## Footnotes

[1:IPv6]
There is a privacy concern regarding IPv6 since it incorporates the MAC address of the machine by default.