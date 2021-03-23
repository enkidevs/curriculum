---
author: catalin
type: normal
category: how-to
links:
  - '[expressjs.com](http://expressjs.com/en/starter/installing.html){website}'
notes: This can used as the first insight on Express subtopic
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

# Basic web server with Express


---

## Content

Express JavaScript is a tiny and flexible Node.js framework, providing robust features for **middleware implementation**,  **routing** and **dynamic rendering** of HTML pages.

Express can be installed globally using the `npm` package manager:

```bash
npm install express --save
```

Import and use express in your Node.js app:

```javascript
let express = require('express');
let app = express();
```

An express application makes use of **callback** functions with `request` and `response` as parameters.

Using the `get` method, routing can be easily achieved:

```javascript
app.get("/", function (request, response) {
  // your code
});
```


---

## Practice

Import and use `express` in your **Node.js** app:

```javascript
let express = require('???');
let app = ???;
```

- express
- express()
- get
- use
- request


---

## Revision

Complete the following snippet using routing with express:

```javascript
app.???('/', function(???, response) {
  // code
});
```

- get
- request
- server
- run
- reg
- express
