---
author: catalin
type: normal
category: must-know
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

# Response Object Additional Properties in Express


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

```javascript
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

## Practice

Consider the response object proposed by the Express library.

How would you clear the cookie `my-rogue-cookie`?

```javascript
res.???('???')
```

If an error happened we would like to send a "There is an error" message to the client. Implement this, together with a **503** status code in the following snippet:

```javascript
res.???('???', ???)
```

- clearCookie
- my-rogue-cookie
- send
- There is an error
- 503
- 404
- eraseCookie
- emptyCookie
- cookie
- myRogueCookie
- back
- respond
- error


---

## Revision

Send the given JSON file back to the client user Express's `response` object:

```javascript
var myJson; // equal to json we want to send
//...
res.???(???);
```

- json
- myJson
- status
- send
- format
- render
- cookie
- toJSON
- sendJSON
