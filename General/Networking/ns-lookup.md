# DNS lookup
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - https://blog.thesysadmins.co.uk/nslookup-common-usage-examples.html

---
## Content

The **DNS** (Dynamic IP Address/Dynamic Name System) is used to map common domain names such as:
`www.enki.com` to unknown IP addresses that frequently change.

The `$ nslookup`(on Windows) and `$ dig`(on Linux and Mac OS X) commands are used to lookup both specific **IP addresses** and **DNS servers** to see if there are problems related to the system used.

Common **DNS** problems:
- High TTL(Time To Live) determines the high number of hops that the packet is allowed to travel before being discarded by the router;
- DNS services outages, caused either by a hardware/network failure or due to a DDoS attack[1];
- Forgetting to properly renew, or losing control of, domain names.

`$ dig` lookup a domain:
```
$ dig google.com

; <<>> DiG 9.10.3-P4-Ubuntu <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 62567
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; QUESTION SECTION:
;google.com.			IN	A

;; ANSWER SECTION:
google.com.		228	IN	A	216.58.201.46

;; Query time: 85 msec
;; SERVER: 127.0.1.1#53(127.0.1.1)
;; WHEN: Fri Mar 31 12:44:14 BST 2017
;; MSG SIZE  rcvd: 55
```
The first part of `$ dig`'s output displays some information about itself and what flags and queries are available to use.
The question and answer sections which represent the **request** we sent and the **response** the server sent back.
The final section of the default output contains statistics about the query[2].

---
## Practice

`nslookup` enables users to see specific ??? and ??? ?

* IP address
* DNS servers
* The traceroute
* The ping

---
## Revision

How would you find the IP address behind the yahoo.com DNS ??? ?

* $ nslookup yahoo.com
* $ nslookup yahoo
* $ nslookup 52.85.178.44

---
## Footnotes
[1:DDoS attack]
A distributed denial of service attack occurs when multiple systems flood the bandwidth or resources of a server.

[2:query]
Represents a request sent to the server.
