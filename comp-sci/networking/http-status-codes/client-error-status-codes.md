---
author: catalin
type: normal
category: must-know
links:
  - >-
    [www.lifewire.com](https://www.lifewire.com/http-error-and-status-codes-explained-817986){website}
  - >-
    [www.digitalocean.com](https://www.digitalocean.com/community/tutorials/how-to-troubleshoot-common-http-error-codes){website}
  - >-
    [www.tutorialspoint.com](https://www.tutorialspoint.com/http/http_status_codes.htm){website}
  - >-
    [www.w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Client error status codes


---

## Content

**Client error status codes** mean there has been an error in the request, made by the client.

This can happen by either requesting an invalid resource (that does not exist at the specified *URL*) or by making a bad request.

The server should always include an explanation of the error, unless the request contained the `HEAD` method. This is the case because `HEAD` messages contain only the header and no payload to send the data in.

Because they have to deal with the user's inaccuracy, there are a lot of specific `4xx` status codes to help the user - over *25* non platform specific ones[1], ranging from `400` to `499`. They include, among others, the `418` **I'm a teapot** response.

Probably, the most famous client error code is `404` **Not Found**, stating that nothing is located at the requested *URL*. There is also the option of returning a `410` **Gone** status code, in case a resource is not available anymore, but the server is aware of its previous existence.

Other such codes are:

- `400` **Bad Request** - the server can't understand the format of the request
- `401` **Unauthorized** - the server requires the client to be authenticated to access the resource
- `403` **Forbidden** - the server understood the request, but it is not willing to fulfill it
- `405` **Method Not Allowed** - the client used the wrong HTTP verb for a particular resource (`GET` to send a completed form instead of `POST`)


---

## Practice

A client error code will be returned in case of a request 

???

- trying to access an invalid resource
- being processed successfully
- not reaching the server
- being queued for completion


---

## Revision

The `Unauthorized` response has a status code of

???

- 401
- 400
- 404
- 418


---

## Footnotes

[1: Platform specific responses]
As different servers have different structure, the requests have to fit them. The software vendors were therefore required to  develop such responses to guide users.

Some platforms that implemented them are: Twitter, Microsoft or Nginx.
