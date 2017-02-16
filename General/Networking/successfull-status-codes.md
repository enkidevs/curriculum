# Successfull status codes
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

The successful status codes, having the `2xx` format, inform the client that the server has received processed and accepted a request.

The most used successful status code is `200` **OK**, telling that the request has succeeded. Its response data depends of the method used for the request:
- `GET` - resource requested is sent to the client
- `HEAD` - the entity-header fields are sent without a message-body
- `POST` - entity describing or containing the result is returned
- `TRACE` - the entity containing the request messaged just as it is received by the server
-**

Useful for async processing on server-side is the `202` **Accepted** message indicating the request was accepted, but the resource may not be contained by the response.

-**
Other worth-mentioning successful status codes are:
- `204` **No Content**: successful, but no message body in the response
- `205` **Reset Content**: tells the client to reset the document view which caused the request to be sent
- `206` **Partial Content**: indicates the response is only partial while additional headers are used to mark the ranges and expiration information of the partial content needed to be responded with

---
## Practice

What is the format for the successful status codes
??? ?

* `2xx`
* `1xx`
* `3xx`

---
## Revision

`202` **Accepted** massage is useful for
??? ?

* async processes
* sync processes
* none of them
