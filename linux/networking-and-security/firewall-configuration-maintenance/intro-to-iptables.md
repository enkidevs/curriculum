---
author: tuwi.dc

levels:

  - basic

type: normal

category: must-know

tags:

  - linux

  - iptables

  - security

  - netfilter



notes: ''

---

#  Intro to `iptables`

---
## Content

*iptables* is the firewall solution that ships with the Linux kernel. It works by checking each packet that comes through against a set of rules to decide what to do.

You can *match* the protocol type, source or destination address or port, the interface and its relation with previous packets, etc.

These rules are further structured into *chains*[1]. They can be created as needed, but there are 3 default ones:
- INPUT[2]
- OUTPUT[3]
- FORWARD[4]

To list current rules:
```
$ iptables -L -n
```

To list NAT[5] rules:
```
$ iptables -L -n -t nat
```

Block traffic from a specific IP:
```
$ iptables -I INPUT -s 10.10.10.10  \
 -j DROP
```

Allow traffic from a specific IP:
```
$ iptables -I INPUT -s 10.10.10.10 \
 -j ACCEPT
```

Allow traffic to a specific port:
```
$ iptables -I INPUT -p tcp -m tcp \
--dport 31415 -j ACCEPT

```

The difference between the `-I` and `-A` flag is that the `-I` inserts a specific rule at the beginning of the chain
as opposed to the `-A` flag that appends. The `-j` flag (jump) is used to specify the actions to be taken (ACCEPT, REJECT, DROP, LOG).

---
## Practice

Append a new rule to the INPUT chain that blocks packets from 132.154.32.101
```
$ ??? ??? ???
    -s ???
    ??? DROP
```


* `iptables`
* `-A`
* `INPUT`
* `132.154.32.101`
* `-j`
* `DROP`
* `A`
* `iftables`
* `ACCEPT`

---
## Revision

Which of the following chains is not a default one?

???

* RULES
* INPUT
* OUTPUT
* FORWARD

---
## Footnotes
[1:Chains]
A set of rules a packet is checked against sequentially.
[2:Input]
This chain deals with packets addressed to your server.
[3:Output]
This chain handles traffic created by your server.
[4:Forward]
This chain contains rules for traffic that would just pass through your sever and not stop there.
[5:NAT rules]
They allow rewriting of the source addresses of the traffic. Typically, they are used by *Untangle* servers which change the the IP address of the machine that made the request to the one of the server and then "untangles" it back to the machine when the response arrives.
 
