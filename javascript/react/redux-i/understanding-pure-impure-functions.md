---
author: catalin

levels:
  - beginner

type: normal

category: must-know

links:
  - '[www.nicoespeon.com](http://www.nicoespeon.com/en/2015/01/pure-functions-javascript/){website}'

aspects:
  - introduction
  - workout

---
# Understanding **pure/impure** functions

---
## Content

As **Redux** is based on the general concept of the *single immutable state tree*, **pure** functions should be used as often as possible as not to alter any state, but to always generate new states (especially for the frontend).

**Pure** functions are basically functions whose `return` value depends only on their arguments. They don't have observable side effects (database/network calls) and are predictable.

Example of a simple pure function:

```javascript
function doublePure(x) {
  return 2*x;
 }
```

**Pure** functions must always return a new object and not modify the argument. For example, if we want to decrement every element of an `array`, the **pure** way to do it's by creating a new array with the same elements, but decremented.

On the contrary, **impure** functions don't have a predictable behaviour as they might call the network, the database, modify the **DOM** or even alter the value/s passed to them.

Example:
```javascript
function doubleImpure(x) {
  x= 2 * x;
  return x;
}
```

---
## Practice

Are the following functions pure or impure?

```javascript
function a(x) {
  x = 'enki'
  return x
}

function b(x){
  return 'enki'
}
```

???

* impure, pure
* pure, impure
* impure, impure
* pure, pure

---
## Revision

What type of functions should be used in **Redux** as to preserve the **single immutable state tree**?

???

* pure
* impure

