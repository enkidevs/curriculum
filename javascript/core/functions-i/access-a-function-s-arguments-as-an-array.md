---
author: Bruno

type: normal

category: how to

tags:
  - introduction

links:
  - '[The Arguments Object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments){documentation}'

aspects:
  - introduction
  - workout


---

# Access a function's `arguments` as an array

---
## Content

The [arguments](https://enki.com/glossary/general/parameter-vs-argument.md) of a function can be accessed with the `arguments` keyword.

Do note that the value in `arguments` is a *pseudo-array* (an object with a length) that doesn't have all of the functionality of JavaScript arrays.

Before applying `Array` methods, `arguments` needs to be converted to an actual `Array`, as follows:

```javascript
function sortedArgs() {
  // pseudo-array of arguments
  let a = arguments
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

The following `returnArgs` function should return an array containing the arguments with which it is called. Complete the missing gaps such that it works as intended:

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
  let a = ???;
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
 
