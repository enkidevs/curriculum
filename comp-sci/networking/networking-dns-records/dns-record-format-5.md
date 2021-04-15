---
author: amgando
type: normal
category: feature
links:
  - '[RFC 1035](https://tools.ietf.org/html/rfc1035#page-12){documentation}'
  - >-
    [DNS Sections
    Primer](https://www2.cs.duke.edu/courses/fall16/compsci356/DNS/DNS-primer.pdf){article}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# DNS Record Format


---

## Content

The first 2 bytes of any DNS message is
called the transaction ID. This value will
be shared by the DNS query initiating the
request and the DNS response to that query.


---

## Practice

This is a hex-dump of a DNS response.

```plain-text
0000   ef 0a 81 80 00 01 00 01 00 00 00 00
  03 77 77 77   ï............www
0010   06 67 6f 6f 67 6c 65 03 63 6f 6d 00
  00 01 00 01   .google.com.....
0020   c0 0c 00 01 00 01 00 00 00 8d 00 04
  d8 3a c0 04   À...........Ø:À.
```

Which of the following values is the hexadecimal value of the transaction ID?

???

- `ef0a` (line one)
- `c00c` (line three)
- `676f6f676c65` (line two)
- `8180` (line one)


---

## Revision

Which of the following is true of DNS transaction IDs?

???

- The transaction ID is used to match DNS
  queries to their DNS response.
- Every DNS message must have a unique
  transaction ID.
- Transaction IDs are ignored by modern DNS
  implementations.
- Each individual response record has a
  transaction ID.
