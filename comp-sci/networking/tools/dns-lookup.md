---
author: catalin

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to


links:

  - '[blog.thesysadmins.co.uk](https://blog.thesysadmins.co.uk/nslookup-common-usage-examples.html){website}'
  - '[help.dyn.com](https://help.dyn.com/how-to-use-binds-dig-tool/#installdigwindows){website}'
  - '[computer.howstuffworks.com](http://computer.howstuffworks.com/dns.htm){website}'

parent: network-statistics-tools

---

# DNS Lookup

---
## Content

**DNS** (Domain Name System) is used to map common domain names such as: `www.enki.com` to IP addresses.

This is most often desired as human-readable domain names are much more memorable than **IP addresses** - be them static or dynamic.

Traditionally, the **DNS lookup** was done with the help of `nslookup` command. At some point, this was deprecated on Unix systems in favour of the `dig` command. However, *BIND*, the company that maintains and distributes `nslookup`, resurrected it.

The `dig` tool can also be installed on **Windows**. By bookmarking this insight you will find detailed installation instructions in the "Curriculum" section.

You can use `dig`, short for *Domain Information Groper*, to:
- perform **DNS** lookups
- find host addresses, IP addresses, mail exchanges etc.
- verify ISP DNS server or internet connectivity
- verify spam/blacklist records

To make a simple **DNS lookup** you can:

```bash
$ nslookup enki.com

...
Non-authoritative answer:
Name:	enki.com
Address: 54.192.197.152
Name:	enki.com
Address: 54.192.197.88
...
```

You can see what `IP` addresses are mapped to the queried domain. `Non-authoritative` answers mean that those answers don't come from the domain we queried for (`enki.com`), but from another sources such as your ISP.

```bash
$ dig enki.com
...
;; QUESTION SECTION:
;enki.com. IN A

;; ANSWER SECTION:
enki.com. 59 IN A 54.192.197.88
enki.com. 59 IN A 54.192.197.152
...
```

Pretty straight-forward:
- `QUESTION SECTION` shows details about our query (useful for more complicated ones)
- `ANSWER SECTIONS` shows us the mapped IP addresses

---
## Revision

How would you find the IP address behind the enki.com DNS?
```bash
$ ???
```


* `nslookup enki.com`
* `nslookup enki`
* `nslookup 52.85.178.44`

 
