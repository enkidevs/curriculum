---
author: amgando
type: normal
category: must-know
links:
  - >-
    [Intro To
    DNS](https://www.cloudflare.com/en-gb/learning/dns/what-is-dns/){article}
  - >-
    [IANA Root Server
    List](https://www.iana.org/domains/root/servers){documentation}
  - >-
    [List of top level
    domains](https://www.icann.org/resources/pages/tlds-2012-02-25-en){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# DNS Hierarchy


---

## Content

DNS servers are divided into three categories which form a kind of hierarchy. The three types of DNS server are:

- Root servers,
- Top Level Domain (TLD) servers, and
- Authoritative servers.

Root servers are responsible for having NS and A records for all of the TLD servers world wide. There are (at the time of this writing) only 13 domain names associated with root servers and all of them take the same form: `[a-m].root-servers.net` -- but these 13 names map to hundreds of physical servers by using anycast. These servers are considered the "top" of the hierarchy.

Top Level Domain (TLD) servers are responsible for having NS and A records for all of the authoritative servers for a particular "top level domain". A "top level domain" is the final segment of a domain name. `com`, `gov`, `net`, `edu`, `io`, and `co.uk` are all examples of top level domains. There are more than 1,000 valid top level domains. Some TLD's are grouped together and handled, for example ICANN operates the "generic top level domains" which includes `com`, `edu`, `gov`, `org`, `net`, and more. Local governments and NGO's also maintain some of the TLD servers. These servers are in the middle of the 3 layer hierarchy.

Authoritative servers are responsible for having NS and A records for websites and web services. Root and TLD servers are responsible for knowing about other DNS infrastructure; authoritative servers on the other hand are responsible for knowing about edge services like `google.com` and `facebook.com`.

It is the responsibility of the domain owner to operate an authoritative server for their domain (e.g. Google operates authoritative DNS servers for `google.com`) but most small businesses pay a company like Go Daddy or Namecheap to do this on their behalf. Namecheap, therefore, operates a single authoritative server that has A and AAAA records for many different websites.


---

## Practice

Which of the following statements is false?

???

- Each authoritative DNS server may only contain records related to a single website.
- Root servers are the top of the DNS hierarchy.
- Root servers track NS and A records for all of the TLD servers globally.
- TLD servers track NS and A records for all of the authoritative servers globally.
- Authoritative servers, all combined, contain A records for all of the non-DNS names that are available in DNS.


---

## Revision

Identify the the 3 members of the DNS hierarchy, and put them in order: ??? track all of the ??? which track all of the ???

- Root servers
- Top Level Domain servers
- Authoritative servers
- DNS resolvers
- Web servers
- Mail servers
