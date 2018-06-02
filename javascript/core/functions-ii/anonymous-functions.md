---
author: rosielowther
levels:
  - basic
  - beginner
type: normal
category: must-know
standards:
  javascript.functions.4: 10
  javascript.functions.8: 10
tags: []
links:
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions){website}
aspects:
  - introduction
  - workout
---

# Anonymous functions


---

## Content

If you use a **function expression** to define a function, you can omit the function's name. The syntax is:

```javascript
function [name]([p1[, p2[, ...,]]]) {
   statements
}
```

An example of an **anonymous** function:

```javascript
var square = function(x) {
   return x * x;
};
```

The downsides to anonymous function expressions are:

* You are unable to refer to the function within itself e.g. for recursion.
* You can't debug easily, especially in minified code.
* You can lose the clarity gained by naming functions sensibly.

Note: you must name a function defined by a **function declaration**.


---

## Practice

Is the `name` field used in a **function expression** for defining functions mandatory?

???

* no
* yes
* only on browsers
* only in older JavaScript versions


---

## Revision

Complete the following anonymous function:

```javascript
var cube = ???(x) {
   return x * x * x;
};
```

* function
* let
* name
* {}

