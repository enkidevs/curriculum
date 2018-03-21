# **GZIP** compression for **Express**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know

parent: easy-way-to-deliver-html-pages-with-express

standards:
  js.express-server.4: 10

links:

  - '[github.com](https://github.com/expressjs/compression){website}'

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
## Revision

Apply *gzip compression* for **Express 3.0**:
```javascript
app.???(express.???());
```
*`use`
*`compress`
*`require`
*`var`
*`apply`
