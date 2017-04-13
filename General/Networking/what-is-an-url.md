# What is an URL?
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

links:

  - 'https://docs.oracle.com/javase/tutorial/networking/urls/definition.html'
  - 'http://www.computerhope.com/jargon/u/url.htm'

---
## Content

Usually *communication on web* is done via **request/response** pairs. To specialise our **requests** we need a way of specifying what we query.

Here, **URL's** (Uniform Resource Locators) come in handy. An **URL** is a form of *URI*[1], being the standardised naming convention for requesting documents over Internet.

A URL can be broke down into several key segments:
```
http://www.enki.com:80/path/res?q=x
|___| |_______________||______||___|
protocol      host       path  query
```

- the *protocol*, which is usually `http`, yet `https` is now used more frequently as it is more secure;
- the *host* address, containing **subdomain** (`www`), **domain** (`enki.com`) with its **suffix** (`.com`) and eventually the **port** (`:80`) which is usually hidden in modern browsers;
- the resource *path*, which represents the *local path* to the resource on the server
- additionally, a **query string** beginning with `?`, that can contain different `field=value&` pairs.

The last part is used to specify the query of data that does not fit conveniently into a hierarchical path structure (e.g. filtering, searching).

---
## Practice

Which protocol is more often used nowadays due to security reasones
??? ?

* `https`
* `http`
* `wwww`

---
## Revision

What are the main four segments, ???, host, ??? and
??? ?

* `protocol`
* `path`
* `query`
* `body`
* `suffix`
