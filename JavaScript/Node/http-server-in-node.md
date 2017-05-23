# Http Server in **Node**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know

links:

  - >-
    [ponyfoo.com](https://ponyfoo.com/articles/teach-yourself-nodejs-in-10-steps#http-server){website}

---
## Content

Create a `http` server with Node:
```javascript
var http = require('http');

http.createServer(function(req, res){
    res.end('Hello Node', 200);
    console.log('Request made');
}).listen(8000);
```

Going to `http://localhost:8000`, the text specified in the program should appear!

To do this the `http` module is needed:
```javascript
var http = require('http');
```
The server was created (`createServer`) with a callback function as an argument. This function has 2 parameters (`req` - request and `res`- response) and acts like a gate to the application, handling all incoming *requests* accordingly.

The port on which it should listen was also specified: `.listen(8000)`.

---
## Practice

Which method is used to declare a new server with what arguments?

```
var http = require(‘http’);
http.???(
    function(req, ???){
     //...
 }).listen(port);
```
*`createServer`
*`res`
*`req`
*`newServer`
*`declareServer`
*`server`
*`env`
*`arg`

---
## Revision

Create a `http` server and make it listen to port `8080`:
```javascript
var http = require('http');

http.???(function(req, res) {
  //
}).???(8080);
```

*`createServer`
*`listen`
*`httpServer`
*`on`
*`localhost`
*`require`
