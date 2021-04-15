---
author: SebaRaba
type: normal
category: must-know
links:
  - '[www.tutorialspoint.com](https://www.tutorialspoint.com/http/){website}'
  - '[techterms.com](https://techterms.com/definition/http){website}'
  - '[http2.github.io](https://http2.github.io/){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What is HTTP


---

## Content

**HTTP**, which is short for **Hypertext Transfer Protocol**, is an application-layer protocol that enables communication between two entities in a network.

**HTTP** is considered the foundation of the modern web and it works on top of *TCP/IP* communication protocol. While other ports may be used, the reserved **HTTP** port is `80`.

Communication process is based on a **request/response** flow:

- the *client* initiates the communication by sending an HTTP **request** message to the *host*, over an already existing TCP connection
- after the **request** has been made, the *client* waits for a **response**
- the *host* processes the **request**
- the *host* sends back the appropriate **response**

One fundamental characteristic that made **HTTP** a powerful protocol is that both parties are aware of each other during the current request only and will forget about each other afterwards. This is the reason why HTTP is considered to be *stateless*.

The currently most used version is `HTTP/1.1`. However, the newest version of HTTP is `HTTP/2`[1], which, at the beginning of `2017`, had a support rate of over `13%`[2].


---

## Practice

The client and the host are aware of each other during the time they're connected only, therefore HTTP is considered to be

???

- stateless
- consistent
- private


---

## Revision

What is the *default* reserved port for HTTP?

???

- `80`
- `8000`
- `443`
- `500`


---

## Footnotes

[1: HTTP/2]
HTTP/2 characteristics:

- is binary, instead of textual
- can use a single connection for multiple requests
- uses header compression to reduce overhead

[2: Statistics]
<https://w3techs.com/technologies/details/ce-http2/all/all>
