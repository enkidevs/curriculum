---
author: rosielowther
type: normal
category: must-know
---

# The NaN Value


---

## Content

In JavaScript, `NaN` means **Not-A-Number** and is the result when math functions fail or when a function expecting a number is given a different type:

```js
// dividing by zero
// gives "not a number"
let x = 0 / 0;
console.log(x);
// NaN
```

It is a special value of type `"number"` to represent an invalid number.

One notable property of `NaN` is that it is never equal to itself:

```js
NaN === NaN // false
```

