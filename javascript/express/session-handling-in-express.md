# Session handling in **Express**
author: catalin

levels:

  - basic

  - beginner

type: normal

category: how to

parent: easy-way-to-deliver-html-pages-with-express

links:

  - >-
    [codeforgeek.com](https://codeforgeek.com/2014/10/express-complete-tutorial-part-4/){website}

  - '[github.com](https://github.com/expressjs/session){website}'

---
## Content

Prior to handling sessions in **Express 4.0**, the `express-session` middleware must be installed:
```bash
$ npm install express-session
```
`Session` can be accessed through the `request` object:
```
var sess;
app.get('/', function(req,res) {
  sess = req.session;
  // more code here
} // sess initialized as homepage is visited
```
Creating session variables:
```javascript
sess.id = "100";
sess.myVar = "myValue";
```
Destroying sessions:
```javascript
req.session.destroy(function(err){
});

```
Keep in mind that the `express-session` module is very big, providing numerous methods and properties of the `session` object.

---
## Practice

How can you access sessions through the request object?

```javascript
app.???('/', function(req, ???) {
   sess = ???.session;
}
```
* get
* res
* req
* fetch
* this
* sess
* session
* app 
* func
* run

---
## Revision

How can you access sessions through the request object?

```
app.get('/', function(req,res) {
   mySession = ???.???;

}
```
* `req`
* `session`
* `res`
* `sess`
* `mySession`
* `request`