---
author: Bruno

levels:
  - beginner

type: normal

category: how to

standards:
  javascript.functions.1: 10

tags:
  - introduction

links:
  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments){documentation}'

aspects:
  - introduction


---
# Access a function's `arguments` as an array

---
## Content

The arguments of a function can be accessed with the `arguments` keyword, but `arguments` only returns a *pseudo-array*.

Before applying Array methods, `arguments` needs to be converted to an actual Array, as follows:

```javascript
function sortedArgs() {
  // pseudo-array of arguments
  var a = arguments
  // turn a into a proper Array:
  a = Array.prototype.slice.call(a)
  // we can now use Array methods:
  return a.sort();
}
```

Example of use:

```javascript
sortedArgs(3,1,2)
// [1,2,3]
```

---
## Practice

The following `returnArgs` function should an array containing the arguments with which it is called. Complete the missing gaps such that it works as intended:

```javascript

function returnArgs() {
  return ???.prototype
    .slice.call(???)
}
```

* Array
* arguments
* argv
* args
* argvs
* array
* new Array

---
## Revision

Turn the arguments of a method into a array:

```javascript
function myArray() {
  var a = ???;
  a = Array.prototype.???.call(a);
  return a;
}
```

* arguments
* slice
* splice
* argv
* args
* sort
* toArray
 
