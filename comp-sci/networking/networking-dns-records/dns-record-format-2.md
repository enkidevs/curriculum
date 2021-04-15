---
author: amgando
type: normal
category: must-know
links:
  - '[RFC 1035](https://tools.ietf.org/html/rfc1035#page-12){documentation}'
  - >-
    [DNS Sections
    Primer](https://www2.cs.duke.edu/courses/fall16/compsci356/DNS/DNS-primer.pdf){article}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# DNS Record Format


---

## Content

While the header section of a DNS message contains metadata about the message itself, the subsequent 4 sections contain the questions being asked and the answers to those questions. The question section always contains data -- either the question being asked or the question being answered.

The answer section only contains data if the message is a definitive answer to the question being asked. For example, if a DNS query for an `A` record for `google.com` is made, the answers section may only contain an `A` record for `google.com`, including an IP address for that domain.

The authority section contains records that do not answer the question, but can help the entity asking the question *find a more appropriate server to ask*. For example, if an `A` record for `google.com` is sent to one of the 13 root servers, that server will reply with the names of an appropriate TLD server to ask. This is because the root server does not know the IP address for `google.com` -- the best it can do is refer the asker to a `com` TLD server.

The additional information section is used to provide helpful information that might speed the DNS process. For example, if an `A` record for google.com is sent to a root DNS server the authority section will contain one or more `NS` records for an appropriate TLD sever, and the additional information section *may* have `A` records for those TLD servers.


---

## Practice

The question section of a DNS message must always contain at least one entry -- either a question being asked or a question being answered. Which of the following scenarios will not result in a record in the authority section?

???

- When the DNS server responding to a query has an authoritative answer to the question. (for example asking a com TLD server for an NS record for google.com)
- When the DNS server responding to a query doesn't know the answer to a query, but knows of a DNS server that is more authoritative for the query being made. (for example asking a root server for an A record for google.com)
- When the DNS server responding to a query is not in the proper hierarchical chain for the query (for example, asking a com TLD server for a .co.uk domain)


---

## Revision

The existence of a record in the ??? section of a DNS message means that the server in question does not know the answer to the query, but knows of a better server to ask.

- authority
- question
- additional information
- answer
