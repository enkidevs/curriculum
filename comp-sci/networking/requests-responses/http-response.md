---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [www.w3.org](https://www.w3.org/Protocols/rfc2616/rfc2616-sec6.html#sec6.2){website}
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The HTTP response


---

## Content

After receiving and interpreting a request, the **server** sends back a response to the **client**. The usual response syntax is:

```plain-text
Status-Line
(general-header or
  request-header or
  entity-header) CRLF
CRLF
Message-Body
```

The `Status-Line` contains:

```plain-text
HTTP-Version Status-Code Code-Description
CRLF
```

### Status line

The first line in every response is the status line. It is made up of the **HTTP version** both the server and the client agreed on,
the **status code** of the request and the **code description**. Every component must be separated by a *space character* and the line should end in *CRLF* (new line).

There are five types of *status codes* that can be returned: *Informational*, *Success*, *Redirection*, *Client Error* and *Server Error*. More on these in a later workout.

The *code description* is there to explain what exactly the status code means.

### Response headers

The response headers are fairly limited compared to request headers:

- **Age**: it indicates an estimation, in seconds, of the age of a cached resource being requested since it was last synchronized from the origin web server
- **ETag**: it represents an identifier for a specific version of a resource, which prevents useless cache updates in case the resource hasn't changed
- **Cache-Control**: a general header (available for both requests and responses, but with some differences), that states if the response can be cached, how it should be cached and for how long the cached version is considered *fresh*
- **Location**: this field is used for redirection purposes, or if a new resource has been created and its path is returned
- **Retry-After**: when a resource is unavailable, this header specifies, either by using a number of seconds (e.g. *15s*) or a specific date (*23 March 2017 14 00 GMT*), the time interval after which to resend the request
- **Server**: this represents server's type
- **WWW-Authenticate**: indicates the authentication scheme to be used
- **Access-Control-Allow-Origin**: this state what domains can access a resource in a cross-site[1] manner (`*` means *any* domain)


---

## Practice

A resource's specific cached version identifier can be found in the ??? header field.

- ETag
- Age
- Location
- Cache-Control


---

## Revision

The first line in an HTTP response is usually called

???

- Status Line
- Request Line
- Response Line
- Response Header


---

## Footnotes

[1:Cross-site requests]
A resource makes a cross-origin HTTP request when it requests a resource from a different domain, or port than the one which the first resource itself serves. You might find this process abbreviated as CORS (cross-origin resource sharing).

The **Access-Control-Allow-Origin** mechanism indicates which domains are allowed to be requested from.
