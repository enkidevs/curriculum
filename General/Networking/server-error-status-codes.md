# Server error status codes
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://www.tutorialspoint.com/http/http_status_codes.htm'

---
## Content

When processing *HTTP requests*, errors can happen not only on the client side, but also on the server side. In such case, if possible, **server-error status codes** are used in responses.

The format specific to this class of codes have the `5xx` format. Same as in client-error status codes, except from `HEAD` responses, an entity explaining the error *should* be included.

When encountering an unexpected condition preventing the server from fulfilling the request, a `500` **Internal Server Error** is used.
-**

When a server is requested with a method not yet supported (for example using `CONNECT` verb in a request sent to a `HTTP/1.0` server) the `501` **Not Implemented** status code should be used.


Other server-error status codes are:
- `502` **Bad Gateway** - when the server acts as a proxy/gateway and an invalid response is received from the upstream server
- `503` **Service Unavailable** - server is unable to handle the request due to overloading
- `504` **Gateway Timeout** - the proxy/gateway server didn't receive a timely response

---
## Practice

What status code is used for unexpected condition
??? ?

* `500` **Internal Server Error**
* `502` **Bad Gateway**
* `504` **Gateway Timeout**

---
## Revision

What status code is used for method not yet supported
??? ?

* `501` **Not Implemented**
* `503` **Service Unavailable**
* `504` **Gateway Timeout**
