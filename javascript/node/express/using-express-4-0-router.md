---
author: catalin

levels:
  - basic
  - beginner

type: normal

category: must-know

standards:
  javascript.express-server.1: 10
  javascript.express-server.2: 10
  javascript.express-server.4: 10

links:
  - '[scotch.io](https://scotch.io/tutorials/learn-to-use-the-new-router-in-expressjs-4){website}'

parent: easy-way-to-deliver-html-pages-with-express

---
# Using **Express 4.0** `router`

---
## Content

The router in **Express** acts like a mini express application that doesn't bring in views, settings and so on, yet provides us with routing APIs.


 **Express 4.0** introduces a new `Router` whose API looks like this:

Creating a simple route:

```javascript
app.get('/simple', function(req, res) {
  res.send('Simple route accessed!');
});
```
Creating multiple routes:
```javascript
var router = express.Router();
router.get('/', function(req, res) {
    res.send('first page');  
});
router.get('/enki', function(req, res) {
    res.send('enki page');
});

```
Applying the routes:
```javascript
app.use('/', router);
```

`router.use()` is used to define middleware:
```javascript
router.use(function(req,res,next) {
  console.log(req.method, req.url);
  next();
});

```

---
## Practice

Complete the below code snippet:

```
???.use(
  function(req, res, ???) {
    console.log(req.method, req.url);
    ???;
});
```
* router
* next
* next()
* callback()
* done()`
* env
* app

---
## Revision

Create `simple` route:
```javascript
app.???('/simple', function(req, res) {
  ???.???('Simple route accessed!');
```

* get
* res
* send
* use
* req
* app
* router
 
