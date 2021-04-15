---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - terminal
  - iptables
  - firewall
links:
  - >-
    [www.cyberciti.biz](http://www.cyberciti.biz/faq/rhel-fedorta-linux-iptables-firewall-configuration-tutorial/){website}
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

# Check iptables firewall status


---

## Content

Linux comes with a host based firewall called Netfilter.
This Linux based firewall is controlled by the program (binary) called iptables to handle filtering for IPv4, and ip6tables handles filtering for IPv6.

We can check the status of our iptables firewall by doing:

```bash
sudo iptables -L -n -v
```

where `-L` list rules, `-v` displays detailed information. We speed up the listing by using the `-n` flag that disables DNS resolution.

If we see something like this:

```bash
Chain INPUT
(policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     
  10   15   DROP
 prot opt in     out     source
  all --   *      *     192.64.174.69
  destination
    0.0.0.0/0
Chain FORWARD
(policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     
 prot opt in     out     source destination
Chain OUTPUT
(policy ACCEPT 0 packets, 0 bytes)
 pkts bytes target     
 prot opt in     out     source destination
```

There is a single INPUT rule active that would drop all packets coming from `192.64.174.69`.


---

## Practice

Which of the following flags, when used together with `iptables` command will disable **DNS resolution**:

```bash
sudo iptables ???
```

- `-n`
- `-d`
- `-L`
- `-D`


---

## Revision

You can list the active firewall rules by running:

```bash
??? ???
```

- `iptables`
- `-L`
- `iftables`
- `-n`
- `-l`
