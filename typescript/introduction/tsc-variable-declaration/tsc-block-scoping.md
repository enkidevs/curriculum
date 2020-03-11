---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Block-Scoping

---
## Content

Let's talk a bit more about how the block scope works when using `let` and `const`. We know that when a variable is defined using `let` or `const`, it is only accessible in their containing function, `if` statement, or `for` loop. Let's take another look at an example to better understand this:

```ts
function theBestApp() {
  let getApp;

  if (true) {
    let app = 'Enki';
    getApp = function() {
      return app;
    }
  }
  return getApp()
}
console.log(theBestApp());
// Enki
```

Because we first define `getApp` and then we assign it a function, we won't get any errors.

You remember the `setTimeout` example? Here it is using `let`:

```ts
for (let i = 0; i < 3; i++) {
  setTimeout(function() { console.log(i) }, 10 * i)
};

// 0
// 1
// 2
```

Using `let` with iterations, you kind of declare a new scope for every iteration step.

---
## Practice

Is this code valid?

```ts
function sum() {
  let sum: number;
  for (i = 0; i < 5; i++) {
    sum += i;
  }
}
```

???

* True
* False