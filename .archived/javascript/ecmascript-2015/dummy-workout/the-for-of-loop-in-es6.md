---
author: rosielowther
levels:
  - medium
type: normal
category: feature
links:
  - '[www.2ality.com](http://www.2ality.com/2015/02/es6-iteration.html){website}'
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...of){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The `for-of` loop in ES6


---

## Content

The `for-of` loop is new in ES6:

     for (let x of iterable) {
       ···
     }

The loop iterates over `iterable` and assigns each of the enumerated items to the iteration variable `x`. `let` keeps the scope of `x` to within the loop.

You can convert data structures into iterable objects using the `entries()`, `keys()` and `values()` methods:

    // entries() returns a [key,value] array
    let a = ['E', 'n', 'k', 'i'];
    for (let pair of a.entries()) {
      console.log(pair);
    }
    // [0, 'E']
    // [1, 'n']
    // [2, 'k']
    // [3, 'i']

Note: you can use this loop on strings, but it loops over Unicode code points which may be represented by more than one character.


---

## Revision

Complete the syntax of `for-of` loop in **ES6**:

```javascript
??? (??? x ??? iterable) {
  x = x + 2;
  console.log(x);
}
```

- for
- let
- of
- in
- while
- const
 
