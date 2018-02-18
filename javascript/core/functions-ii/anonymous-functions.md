# Anonymous functions
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: must-know

standards:
  js.functions.4: 10
  js.functions.8: 10

tags:
  - introduction
  - workout

links:

  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions){website}

---
## Content

If you use a **function expression** to define a function, you can omit the function's name. The syntax is:
```
function [name]([p1[, p2[, ...,]]]) {
   statements
}
```
An example of an **anonymous** function:
```
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
## Revision

Complete the following anonymous function:
```javascript

var cube = ???(x) {
   return x * x * x;
};
```

*`function`
*`let`
*`name`
*`{}`
