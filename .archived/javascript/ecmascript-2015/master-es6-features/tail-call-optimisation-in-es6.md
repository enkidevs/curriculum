---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:
  - introduction
  - workout
  - deep

links:

  - '[www.2ality.com](http://www.2ality.com/2015/06/tail-call-optimization.html){website}'
  - '[github.com](https://github.com/lukehoban/es6features#arrows){website}'


---

# Tail call optimisation in ES6

---
## Content

A **tail call** is a function call that is in the **tail position** (the last action in a function). Here `t()` is in the tail position: 
```
const a = () => h() && t();
```

In ES6 **tail call optimisation** means that the call can be made without **stack growth**. This only works in **strict mode**.

You can implement **recursive loops** without growing the stack. For example:

```
function factorial(n, acc = 1) {
    'use strict';
    if (n <= 1) return acc;
    return factorial(n - 1, n * acc);
    // recursive call is in tail position.
}
```
Note: in this example `b()` is not in a tail position because functions implicitly return `undefined`:
```
function a() {
    b();
    // implicit: return undefined;
}
```

---
## Practice

Which function in the following JS code snippet is in the *tail position*? ???

```javascript
const env = () => foo() && test();
```


* `test()`
* `foo()`
* `env`
* None of them...

---
## Revision

When does the ES6 **tail call optimisation** work?

???


* in strict mode
* in non-strict mode

 
