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

# Redirection status codes


---

## Content

**Redirection status codes** notify the client that additional steps are required to complete the request. They always start with `3`.

For example, `300` **Multiple Choices** status code will return a list of available links the user agent (browser) can navigate to. Due to how previous versions were regulated, some servers might respond with a maximum of 5 links.

`301` **Moved Permanently** response specifies a new permanent *URL* for the requested resource. This new *URL* can be found as the `Location` field in the response.

If the method of the request is either `GET` or `HEAD`, the redirection **may** be carried out by the user agent, without any user interaction. An automatic redirection shouldn't happen otherwise.

Sometimes, it comes in handy to use the cached version of a resource instead of requesting it again (one reason might be to reduce bandwidth usage). The `304` **Not Modified** response indicates just that: the resource hasn't been modified since last requested and the client can use its current version.

Other redirect codes you should take into account when using an external server:

- `302` **Found** contains a temporary new URL for the resource
- `303` **See Other** in short, it is the `HTTP/1.1` version of the `302` response.


---

## Practice

Which redirection status code indicates that the resource requested hasn't been modified and a cached version can be used instead?

???

- `304`
- `303`
- `306`


---

## Revision

The only two methods for which a browser should redirect the user after receiving a `301` **Moved Permanently** are *GET* and

???

- HEAD
- POST
- DELETE
- GET
