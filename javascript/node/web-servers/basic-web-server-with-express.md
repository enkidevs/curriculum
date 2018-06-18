---
author: catalin

levels:
  - beginner

type: normal

category: how to

standards:
  javascript.express-server.0: 10
  javascript.express-server.1: 10

links:
  - '[expressjs.com](http://expressjs.com/en/starter/installing.html){website}'

notes: This can used as the first insight on Express subtopic

---
# Basic web server with Express

---
## Content

Express JavaScript is a tiny and flexible Node.js framework, providing robust features for **middleware implementation**,  **routing** and **dynamic rendering** of HTML pages.

Express can be installed globally using the `npm` package manager:
```javascript
npm install express --save
```
Import and use express in your Node.js app:
```javascript
var express = require('express');
var app = express();
```
An express application makes use of **callback** functions with `request` and `response` as parameters.

Using the `get` method, routing can be easily achieved:

```javascript
app.get('/', function(request,response){
  //your code
});


```

---
## Practice

Complete the following snippet using routing with express:
```javascript
app.???('/',
   function(???,response){
  // code
});

```

* get
* request
* server
* run
* reg
* express

---
## Revision

Import and use `express` in your **Node.js** app:
```javascript
var express = require('???');
var app = ???;
```


* express
* express()
* get
* use
* request
 
