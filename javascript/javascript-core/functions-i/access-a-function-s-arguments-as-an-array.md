---
author: Bruno
type: normal
category: how-to
tags:
  - introduction
links:
  - >-
    [The Arguments
    Object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Access a Function's `arguments` as an Array


---

## Content

The [arguments](https://enki.com/glossary/general/parameter-vs-argument) of a function can be accessed with the `arguments` keyword.

Do note that the value in `arguments` is a *pseudo-array* (an object with a length) that doesn't have all of the functionality of the JavaScript `Array` object.

Before applying `Array` methods, `arguments` needs to be converted to an actual `Array`, as follows:

```javascript
function sortedArgs() {
  // `arguments` is a pseudo-array
  console.log(Array.isArray(arguments));
  // false

  // to create an array from the arguments
  // use the Array.from() prototype method
  let argList = Array.from(arguments);
  console.log(Array.isArray(argList));
  // true

  return argList.sort();
}
```

Example of use:

```javascript
sortedArgs(3, 1, 2)
// false
// true
// [1, 2, 3]
```


---

## Practice

The following `returnArgs` function should return an array containing the arguments with which it is called. Complete the missing gaps such that it works as intended:

```javascript
function returnArgs() {
  return ???.???(???);
}
```

- Array
- from
- arguments
- argv
- args
- argvs
- array
- new Array


---

## Revision

Turn the arguments of a method into a sorted array:

```javascript
function myArray() {
  let argList = ???.???(???);
  return argList.???();
}
```

- Array
- from
- arguments
- sort
- slice
- splice
- args
- argvs
 
