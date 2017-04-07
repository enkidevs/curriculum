# What is an URL?
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: must-know

links:

  - 'https://docs.oracle.com/javase/tutorial/networking/urls/definition.html'

---
## Content

**URLs** are sequences of characters used to identify resources on the Internet. They are specified in the header of the request.

An URL can be broken down into several key components:
```
http://www.enki.com:80/path/res?q=x
|___| |_______________||______||___|
protocol      host       path  query
```

- the **protocol** could be either `http` or `https`
- the **host** address contains a *subdomain* (`www`), a *domain* (`enki.com`) and a *port* number (`80`), usually hidden in modern browsers
- the resource **path** represents the resource's location on the server
- a **query string**, beginning with `?`, that contains different `field=value&` pairs[1] (more on this in a later insight)

---
## Footnotes

[1: Query string]
This is usually used for additional operations that should be done server-side: filtering, searching etc. :
```
www.myapp.com/users?name=John
```
Would make sense to return the users whose name is *John*.
---
## Practice

Which protocol is more often used nowadays due being more secure?

???

* `https`
* `http`
* `wwww`

---
## Revision

The substring of an URL containing a subdomain, a domain and a port number is called

???

* `host`
* `path`
* `query`
* `body`
* `suffix`
