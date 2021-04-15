---
author: tuwidc
type: normal
category: feature
tags:
  - linux
  - logs
  - terminal
  - dmesg
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Common log files


---

## Content

The common log files contain:

```plain-text
/var/log/messages | /var/log/syslog : 
                    General messages and 
                    system related logs.
/var/log/auth.log : Authentication logs.
/var/log/kern.log : Kernel logs.
/var/log/cron.log : Cron daemon logs.
/var/log/Xorg.0.log : Logs for the X server.
~/.xsession-errors : Log related to the last
                     X session (and the 
                     one before that, in 
                     xsession-errors.old)
```

You can also check kernel messages log by running `dmesg` as root:

```bash
sudo dmesg
...
[0.052269] Mountpoint-cache hash table 
      entries: 4096(order: 3, 32768 bytes)
[0.052438] Initializing cgroup subsys io
...

```

Anything related to the system can usually be found on these logs, except when we have an application 
specific log such as `apache` or `nginx`.


---

## Revision

You can check kernel messages log by issuing

 ???.

- dmesg
- dboot
- log
- kmesg
