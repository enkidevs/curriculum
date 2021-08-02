---
author: amgando
type: normal
category: must-know
links:
  - >-
    [What Is DNS?](https://www.cloudflare.com/en-gb/learning/dns/what-is-dns/){article}
  - >-
    [RFC 1035 Defines DNS](https://www.ietf.org/rfc/rfc1035.txt){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# DNS Purpose


---

## Content

DNS is used *a lot*. It's rare for humans to memorize and use IP addresses for a number of reasons; as a result DNS is quietly invoked in a number of different contexts. Any time a program makes an internet request using a name (as opposed to an IP address) a DNS request is required to resolve the proper IP address.


---

## Practice

Which of the following actions NEVER require a DNS lookup?

???

- The terminal command ping 1.1.1.1
- Hitting enter in your browsers URL bar.
- Sending an email.
- Making an HTTP request to a web API in a programming language.
- Using the curl command to make an HTTP request from the terminal.


---

## Revision

When is a DNS lookup required?

???

- Every time an HTTP request is made.
- Every time an IP address is used.
- Every time a new computer comes online.
- Every time a domain name is used but an IP address is needed.
