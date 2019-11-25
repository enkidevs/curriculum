---
author: catalin

levels:
  - beginner

type: normal

category: must-know

links:
  - '[Pure functions in JavaScript](http://www.nicoespeon.com/en/2015/01/pure-functions-javascript/){website}'

aspects:
  - introduction
  - workout

---
# Understanding **pure/impure** functions

---
## Content

As **Redux** is based on the general concept of the *single immutable state tree*, **pure** functions should be used as often as possible as not to alter any state, but to always generate new states (especially for the frontend).

**Pure** functions are basically functions whose `return` value depends only on their arguments. They don't have observable side effects (database/network calls) and are predictable.

Example of a pure function:

```javascript
function doublePure(x) {
  // do not change the object x.
  // instead return a new object
  // with the change applied to it.
  return { ...x, num: x.num * 2 };
}
```

**Pure** functions must always return a new object and not modify the argument. For example, if we want to decrement every element of an `array`, the **pure** way to do it's by creating a new array with the same elements, but decremented.

On the contrary, **impure** functions don't have a predictable behavior as they might call the network, the database, modify the **DOM** or even alter the value/s passed to them.

Example:
```javascript
function doubleImpure(x) {
  // change the object x.
  // this mutation affects the object
  // outside the lifetime of doubleImpure
  // which is not "pure"
  x.num = x.num * 2;
  return x;
}
```

Another good example of **pure** versus **impure**  functions is this:

```js
function increasePure(x) {
  // for the same number x, 
  // we always get 2 * x
  return 2 * x;
}

function increaseImpure(x) {
  // for any number x, we'll probably get
  // a larger number but we can't
  // predictably tell which one
  return x * randomInteger();
}
```

The **pure** function provides a predictable and consistent output for the same input, while the **impure** function does not.

---
## Practice

Consider these functions:

```javascript
function a(x) {
  return x * x;
}

function b(x) {
  return Math.random() * x;
}
```

Would you say function `a` is pure or impure? What about function `b`?

???

* pure, impure
* impure, pure
* impure, impure
* pure, pure

---
## Revision

What type of functions should be used in **Redux** as to preserve the **single immutable state tree**?

???

* pure
* impure

