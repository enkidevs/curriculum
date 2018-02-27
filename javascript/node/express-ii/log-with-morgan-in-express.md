# Log with `morgan` in **Express**
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

parent: easy-way-to-deliver-html-pages-with-express

links:

  - '[github.com](https://github.com/expressjs/morgan){website}'

---
## Content

To use the new **HTTP** logger (called `morgan`) from **Express 4.0** you need to install:
```bash
npm install morgan
```
And import it:
```javascript
var morgan = require('morgan');
```

When creating a new `morgan` logger middleware a `format` must be specified, followed by desired `options` (which are optional) :

```javascript
app.use(morgan('tiny'));
```

The `format` can be a string or a function that will produce a log entry (tokens are of help here). Predefined names include `dev`, `combined`, `short` etc.

Options worth mentioning are:
- `immediate` that will write log lines on request instead of response (requests will be logged even when server has crashed) 
- `skip` that determines when logging should be skipped.

To only log error responses:
```javascript
morgan('combined', {
  skip: function (req, res) { 
    return res.statusCode < 400 }
});

```
Custom `token`s can be also defined using `morgan.token` function.

---
## Revision

Use `morgan` logger in express with `tiny` format:
```javascript
app.???(???('tiny'));
```

*`use`
*`morgan`
*`skip`
*`immediate`
*`express`
*`install`
*`make`
*`logger`