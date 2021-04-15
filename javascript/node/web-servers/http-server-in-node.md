---
author: catalin
type: normal
category: must-know
links:
  - >-
    [HTTP Server in
    Node](https://ponyfoo.com/articles/teach-yourself-nodejs-in-10-steps#http-server){website}
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

# Http Server in **Node**


---

## Content

Create a `http` server with Node:

```javascript
let http = require("http");

http
  .createServer(function (req, res) {
    res.end("Hello Node", 200);
    console.log("Request made");
  })
  .listen(8000);
```

Going to `http://localhost:8000`, the text specified in the program should appear!

To do this the `http` module is needed:

```javascript
let http = require('http');
```

The server was created (`createServer`) with a callback function as an argument. This function has 2 parameters (`req` - request and `res`- response) and acts like a gate to the application, handling all incoming *requests* accordingly.

The port on which it should listen was also specified: `.listen(8000)`.


---

## Practice

Which method is used to declare a new server and with which arguments?

```javascript
let http = require('http');

http
  .???(function (req, ???) {
    // ...
  })
  .listen(8000);
```

- createServer
- res
- req
- newServer
- declareServer
- server
- env
- arg


---

## Revision

Create an `http` server and make it listen to port `8080`:

```javascript
let http = require('http');

http
  .???(function (req, res) {
    // ...
  })
  .???(8000);
```

- createServer
- listen
- httpServer
- on
- localhost
- require
