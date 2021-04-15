---
author: SebaRaba
type: normal
category: must-know
links:
  - '[en.wikipedia.org](https://en.wikipedia.org/wiki/HTTP_pipelining){website}'
  - >-
    [brianbondy.com](https://brianbondy.com/blog/119/what-you-should-know-about-http-pipelining){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# HTTP pipelining


---

## Content

**HTTP pipelining** is a technique in which multiple *requests* are sent on a single `TCP` connection, without waiting for the corresponding *responses*.

The server must respond in the same order the requests were received. Clients who assume persistent connection and pipelining need to be prepared to **reconnect** in case the pipelining process fails.

Pipelining dramatically improves the loading time of `HTML` web pages. Unfortunately, the current `HTTP/1.1` standard isn't the most efficient as it doesn't allow asynchronous operations. However, things should run much smoother after `HTTP/2` will gain enough traction.

Keep in mind that **non-idempotent**[1] requests, like those using `POST`, should **not** be pipelined as more of such requests will produce a different result than a single one. In addition, depending on whether requests in the sequence depend on the effect of other, `PUT` and `DELETE` request can also be **non-idempotent**.

HTTP pipelining requires both the *client* and the *server* to support it. Any server that supports `HTTP/1.1` should also support **pipelining** by default.


---

## Practice

??? and `PATCH` requests shouldn't be sent on a single `TCP` connection.

- `POST`
- `GET`
- `HEAD`
- `OPTIONS`


---

## Revision

HTTP pipelining means exchanging multiple messages on the same ???

- TCP connection
- HTTP connection
- local network
- wireless connection


---

## Footnotes

[1:idempotent]
In Computer Science, the term **idempotent** is used to describe an operation that will produce the same result if executed once or multiple times.
