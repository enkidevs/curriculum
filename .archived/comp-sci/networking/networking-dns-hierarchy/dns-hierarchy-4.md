---
author: amgando
type: normal
category: must-know
links:
  - >-
    [Introducing 1.1.1.1, CloudFlares DNS
    Resolver](https://blog.cloudflare.com/dns-resolver-1-1-1-1/){article}
  - >-
    [What Is
    DNS?](https://www.cloudflare.com/en-gb/learning/dns/what-is-dns/){article}
  - >-
    [RFC 1035, Resolver Implementation is section
    7](https://www.ietf.org/rfc/rfc1035.txt){documentation}
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

There is a 4th kind of DNS server, called a **resolver** (sometimes called local DNS). DNS resolvers are operated by independent organizations and are not considered part of the DNS hierarchy. By default most people's DNS resolver is operated by their ISP, but there are alternatives such as Google's 8.8.8.8, Amazon's Route 53, and CloudFlare's 1.1.1.1.

Similar to root, TLD, and authoritative servers, DNS resolvers exist to help answer questions about domain names and IP addresses. Unlike the three members of the DNS hierarchy, however, it is not the responsibility of a DNS resolver to be the source of authority for any DNS records. Instead DNS resolvers send queries back and forth to other DNS servers in order to find the authoritative answer to DNS queries.

For example, say a user sent an A record for [www.obscure-domain.kp](http://www.obscure-domain.kp) (kp is the Top Level Domain for North Korea). A DNS resolver would go through the following steps in a worst case scenario:

1. Send an NS or A record to a root DNS server, asking for the `.kp` domain.
2. The root DNS server will respond with records identifying an appropriate TLD server.
3. Send an NS request to the identified TLD server for `www.obscure-domain.kp`
4. The TLD server will respond with records identifying the appropriate authoritative sever.
5. Send an A record for `www.obscure-domain.kp` to the identified authoritative sever.
6. The authoritative server will respond with the IP address of `www.obscure-domain.kp`


---

## Practice

Which of the following statements is false?

???

- DNS resolvers are a member of the DNS hierarchy.
- DNS resolvers send queries to the other members of the DNS hierarchy on behalf of their users.
- DNS resolvers may send and receive many DNS messages in order to resolve a single DNS query.
- DNS resolvers cache responses they receive from other DNS servers


---

## Revision

Internet users typically send their DNS requests directly to a ??? which ??? a member of the main DNS hierarchy.

- DNS resolver
- is not
- root DNS server
- authoritative DNS server
- TLD server
- is
