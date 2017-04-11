# A HTTP response
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

After receiving and interpreting a request, the **server** sends back a response to the **client**. The usual response syntax is:
```text
Status-Line
(general-header or
  request-header or
  entity-header) CRLF
CRLF
Message-Body
```

The `Status-Line` contains:
```text
HTTP-Version Status-Code Code-Description CRLF
```

### Status line

The first line in every response is the status line. It is made up of the **HTTP version** both the server and the client agreed on,
the **status code** of the request and the **code description**. Every component must be separated by a *space character* and the line should end in *CRLF* (new line).

There are five types of *status codes* that can be returned: *Informational*, *Success*, *Redirection*, *Client Error* and *Server Error*. More on these in a later workout.

The *code description* is there to explain what exactly the status code means.

### Response headers

----------

The response headers are fairly limited compared to request headers:
- **Age** field contains information about the amount of time between a new request from the client and the time the server send the response
- **ETag** represents an identifier for a specific version of resource
- **Location** is used in redirect, or when a new resource has been created
- **Proxy-Authenticate** contains a authentication request made to the proxy
- **Retry-After** when a resource is unavailable, this header specifies, either using a slot of time(nb: 120 s) or using a specific date( 23 March 2017 14 00 GMT) after which to try accessing that resource again
- **Server** header represents a name for the server
- **Vary** tells downstream proxies[1] how to use future request headers in order to use the cached resource instead of requesting a fresh one
- **WWW-Authenticate** indicates the authentication scheme to be used

## Footnotes

[1: downstream proxies]
Is about the proxies that come in the response's way to the client.


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
