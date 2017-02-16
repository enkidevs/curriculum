# Client error status codes
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

Represented by the format `4xx`, **client error status codes** are used to indicate that there has been an error made by the client with a specific request.

This can happen by either requesting an invalid resource (that does not exist at the specified *URL*) or making an bad request.

The only case when the sever *should* include an entity explaining the error along with the response is when they are given to a `HEAD` request.  

Probably the most famous status code of the *HTTP protocol* is `404` **Not Found**, indicating that there is no resource found at the requested *URI*. However, if the server is aware that the requested resource existed before, but now is unavailable and there is no forwarding address, the `410` **Gone** status code should be used.
-**
There are multiple specialised status codes for client errors, making it easier to find and troubleshoot the problem. Such status codes are:
- `400` **Bad Request** - the request is malformed and the server can't process it
- `401` **Unauthorized** - the request needs an `Authorization` header. If that is present already, it implies the credentials are wrong
- `403` **Forbidden** - server has denied access to the user making the request
- `405` **Method Not Allowed** - the *HTTP* verb

---
## Practice

Clinet error status code can occur either when requesting ??? or
??? ?

* invalid resource
* making a bad request 
* specific request

---
## Revision

Responses addressed to ??? should contain an entity explaining the error.

* `HEAD`
* root
* all requests
