# Http pipelining
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - '[link to learn more](https://enki.com)'

---
## Content

`HTTP pipelining` is a process in which multiple *requests* are sent on a single TCP, without waiting for *response*.
The **server** MUST send back *responses* in the same order the *requests* were sent. Clients who assume `persistent` connection
and `pipelining` need to be prepared to retry their **connection** immediately after the first pipeline **fails**.

The reasoning behind `pipelining` is that, when used, it improves dramatically the loading times of `HTML` web pages. Unfortunately the
*speedup* isn't so efficient from the **broadband connections** as the `HTTP/1.1` limitation still applies: the server must send *responses* back in the same order the client has sent his *requests*. *Clients* must be prepared to resend the requests if the **server** closes the connection without responding to all sent *requests*.

Non **idempotent**[1] requests, like those using `POST`, should not be pipelined.

`HTTP pipelining` requires both the *client* and the *server* to support it. `HTTP/1.1` conforming servers are required to support `pipelining`.

# Footnotes

[1: idempotent] is the property of a operation,that it can be applied multiple times to different starting values without changing the result beyond the initial application.
---
## Practice

??? shouldn't be pipelined.

* Non idempotent
* GET
* Responses

---
## Revision

Pipelining improves dramatically ??? loading times.

* HTML pages
* Server
* Responses
