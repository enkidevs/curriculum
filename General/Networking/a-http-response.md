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

After recieving and interpreting a request, the **server** sends a response to the **client**.
This responses have the following format:

`Response = Status-Line;
          *(( general-header ;
          | response-header ;
          | entity-header ) CRLF) ;
          CRLF
          [ message-body ] ;`


`Status-Line = HTTP-Version SP Status-Code SP Reason-Phrase CRLF`

The first line of the *response* is the **status line**.It contains the *protocol* version followed by the numeric **status codes**, no CRLF is allowed until the end of the sequence.
- the **status code** is the 3 digit result code.
- the **response headers** allows information that can't be added in **status codes** to be sent in the response.

## Response headers
The response headers are fairly limited:

- **Accept-Ranges** describes what content range types the server supports;
- **Age** header contains information about the amount of time between a nrew request from the client and the time the server send the response;
- **ETag** represents an identifier for a specific version of resource;
- **Location** is used in redirect, or when a new resource has been created;
- **Proxy-Authenticate** contains a authentication request made to the proxy;
- **Retry-After** when a resource is unavailable, this header specifies, either using a slot of time(nb: 120 s) or using a specific date( 23 March 2017 14 00 GMT) after which to try accessing that resource again;
- **Server** header represents a name for the server;
- **Vary** tells downstream proxies[1] how to use future request headers in order to use the cached resource instead of requesting a fresh one;
- **WWW-Authenticate** indicates the authentication scheme to be used.

## Footnotes
[1: downstream proxies] - is about the proxies that come in the response's way to the client.


---
## Practice

??? describes the content range types.

* Accept-Ranges
* Age
* Retry-After

---
## Revision

??? is the 3 digit result code.

* Status-Code
* ETag
* Response-header
