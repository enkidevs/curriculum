---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - fail2ban
  - terminal
  - ssh
  - bruteforce
  - security
links:
  - >-
    [www.digitalocean.com](https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Block IPs using `Fail2ban`


---

## Content

Fail2ban scans log files for various services ( SSH, FTP, SMTP, Apache, etc.) 
and bans the IP that fails to introduce the password too many times and updates the firewall rules to reject these IP addresses.
The main purpose of Fail2ban is to prevent brute force attacks.

You can get it through `fail2ban` package.

All Fail2ban configuration files are located under the `/etc/fail2ban` directory.

One of them, the `/etc/fail2ban/jail.conf` file contains services configurations, notably the DEFAULT one, which is applied for all sections.

Example of a default setting:

```plain-text
[DEFAULT]
ignoreip = 127.0.0.1
maxretry = 5
findtime = 600
bantime = 600
```

We can also add/enable ssh:

```plain-text
[ssh]
enabled = true
port	= ssh
filter	= sshd
logpath  = /var/log/auth.log
action = iptables
```

Here `action = iptables` refers to `/etc/fail2ban/action.d/iptables.conf` that's basically a drop action with IPtables.

To stop/start fail2ban service:

```bash
/etc/init.d/fail2ban stop
/etc/init.d/fail2ban start
```


---

## Revision

The `fail2ban` service looks through logs and bans IPs that ???

- had too many failed log in attempts
- made too many requests
- were inactive for too long
