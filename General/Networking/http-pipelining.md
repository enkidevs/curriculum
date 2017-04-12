# Http pipelining
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

---
## Content

**HTTP pipelining** is a technique in which multiple *requests* are sent on a single TCP connection, without waiting for the corresponding *responses*.

The server must respond in the same order the requests were received. Clients who assume persistent connection and pipelining need to be prepared to **reconnect** in case the pipelining process fails.

Pipelining dramatically improves the loading time of HTML web pages. Unfortunately, the current `HTTP/1.1` standard isn't the most efficient as it doesn't allow asynchronous operations and requests have to be fulfilled in the order they arrived. However, things should run much smoother after `HTTP/2` will gain enough traction.

Requests that modify the data on the server, such as `POST` or `PUT`, *should not be pipelined* as they could give birth to concurrency problems if the same resource is acted upon.

HTTP pipelining requires both the *client* and the *server* to support it. Any server that supports `HTTP/1.1` should also support **pipelining** by default.

---
## Practice

??? requests shouldn't be pipelined.

* `POST`
* `GET`
* `HEAD`
* `OPTIONS`

---
## Revision

HTTP pipelining means exchanging multiple messages on the same

???

* TCP connection
* HTTP connection
* local network
* wireless connection
