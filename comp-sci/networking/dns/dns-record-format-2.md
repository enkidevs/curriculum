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
  cs.networking.dns.6: 1000

links:

- '[TODO: THIS](https://enki.com)'

---

## Exercise

# dns-record-format-2

## Content

todo
---
## Practice

The question section of a DNS message must always contain at least one entry -- either a question being asked or a question being answered. Which of the following scenarios will not result in a record in the authority section?

???

* When the DNS server responding to a query has an authoritative answer to the question. (for example asking a com TLD server for an NS record for google.com)
* When the DNS server responding to a query doesn't know the answer to a query, but knows of a DNS server that is more authoritative for the query being made. (for example asking a root server for an A record for google.com)
* When the DNS server responding to a query is not in the proper hierarchical chain for the query (for example, asking a com TLD server for a .co.uk domain)

---
## Revision

The existence of a record in the ___ section of a DNS message means that the server in question does not know the answer to the query, but knows of a better server to ask.

???

* authority
* question
* additional information
* answer
