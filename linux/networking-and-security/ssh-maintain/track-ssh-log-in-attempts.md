---
author: tuwi.dc

levels:

  - advanced

  - medium

type: normal

category: how to

tags:

  - linux

  - security

  - ssh

  - bruteforce

  - debian




---

# Track SSH log-in attempts

---
## Content

All login attempts in Debian systems are logged to `/var/log/auth.log`. For distribution using *systemd*, the log can be checked with `journalctl`.

Failed log-in attempts for Debian:
```
$ grep sshd.\*Failed /var/log/auth.log 
```
```
sshd[5657]: Failed password for root from
 95.58.255.62 port 38980 ssh2
sshd[5768]: Failed password for root from
 91.205.189.15 port 38156 ssh2
...
```
Failed connections that do not attempt login (for example, port scans):
```
$ grep sshd.*Did /var/log/auth.log
```
```
sshd[7748]: Did not receive identification
 string from 70.91.222.121
sshd[1919]: Did not receive identification
 string from 50.57.168.154
...
```
For **other systems**:
```
$ journalctl _COMM=sshd 
```

---
## Revision

`/log/auth.log` can be used to track 

??? .

* failed log in attempts
* packets received
* packets sent
* passwords used to log in

 
