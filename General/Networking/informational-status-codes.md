# Informational status codes
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'http://www.restapitutorial.com/httpstatuscodes.html'

---
## Content

**Informational status codes** are represented by a three digit code that begins with *1*. It's format is `1XX`.

The **status codes class** indicates a *provisional* response and was introduced in `HTTP/1.1`. That is why servers **shouldn't** send `1xx` responses to clients using `HTTP/1.0`.


Informational responses have the following content:
- Status-Line: first mandatory line in a response message;
- optional headers;
- an empty line at the end;

Eventhough it is not **mandatory**, clients should be prepared to *accept multiple* `1xx`status responses before an actual response is given.

The two informational status codes are:
- `100` **Continue**  - tells the client that a part of the request have been received and it should continue sending it

- `101` **Switching Protocols** - the server informs the client that it switches to another protocol by an `Upgrade:` header


---
## Practice

Sience when has `1xx` format been introduced
??? ?

* `HTTP/1.1`
* `HTTP/1.0`
* `HTTP/0.0`

---
## Revision

What does `100` response mean to the client
??? ?

* **Continue**
* **Switching Protocols**
* **STOP**
