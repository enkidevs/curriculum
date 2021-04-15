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

# Server error status codes


---

## Content

When processing *HTTP requests*, problems can occur not only on the client side, but also on the server side. In such cases, if possible, **server-error status codes** are returned.

You can recognize server errors by their first digit, `5`. An explanation of what caused the error should be included in the response message. This is not the case, however, for `HEAD` requests as they have no payload.

When encountering an unexpected condition preventing the server from fulfilling the request, a `500` **Internal Server Error** status code is sent back.

When a request containing a method not yet supported by the server is received (for example, using the `PUT` verb in a request sent to a server that expects a specialized `POST` request), the `501` **Not Implemented** status code should be used.

Other server-error status codes are:

- `502` **Bad Gateway** - returned when the server acts as a proxy/gateway and an invalid response is received from the upstream server
- `503` **Service Unavailable** - server is unable to handle the request due to overloading
- `504` **Gateway Timeout** - the proxy/gateway server didn't receive a timely response


---

## Practice

In case of an unexpected factor preventing the server from completing the request, it will return

???

- `500 Internal Server Error`
- `502 Bad Gateway`
- `504 Gateway Timeout`


---

## Revision

What status code should the server return if it is unable to process the request due to overloading?

???

- `503 Service Unavailable`
- `501 Not Implemented`
- `504 Gateway Timeout`
