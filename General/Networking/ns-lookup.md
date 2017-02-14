# Nslookup
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

The **DNS** (Dynamic Name System) is used to map common dommain names such as:
`www.enki.com`
to unknown IP addresses that frequently change.

The `nslookup` utility can easily be used to lookup both specific **IP addresses** and **DNS servers** to see if there are problems related to the system used.

Look up a domain:
```
$ nslookup enki.com
Server:	 127.0.1.1
Address:	127.0.1.1#53

Non-authoritative answer:
Name:	enki.com
Address: 52.85.178.44
Name:	enki.com
Address: 52.85.178.72
```


Look up an IP address:
```
$ nslookup 52.85.178.44
Server:	 127.0.1.1
Address:	127.0.1.1#53

Non-authoritative answer:
44.178.85.52.in-addr.arpa name = server-...

```


---
## Practice

nslookup enables users to see specific ??? and ??? ?

* IP address
* DNS servers
* The traceroute

---
## Revision

What is the syntax for finding DNS server for yahoo.com
??? ?

* $ nslookup yahoo.com
* $ nslookup yahoo
* $ nslookup 52.85.178.44
