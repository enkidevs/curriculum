---
author: SebaRaba
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Informational status codes


---

## Content

**Informational status codes** are three digit codes that begin with `1`.

The **status codes class** indicates a *provisional* response and was introduced in `HTTP/1.1`. Even though major browsers stopped using `HTTP/1.0`, there are still tools or web crawling bots that are trying to avoid the overhead required by the `HTTP/1.1` protocol. You should therefore handle those requests as well, in case you are looking to set up a new server.

Informational responses have the following content:

- Status-Line: `HTTP/1.1 100 Continue`
- optional headers
- empty line

There is no fixed number of how many `1xx` responses the server should return, so clients should be prepared to accept zero, one or more.

The three informational status codes are:

- `100` **Continue** - in case of the initial request being required to be split into multiple smaller-sized ones, the server informs the client it can continue sending the remainder of the request
- `101` **Switching Protocols** - the server informs the client that it will switch to the required protocol such that the message exchange can continue
- `102` **Processing** - interim response saying the request will take a while (more than a couple of seconds) to complete


---

## Practice

Informational **status codes** were introduced in:

???

- `HTTP/1.1`
- `HTTP/1.0`
- `HTTP/0.0`
- `HTTP/2.0`


---

## Revision

What is the status text of a `100` code response?

???

- Continue
- Switching Protocols
- Processing
