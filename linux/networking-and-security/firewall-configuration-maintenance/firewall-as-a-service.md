---
author: tuwidc
type: normal
category: caveats
tags:
  - linux
  - iptables
  - service
  - debian
  - ubuntu
  - persistent
  - firewall
notes: ''
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# `Firewall` as a service


---

## Content

On BSD and RPM[1] system, the firewall is configured as a service. Therefore, you can switch it on and off using commands that target services and daemons:

```bash
# for OpenBSD
rcctl disable pf
rcctl enable pf
# for RedHat 6 and below
service iptables stop
chkconfig iptables off

service iptables start
chkconfig iptables on
# the 2nd command ensures that it
# is disabled/enabled on boot
```

On Debian systems, `iptables` is not a service. That means, in order to turn it on and off, you have to run a series of commands, instead of something like `service iptables stop`.

This can be addressed by installing:

```bash
sudo apt-get install iptables-persistent
```

You can then stop and start as a service:

```bash
sudo service iptables-persistent stop
sudo service iptables-persistent start
```

And save your settings on the fly:

```bash
sudo service
  iptables-persistent save
```


---

## Practice

Which of the following commands will be a service-like way to stop `iptables`?

???

- `service iptables stop`
- `iptables -R DROP`
- `stop iptables.service`
- `disable iptables.service`


---

## Revision

The package that allows you to treat `iptables` like a service on Debian systems is called ???

- `iptables-persistent`
- `iptables-service`
- `iptables`
- `iptables-stop`


---

## Footnotes

[1: RHEL7]

It's worth noting that Red Hat Enterprise Linux 7 (RHEL7) moved on to `firewalld` to manage the firewall, but it still fallbacks to `iptables`.
