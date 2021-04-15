---
author: pawel
type: normal
category: how-to
tags:
  - url
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Form a `URL` from its parts


---

## Content

It is possible to access the current `URL` in parts, so for a website such as:

*<http://example.com/data/index.html>*

- window.location.protocol = `http:`
- window.location.host = `example.com`
- window.location.pathname = `data/index.html`

From this, we can construct the full `URL` path:

```javascript
var newURL = window.location.protocol +
"//" + window.location.host +
 "/" + window.location.pathname;
```


---

## Practice

Construct the full URL path by completing the JS code snippet below:

```javascript
var newURL = ???+
    "//" + ??? + "/"
         + ???;
```

- `window.location.protocol`
- `window.location.host`
- `window.location.pathname`


---

## Revision

Consider the following url:

```plain-text
http://example.com/data/index.html
```

Get the host of the url:

```javascript
window.???.???;
```

- `location`
- `host`
- `navigator`
- `history`
- `url`
- `protocol`
- `pathname`
 
