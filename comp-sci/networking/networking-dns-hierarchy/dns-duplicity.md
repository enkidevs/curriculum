---
author: amgando
type: normal
category: feature
links:
  - >-
    [Round Robin Load Balancing With
    DNS](https://dyn.com/blog/dns-a-mania-dns-load-balancing-vs-hardware-load-balancing/){article}
  - >-
    [What is
    Anycast?](https://www.cloudflare.com/en-gb/learning/cdn/glossary/anycast-network/){article}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# DNS Duplicity


---

## Content

In addition to the main service of mapping names to IP addresses, DNS provides some derivative services. As an example, some organizations use DNS as a kind of load balancer. One way to achieve this is to create several different A or AAAA records with different IP addresses for a single domain name (for example google.com). As long as each of the IP addresses identifies a computer running the `google.com` service users (generally) don't care which IP address is used.

When a single DNS name server (Google's authoritative name server in this case) has multiple A or AAAA records for a single name, the name server can decide which record to send. The default configuration is to continuously rotate through the records in a round robin style. Big organizations with special needs (like Google) may customize their authoritative DNS servers to use different rules.

Many smaller companies may only have a single machine hosting their web service do not benefit from such a configuration, since that machine very likely only has a single IP address.


---

## Practice

Which of the following statements is true?

???

- A single domain name might point to one or several different IP addresses.
- A single domain name always maps to exactly 1 IP address.
- A single domain name always maps to more than one IP address.
- Multiple different domain names cannot map to the same IP address.


---

## Revision

DNS can act as a load balancer when a single ??? maps to multiple ???

- IP addresses
- domain names
- IP address
- domain name
