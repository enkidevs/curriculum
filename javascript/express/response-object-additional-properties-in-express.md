# `response` object additional properties in **Express**
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

parent: easy-way-to-deliver-html-pages-with-express

links:

  - '[node-tricks.com](http://node-tricks.com/response-object/){website}'

---
## Content

**Express** framework adds many useful properties or methods to the `response` object.
 This object is usually passed to a callback (therefore it can take any name) and starts its life as an instance of `http.ServerObject`, a core **Node** object.


Send a response to the client:
```javascript
res.send(body);
res.send(status,body);
//default content type is "text/html"
```
Send **JSON** to the client:
```javascript
res.json(json);
res.json(status, json);
```

Send different content depending on the Accept request header:
```
res.format({'text/plain': 'hey',
  'text/html': '<b>hey</b>'});
```
Using `res.locals` one can get an object containing the default context for rendering views.  Rendering a view using the configured templating engine can be done using:
```javascript
res.render(view,[locals],callback);
```

If middleware support is present, client cookies can be set/cleared:
```javascript
res.cookie(name,value,[options]);
res.clearCookie(name,[options]);
```

---
## Revision

Send **JSON** to client with status:
```javascript
var status; // equal to needed status
var myJson; // equal to json we want to send
//...
res.???(???, ???);
```

*`json`
*`status`
*`myJson`
*`send`
*`format`
*`render`
*`cookie`
*`toJSON`
*`sendJSON`