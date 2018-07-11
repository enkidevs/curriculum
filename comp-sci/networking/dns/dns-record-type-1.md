---
author: TebbaVonMathenstein

levels:

  - beginner

  - basic

tags:

  - introduction


type: exercise

category: must-know



standards:
  cs.networking.dns.2: 1000

links:
- '[link to official documentation](https://enki.com)'

---


## Exercise

# dns-record-type-1

## Content

There are many different kinds of DNS records. The two most important types of record are:

* A and AAAA -- A and quad A records map domain names to IP addresses. A records are for IPv4 addresses and AAAA records are for IPv6 addresses.
* NS -- NS records map domain names to *other* domain names. Specifically they map a domain name to the name of it's authoritative DNS server.

---
## Practice

Suppose you want to determine the IPv6 address of a **webserver** for **google.com**, which of these DNS queries will give you the answer to your question?

???

* AAAA google.com
* A google.com
* NS google.com
* None of these

---
## Revision

Which DNS record type returns an IPv4 address?

???

* A
* AAAA
* NS
