---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

standards:

  javascript.functions.5: 10


links:

  - '[ryanmorr.com](http://ryanmorr.com/understanding-scope-and-context-in-javascript/){website}'


---

# Closures

---
## Content

A **closure** is created when you access a  variable outside of the immediate scope. 

For example, if you define a function **nested** inside another function, a closure is created. 

You can return the **nested function** `bar()` and maintain access to the local variables, arguments, and inner function declarations of the **outer function** `foo()`:

```
function foo(){
    var localVariable = 'private variable';
    return function bar(){
        return localVariable;
    }
}
var getLocalVariable = foo();
getLocalVariable() // private variable
```
Which is the same as:
```
foo()(); // private variable
```
This encapsulation means you can hide and preserve the execution context from outside scopes and expose a **public interface**.

---
## Practice

This code ??? run:
```javascript
function foo(){
  var localVariable = 'lVar';
  return function bar(){
     return localVariable;
  }
}
foo()();
```    

* will
* will not

---
## Revision

A *closure* is created when you ???.


* nest a function inside another
* declare a function
* call a function

 
