# What is HTTP
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[HTTP/2](https://http2.github.io/)'

---
## Content

Standing for **Hypertext Transfer Protocol**, *HTTP* is an application-layer protocol that enables communication between two entities in a network.

**HTTP** is considered the foundation of the modern web and it works on top of *TCP/IP* communication protocol. Even though other ports can be used as well, the reserved **HTTP** port is `80`.

Communication process is based on a **request/response** flow:
- the *client* initiates the communication by sending an HTTP **request** message to the *host*, over an already existing TCP connection
- after the **request** has been made, the *client* waits for a **response**
- the *host* processes the **request**
- the *host* sends back the appropriate **response**

One fundamental characteristic that made **HTTP** a powerful protocol is that both parties are aware of each other during the current request only and will forget about each other afterwards. This is the reason why HTTP is considered to be *stateless*.

The currently most used version is `HTTP/1.1`. However, the newest version of HTTP is `HTTP/2`[1], which, at the beginning of `2017`, had an adoption rate of over `12%` (when talking about the top 100 million websites).

---
## Footnotes

[1: HTTP/2]
HTTP/2 characteristics:
 - is binary, instead of textual
 - can use a single connection for multiple requests
 - uses header compression to reduce overhead

---
## Practice

The client and the host are aware of each other during the time they're connected only, therefore HTTP is considered to be

???

* stateless
* consistent
* private

---
## Revision

What is the *default* reserved port for HTTP?

???

* `80`
* `8000`
* `443`
* `500`
