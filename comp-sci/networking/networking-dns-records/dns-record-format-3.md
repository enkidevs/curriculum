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

All DNS messages have the same message format. DNS Queries and DNS responses differ only in the values contained within that format. This is unlike some other protocols such as HTTP where requests and responses have different formats.

A DNS message is identified as a query or a response in two ways. First, a DNS query does not have any resource records in the final three sections (answers, authority, additional information). Second, one of the "flag" bits is set to 0 for queries and is set to 1 for responses, this flag is called the QR flag, for Query/Response.


---

## Practice

Which of the following accurately describes the difference between a DNS query and a DNS response.

???

- DNS queries and responses have different header values, in particular the QR flag is different.
- A DNS response does not have a record in the questions section.
- A DNS query and a DNS response have entirely different data formats, each of which is specified in an RFC document.
- A DNS query and a DNS response have different header formats.
- A DNS query and a DNS response do not differ at all.


---

## Revision

Which of the following sections must be filled out in both DNS queries and DNS responses?

???

- questions
- answers
- authority
- additional information
