---
author: TebbaVonMathenstein

levels:

  - beginner


tags:

  - introduction

  - workout


type: exercise

category: must-know

standards:
  cs.networking.dns.3: 1000

links:

- '[TODO: THIS](https://enki.com)'
- '[List of root servers and manager](https://www.iana.org/domains/root/servers)'

---

## Exercise

# dns-hierarchy-2

## Content

DNS is a decentralized system with some centralized components.

For example, all of the root servers are overseen by an organization called the Internet Assigned Numbers Authority (IANA). These servers are distributed worldwide to ensure that everyone can access DNS quickly no matter where they are. While these servers are overseen by IANA, they are actually managed and administered by other organizations that answer to the IANA.

The IANA also manages the groups that provide TLD servers and is responsible for selecting, auditing, and supporting those groups. Some of these groups are NGOs, some are government agencies, some are companies.

Finally, authoritative server are operated by organizations or individuals who own domain names. This includes businesses like Google who manage their own DNS; organizations like Go Daddy who manage their own and their customers DNS; and individual domain owners who can (like Google) manage their own DNS.

Although this system is distributed worldwide for convenience, it is possible to query any of them specifically regardless of your geographic location.

---
## Practice

Which of the following statements about DNS is false?

???

* Users in different geographic locations are restricted to using the closest root, TLD, and authoritative servers.
* DNS servers are distributed world wide.
* All of the DNS root servers are overseen by the IANA.
* TLD servers are managed by regional authorities who are selected by the IANA.
* Management of authoritative servers is left to the owner of a particular domain.

---
## Revision

Which of the following server types are considered the source of truth for all of the A and AAAA records for websites like Google, Facebook, and other non-DNS web services?

???

* Authoritative servers
* Root servers
* TLD servers
* DNS resolvers
