---
author: catalin

levels:
  - basic
  - beginner

type: normal

category: how to

standards:
  javascript.express-server.0: 10
  javascript.express-server.1: 10

links:

  - '[node-tricks.com](http://node-tricks.com/express-js-deliver-html-files-1/){website}'
  - '[github.com](https://github.com/expressjs/serve-static){website}'

---

# Easy way to deliver **HTML** pages with **Express**

---
## Content

Displaying basic **HTML** pages can be achieved in many ways using **Node**'s core API, yet the easiest way is by using the **Express** framework.

The `serve-static` module will be used to deliver the page:
```javascript
var express = require('express');
var serveStatic = require('serve-static');

var app = express();
```

Display `index.html`:
```javascript
app.use(serveStatic('public/',{'index':
  ['index.html', `index.htm`]}));
app.listen(3000);

```

Multiple roots:
```javascript
app.use(serveStatic(__dirname+ '/first'));
app.use(serveStatic(__dirname+ '/second'));

```

Files will be firstly looked for in `/first` then in `/second` as a fallback.

---
## Practice

Require the requisite module used to deliver  HTML pages:

```javascript
var ??? = require('???');
```


* serveStatic
* serve-static
* expressHTML
* express-html
* staticExpress
* static-express
* nodeHTML
* node-html

---
## Revision

What express module can be used to easily deliver HTML pages?
???

* serve-static
* express-html
* easy-html
* static-express
* node-html
 
