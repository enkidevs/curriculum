---
author: rosielowther
type: normal
category: feature
tags:
  - introduction
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Functions Return Undefined by Default


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

## Practice

Fill in the gaps such that the `naturalHalf` function, given an input number, will return `undefined` for every odd number and the number's half for each even number:

```javascript
function naturalHalf(number) {
  if (number ??? 2 == 0) {
    ???
  }
  ???
}
```

- %
- return number/2
- return
- return NaN
- return number%2
- return null
- returns undefined
- /
- number


---

## Revision

Fill in the output of the following `foo` calls:

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

- undefined
- Enki
- true
- null
- false
- NaN
 
