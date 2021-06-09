---
author: rosielowther
levels:
  - basic
  - advanced
  - medium
type: normal
category: must-know
tags:
  - ''
links:
  - >-
    [ponyfoo.com](https://ponyfoo.com/articles/es6-spread-and-butter-in-depth){website}
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment#Array_destructuring){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The `spread` operator


---

## Content

In ES5 you can pass arguments from a list or dynamic array to a function by using `.apply`:

    console.log.apply(console, [1, 2, 3])
    // 1 2 3

In ES6 the `spread` operator can be used instead. This is done by prepending three dots `...` to the array. You can use this operator alongside regular arguments.

    console.log(1, ...[2, 3, 4], 5)
    // 1 2 3 4 5

For example, this is useful in destructuring:

    const a = 1;
    const b = 2;
    const c = [3, 4, 5];
    [a, b, ...c] = [1, 2, 3, 4, 5];


---

## Practice

Complete the * ES6 * code snippet below to make it equivalent to the ES5 code snippet just above it:

    // ES5
    console.log.apply(console, [1, 2, 3, 4, 5])

    // ES6
    console.log(1, ???[2, 3, 4], 5)

- ...
- spread
- ...spread
- -spread
- _spread


---

## Revision

What can be used instead of `.apply` to pass arguments from a dynamic array to a function?

???

- ...
- const
- push
- Object.assign
 
