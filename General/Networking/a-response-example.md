# HTTP response
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://www.w3.org/Protocols/rfc2616/rfc2616-sec6.html#sec6.2'

---
## Content

A successful response would have the following format:

`HTTP/1.1 200 OK
Content-type: text/html
Content-length: 24204
[blank line]
[and then 24,204 bytes of HTML code]`

As we already know a `HTTP` response has 3 parts:

- The **status line** which states which protocol is the server speaking, followed by a numeric *status code* and a short *message* in the end. In our case: `HTTP/1.1 200 OK`
we use here, `HTTP` protocol, have a 200 *status code*(200 - 299 status codes are successful) and the message *OK*.
- The **header line** which let the server send more info in the response. For example if authentication is *required* the server uses the header to state the type of authentication required. The most common header is: `Content-type:`, it is present in this example as well, `text/html` states that the server is able to process *text* and *html* files only. *Headers* must be terminated with a blank line, which must be present even if there are no *headers* included.
-  `Content-length` is usually specified as well, it states the length, in bytes, of the body. However, this *header* line is unreliable because *dynamically generated*[1] pages rarely include this *header*.
- The *message-body* contains arbitrary data and it follows the blank line after *headers*. In the case of a typical web *request*, this is the `HTML` document to be displayed. In the event of a *unsuccessful request* the message body contains a *server* generated error message.
# Footnotes

[1: dynamically generated]
 A dynamic web page is a web page that displays different content each time it's viewed.

---
## Practice

The massage body contains a ??? generated massage error in the event of an unsuccessful request.

* Server
* Client
* Automatically

---
## Revision

??? has a 3 digit format.

* Status-Code
* Status-Line
* Response-header
