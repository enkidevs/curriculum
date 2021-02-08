---
author: catalin
type: normal
category: how-to
links:
  - '[github.com](https://github.com/expressjs/errorhandler){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Error handler in **Express**


---

## Content

The **Express 4.0** `errorhandler` module is designed as a **development only** error handling middleware. This is because all information passed through this module is also sent back to the client.

Installing the API:

```bash
npm install errorhandler
```

Importing the API:

```javascript
var errorHandler = require('errorhandler');
```

Whenever an object is provided to **Express** as an error, the `errorhandler` module will print as much as possible about the error, using content negotiation between **HTML**, **JSON** and plain text.

The constructor can, but is not obliged, to take `log` as an argument. This can take the values `true`, `false` or a function that will handle the errors.

```javascript
app.use(errorhandler({
  log: errorNotification});
function errorNotification(err,str,req) {
  ...
}
```

Passing `true` to the log will log errors using `console.error(str)`.


---

## Practice

Which express module is designed as a development only error handling middleware?

???

- errorhandler
- error-handler
- error-handling
- error


---

## Revision

Suppose you have a `errorNotification` method. Complete the snippet below as to make `errorhandler` constructor take the method as an argument for `log`:

```javascript
app.use(???({
  log: ???});
```

- errorhandler
- errorNotification
- error
- function
- log
- require
- errorHandler
