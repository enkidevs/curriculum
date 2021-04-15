---
author: catalin
type: normal
category: must-know
links:
  - '[github.com](https://github.com/expressjs/compression){website}'
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

# GZIP compression for **Express**


---

## Content

Using **Gzip** compression middleware in **Express** is a must when talking about loading speed optimization for websites/webapps. This practice can reduce more than 70% size of the packets on a certain website.

The web server can compress results before sending a response if the request is made by a **gzip** compatible browser. If this is the case, the browser will be able to decompress the response.

Browsers that don't support *gzip compression* will receive the original files (bigger than compressed ones).

Apply *gzip compression* for **Express 3.0**:

```javascript
app.use(express.compress());
```

Apply *gzip compression* for **Express 4.0**:

```javascript
var compress = require('compression');
app.use(compress());
```

Please be a good citizen and apply gzip compression on your app.


---

## Practice

How would you enable GZIP compression for express 4.0?

```javascript
const compress = require('???')
const express = require('???')

// ...
app.???(???)
```

- compression
- express
- use
- compress()
- compress
- 'compress'
- enable
- allow


---

## Revision

Apply *gzip compression* for **Express 3.0**:

```javascript
app.???(express.???());
```

- use
- compress
- require
- var
- apply
