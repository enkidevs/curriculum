---
author: lizTheDeveloper

levels:

  - beginner

  - basic

type: normal

category: feature

aspects:
  - introduction
  - workout
  - new

inAlgoPool: false

tags:

  - introduction

  - es6

  - workout

  - functions


links:

  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions){website}'

---

# Arrow Functions (Part 3)

---
## Content

Here's the code snippet again with the explanations:

```js
function Counter() {
  // We wrote `Counter` in such
  // a way that it expects `this`
  // to be an instance of itself.
  // In other words, we expect
  // `Counter` to be called using the
  // keyword `new`, which will initialize
  // `this` to be an instance object, and
  // we assign a `counter` variable to
  // that object
  this.counter = 0;

  function countUp() {
    // This function will have `this`
    // as the global object because setInterval
    // will call it like a regular function,
    // i.e. fn()

    // this means that in here
    // we increment a `counter`
    // on the global object,
    // not the one on `Counter`
    this.counter++;
  }

  const countDown = () => {
    // this arrow function
    // will look up `this`
    // in the scope above, which is the
    // scope of Counter, and use that.
    // In here, we update the `counter`
    // on whatever `this` points to 
    // within `Counter`, which in our 
    // case should be an instance of
    // `Counter`
    this.counter--;
  }

  setInterval(countUp, 1000);
  setInterval(countDown, 1000)
}

// the behavior explained above
// is correct because we are
// calling `Counter` with `new`
let count = new Counter();
```
