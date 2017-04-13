# What is HTTP
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

links:

  - 'https://www.tutorialspoint.com/http/'
  - 'https://techterms.com/definition/http'

---
## Content

Standing for **Hypertext Transfer Protocol**, *HTTP* is a stateless application-layer protocol that facilitates the communication between clients and hosts.

**HTTP** is considered the foundation of the modern web, being based on the **TCP/IP** communication protocol. Even though other ports can be used as well, the default *reserved* port for **HTTP** is `80`.

Communication between hosts and clients  is done with a **request/response** pair in the following manner:
- the *client* initiates and sends a HTTP **request** message to the *host*
- after the **request** is made, the *client* will disconnect from the *host* (server) and will wait for a **response**
- the  *host* processes the **request**
- the *host* re-establishes the connection with the *client* to send back the appropriate **response**

One fundamental characteristic that made **HTTP** a powerful protocol is that two parties are aware of each other only during the current request and will forget about each other afterwards, making **HTTP** stateless.

The current version of HTTP is `HTTP/1.1`, adding few features[1] to `HTTP/1.0`.

---

**FOOTNOTES**

[1:features]
New features in `HTTP/1.1` include:
- persistent connections
- chunked transfer-coding
- fine-grained caching headers

---
## Practice

How do we call the property when two different parties know about each other only by the time communication is done
??? ?

* statelessness
* consistency
* privacy

---
## Revision

What is the *default* reserved port for HTTP
??? ?

* `80`
* `80:80`
* `81`
