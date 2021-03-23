---
author: catalin
type: normal
category: how-to
links:
  - '[github.com](https://github.com/expressjs/vhost){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `vhost` in **Express**


---

## Content

Virtual hosting represents the method of hosting multiple domain names (with separate handling for each one) on a single server.

The **Express 4.0** middleware module called `vhost` deals with this, handing off requests to `handle` when the incoming host matches `hostname`. Before using it, the module must be installed:

```bash
npm install vhost
```

And imported:

```javascript
var vhost = require('vhost');
```

The constructor has two parameters: `hostname` and `handler`. The former can be a string or a **RegExp** object.

After the host is matched and the request is sent to the `handler`, the `req.vhost` property will be populated with an object that will have numeric properties corresponding to every wildcard and `hostname`.

```javascript
var app = connect();
app.use(vhost('ex.example.com', exApp));
//vhost routing to main app for ex
```


---

## Practice

Once the host is matched and the request sent to the handler, the `req.vhost` property will be populated with... ???

- an object with numeric properties corresponding to every wildcard and hostname.
- an object for each wildcard and hostname.
- an object per set of wildcards and hostnames.
- a single hostname and a single wildcard.


---

## Revision

What parameters does the `vhost` parameter need?

```javascript
vhost(???, ???);
```

- hostname
- handler
- app
- require
- connect
- req.vhost
