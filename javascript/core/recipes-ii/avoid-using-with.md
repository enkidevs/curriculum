---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: best practice

standards:

  javascript.javascript-syntax.0: 10


links:

  - '[developer.mozilla.org](https://developer.mozilla.org/en/docs/Web/JavaScript/Reference/Statements/with){website}'


---

# Avoid using `with`

---
## Content

The `with` statement shortens code by making it unnecessary to repeat object references.

For example:
```
var a, x;

with (Math) { 
  x = random();
  a = exp(x);
} 
```
There are however many potential pitfalls to using `with`:
* You can easily make global variables by mistake.

* It can be difficult to read.

* The compiler disables optimisation operations.


It is not recommended that you use `with` and it is not allowed in ES5 **strict mode**.

---
## Practice

Change the code in order for it to run without using `with` :
```javascript
var a, x;
  
/* with (Math) { 
  x = random();
  a = exp(x);
} */
x = ??? ;
a = ??? ;
```  

* Math.random()
* Math.exp(x)
* Math.exp()
* Math.random(x)

---
## Revision

A downside of using `with` is that ???


* you can make global variables by mistake.
* it shortens code.
* you don’t have to repeat object references.

 
