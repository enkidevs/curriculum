---
author: catalin

levels:
  - basic
  - advanced
  - medium

type: normal

category: how to

standards:
  javascript.express-server.1: 10
  javascript.express-server.4: 10
  comp-sci.http-request-response.12: 10

links:
  - '[github.com](https://github.com/expressjs/cookie-session){website}'

parent: easy-way-to-deliver-html-pages-with-express

---
# `cookie-session` in **Express**

---
## Content

By choosing to implement sessions in **Express** with the help of cookies, a `session` object will be added to the `request` object.

With the introduction of **Express 4.0**, `cookie-session` is a separate module that must be installed:
```bash
npm install cookie-session
```
Then imported:
```javascript
var cookieSess = require('cookie-session');
```

Initialize cookie sessions:
```javascript
app.use(cookieSess({
name: 'session', keys:['key1','key2']
//other options
}));

```
The default `name` for a cookie is `session`.
In order to sign and verify cookie values `keys` can be used or a `secret` that acts like a single key if `keys` is not provided.

`req.session` represents the session for the given request.
```javascript
req.session.isChanged
// returns true if session has been changed
req.session.isNew
// returns true if the session is new
req.session.isPopulated
// returns true if the session has data
```

Using `req.sessionOptions` one can get the current session options and change  them.

---
## Practice

Import the needed module for implementing sessions in **Express** with the help of cookies:

```
var cookieSess = ???('???');
```

* require
* cookie-session
* cookies
* session
* import
* cookie-express

---
## Revision

Import the needed module for implementing sessions in **Express** with the help of cookies:

```
var cookieSess = ???('???');
```

* require
* cookie-session
* cookies
* session
* import
* cookie-express
 
