# Functions return `undefined` by default
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

standards:
  js.functions.1: 10

tags:
  - introduction
  - workout

---
## Content

JavaScript is a **dynamic** programming language which means that it is not necessary to define the return type of a function.

If the function `return` statement is empty (or missing) the default value is `undefined`.

For example:

```javascript
function doSomething(num) {
  if (num === 1) {
    return;
  }
  if (num === 2) {
    return 'Enki';
  }
}

doSomething(1) // undefined
doSomething(2) // 'Enki'
doSomething(3) // undefined

```

---
## Revision

Complete the following code snippet:
```javascript
function foo(num) {
  if (num === 1) {
    return;
  }
  if (num === 2) {
    return 'Enki';
  }
}
foo(1); // = ???
foo(2); // = ???
foo(3) === foo(1); // = ???
```
*undefined
*Enki
*true
*null
*false
*NaN
