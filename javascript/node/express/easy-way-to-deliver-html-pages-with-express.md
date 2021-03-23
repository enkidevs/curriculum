---
author: catalin
type: normal
category: how-to
links:
  - '[serve-static](https://github.com/expressjs/serve-static){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deliver HTML Pages With Express


---

## Content

Displaying basic **HTML** pages can be achieved in many ways using **Node**'s core API, yet the easiest way is by using the **Express** framework.

The `serve-static` module will be used to deliver the page:

```javascript
let express = require("express");
let serveStatic = require("serve-static");

let app = express();
```

Display `index.html`:

```javascript
app.use(
  serveStatic("public/", {
    index: ["index.html", `index.htm`]
  })
);
app.listen(3000);
```

Multiple roots:

```javascript
app.use(serveStatic(__dirname + "/first"));
app.use(serveStatic(__dirname + "/second"));
```

Files will be firstly looked for in `/first` then in `/second` as a fallback.


---

## Practice

Require the requisite module used to deliver HTML pages:

```javascript
let ??? = require('???');
```

- serveStatic
- serve-static
- expressHTML
- express-html
- staticExpress
- static-express
- nodeHTML
- node-html


---

## Revision

What express module can be used to easily deliver HTML pages?

???

- serve-static
- express-html
- easy-html
- static-express
- node-html
