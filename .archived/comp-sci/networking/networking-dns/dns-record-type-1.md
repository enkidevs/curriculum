---
author: amgando
type: normal
category: must-know
links:
  - >-
    [DNS Record Types
    Explained](https://ns1.com/resources/dns-records-explained){article}
  - >-
    [RFC 1035 Defines DNS](https://www.ietf.org/rfc/rfc1035.txt){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# DNS Record Types


---

## Content

There are many different kinds of DNS records. Among the most important types of record are:

- A and AAAA -- A and quad A records map domain names to IP addresses. A records are for IPv4 addresses and AAAA records are for IPv6 addresses.
- NS -- NS records map domain names to *other* domain names. Specifically they map a domain name to the name of it's authoritative DNS server.
- MX -- Similar to an NS record an MX record maps a name to another name. Specifically, an MX record maps a domain name to the name of its mailserver. An example of why this is useful: `john.doe@gmail.com` and `https://gmail.com` both use the same domain name (gmail.com) but these two services run on different IP addresses, one for the SMTP mail server and one for the HTTPS web server.
- CNAME -- short for canonical name, this record also maps a name to a name. CNAME records are used to create aliases for the same service. For example you may want docs.example.com and documents.example.com to share an IP address, you can use a CNAME record to point docs.example.com to documents.example.com and use a single A or AAAA record for documents.example.com


---

## Practice

Suppose you want to determine the IPv6 address of a **webserver** for **google.com**, which of these DNS queries will give you the answer to your question?

???

- AAAA google.com
- A google.com
- NS google.com
- MX google.com
- CNAME google.com
- None of these


---

## Revision

Which DNS record type returns an IPv4 address?

???

- A
- AAAA
- NS
- MX
- CNAME
- None of these
