---
author: catalin

levels:
  - basic
  - beginner

type: normal

category: must-know

standards:
  javascript.express-server.4: 10

links:
  - '[medium.com](https://medium.com/@adamzerner/how-bodyparser-works-247897a93b90#.34biejvm1){website}'
  - '[github.com](https://github.com/expressjs/body-parser){website}'

parent: easy-way-to-deliver-html-pages-with-express

---
# `body-parser` in **Express**

---
## Content

With the introduction of **Express 4.0**, the separate module `body-parser` was introduced as a replacement for the previous version.

`bodyParser` exposes factories in order to create middlewares. The `req.body` property will be populated by the middlewares with the parsed data.

Being in a separate module, `body-parser` must be installed:
```bash
npm install body-parser
```
Then imported:
```javascript
var bodyParser = require('body-parser');
```

`body-parser` will parse the data depending on the format that is specified:
```javascript
// parse application/json
app.use(bodyParser.json());
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({
 extended: false }));

```
The most common way to use `body-parser` with `express` is to add it specifically to the routes:
```javascript
var jsonParser = bodyParser.json()
// POST /myRoute gets JSON bodies
app.post('/myRoute', jsonParser,
function (req, res) {
  //your code here
 };

```

---
## Practice

Parse `x-ww-form-urlencoded`:

```javascript
app.use(
  bodyParser.???({
   extended: ???
}));
```

* urlencoded
* false
* true
* parse
* undefined
* encoded
* json

---
## Revision

```javascript
//parse application/json
app.???(bodyParser.???());
```

* use
* json
* json()
* app
* urlencoded
* jsonParser
 
