---
author: tommarshall
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - '[The HTTP Module](https://davidwalsh.name/nodejs-http-request){website}'
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

# The `http` module for servers


---

## Content

Node is well suited and frequently used for creating servers which are both lightweight and can handle multiple requests simultaneously. It comes out-of-the-box with the `http` module providing an intuitive, yet powerful API for this purpose.

To build the server, first require the `http` module into your JavaScript file:

```plain-text
var http = require(‘http’);
```

As all HTTP communication is done via the request / response pair, Node's `http` module uses the same concept, being designed to work with a `request` and a `response` object.

Next, a handler function needs to be defined to handle and respond to all requests accordingly:

```plain-text
function requestHandler(request, response) {

  response.end(‘Test response!’);

}
```

In the function above, the `.end()` method will `write` the specified content to the `response` and signal the server it was sent. This method **must** be called on each response.

To create the server a new HTTP server object needs to be created with a port number passed to it for it to listen on. First create the server via `createServer`:

```javascript
var server = http.createServer
                  (requestHandler);
```

Then assign a port to the server object using `listen`:

```javascript
server.listen(8000, function() {

  console.log(‘Server listening here:
              http://localhost:%s’, 8000);

});
```


---

## Practice

Complete the code snippet to listen for requests on port `2242` with `server`:

```javascript
server.???(???, function() {

  console.log(‘Server listening here:
              http://localhost:%s’, 2242);

});

```

- listen
- 2242
- 'listener'
- on
- createServer


---

## Revision

Complete the code snippet to create a new HTTP server object:

```javascript
var server = http.???(requestHandler);
```

- createServer
- httpServer
- createHTTP
