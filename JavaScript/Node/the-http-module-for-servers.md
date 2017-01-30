# The `http` module for servers
author: tommarshall

levels:

  - beginner

  - basic
  
  - medium

  - advanced

type: normal

category: best practice

parent: requiring-and-exporting

links:
- '[The HTTP Module](https://davidwalsh.name/nodejs-http-request)'

---
## Content

Node is very suited for creating servers which are both lightweight and can handle multiple requests simultaneously. The `http` module is used for building servers using its simple but powerful API.

To build the server, first require the `http` module into your JavaScript file:
```
var http = require(‘http’);
```
Next, a handler function needs to be defined to handle and respond to all requests accordingly:
```
function requestHandler(request, response) {

  response.end(‘Test response!’);

}
```

To create the server a new HTTP server object needs to be created with a port number passed to it for it to listen on. First create the server:
```
var server = http.createServer
                  (requestHandler);
```
Then assign a port to the server object:
```
server.listen(8000, function() {

  console.log(‘Server listening here:
              http://localhost:%s’, 8000);

});
```

---
## Practice

What type of function needs to be defined to respond to all server requests?
???

* handler
* named
* anonymous

---
## Revision

Complete the code snippet to create a new HTTP server object:

```
var server = http.???(requestHandler);
```

* `createServer`
* `httpServer`
* `createHTTP`
