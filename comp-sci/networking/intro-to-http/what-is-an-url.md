---
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[docs.oracle.com](https://docs.oracle.com/javase/tutorial/networking/urls/definition.html){website}'
  - '[www.computerhope.com](http://www.computerhope.com/jargon/u/url.htm){website}'

parent: what-is-http

---

# What is an URL?

---
## Content

**URLs** (Uniform Resource Locators) are sequences of characters used to identify resources on the Internet. They are specified in the header of the request.

An URL can be broken down into several key components:
```
http://www.enki.com:80/path/res?q=x
|___| |_______________||______||___|
protocol      host       path  query
```

- the **protocol**, usually `http` or `https`. This part states how the data pointed at by the whole URL should be processed
- the **host** address contains a *subdomain* (`www`), a *domain* (`enki.com`) and a *port* number (`80`), usually hidden in modern browsers
- the resource **path** represents the resource's location on the server
- a **query string**, beginning with `?`, that contains different `field=value&` pairs[1] (more on this in a later insight)

A **URL** is not specific to the `HTTP` protocol, but is a generic and standardised way of locating resources on a network.

In fact, a **URL** is subtype of **URI** (Uniform Resource Identifier), but accompanied by a "access mechanism" or "network locator" (`http://`).
While all **URL**s are **URI**s, not all **URI**s are **URL**s.

---
## Practice

What character(s) is/are used to specify the beginning of the `query string` in a **URL** ?

???


* `?`
* `&`
* `wwww`
* `:`
* `^`
* `//`
* `://`

---
## Revision

The substring of an URL containing a subdomain, a domain and a port number is called

???


* `host`
* `path`
* `query`
* `body`
* `suffix`

---
## Footnotes
[1: Query string]
This is usually used for additional operations that should be done server-side: filtering, searching etc. :
```
www.myapp.com/users?name=John
```
Would make sense to return the users whose name is *John*.
