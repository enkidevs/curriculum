---
author: SebaRaba
type: normal
category: must-know
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/networking/urls/definition.html){website}
  - >-
    [www.computerhope.com](http://www.computerhope.com/jargon/u/url.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What is an URL?


---

## Content

**URLs** (Uniform Resource Locators) are sequences of characters used to identify resources on the Internet. They are specified in the header of the request.

An URL can be broken down into several key components:

```plain-text
http://www.enki.com:80/path/res?q=x
|__|   |_____________||_______||__|
protocol     host        path  query
```

- The **protocol**, usually `http` or `https`, defines how the data that is exchanged using this URL should be processed.
- The **host** address can contain a *subdomain* (`www`), a *domain* (`enki.com`) and a *port* number (`80`). In modern browsers, the port number is usually hidden when using the default port for the given protocol.
- The resource **path** generally represents the resource's location in the server's file system.
- A **query string**, beginning with `?`, contains `key=value` pairs[1]. These pairs are separated by `&` characters if there is more than one of them (more on this in a later insight).

A **URL** is not specific to the `HTTP` protocol, but is a generic and standardised way of locating resources on a network.

In fact, a **URL** is subtype of **URI** (Uniform Resource Identifier), but accompanied by an "access mechanism" or "network locator" (`http://`).
While all **URL**s are **URI**s, not all **URI**s are **URL**s.


---

## Practice

What character(s) is/are used to specify the beginning of the `query string` in a **URL** ?

???

- `?`
- `&`
- `wwww`
- `:`
- `^`
- `//`
- `://`


---

## Revision

The substring of an URL containing a subdomain, a domain and a port number is called

???

- `host`
- `path`
- `query`
- `body`
- `suffix`


---

## Footnotes

[1: Query string]
The information in a query string is usually used for additional operations that are done on the server-side, such as filtering or searching:

```plain-text
www.myapp.com/users?name=John
```

It would make sense for the above URL to return any users with the name *John*.
