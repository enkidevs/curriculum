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
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# DNS Record Format


---

## Content

DNS messages have 5 sections:

- Header, which contains metadata about the DNS message.
- Questions, which contains a DNS query.
- Answers, which contain a resource record answering the query.
- Authority, which contains a resource record suggesting a better source of authority.
- Additional Information, which contains extra details that might help the individual making the query, but which are not strictly necessary to answer the question.


---

## Practice

Which of the 5 DNS sections are not strictly necessary for DNS to work?

???

- Additional Information
- Questions
- Answers
- Authority
- Headers


---

## Revision

Which section of a DNS message contains metadata about the DNS message itself?

???

- headers
- questions
- answers
- authority
- additional information
