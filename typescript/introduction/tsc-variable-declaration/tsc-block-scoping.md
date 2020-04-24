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

Let's talk a bit more about how the block scope works.

We know that when a variable is defined using `let` or `const`, it's only accessible in the containing pair of curly braces, i.e. `{}`.

Let's take another look at an example to understand this better:

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

It should be noted that every iteration of a loop creates a new block-scope.

```ts
// the variable i is redeclared
// in each loop iteration
for (let i = 0; i < 3; i++) {
  setTimeout(function() { console.log(i) }, 10 * i)
};

// 0
// 1
// 2
```

Using `var` on the other hand would only log the final value in the loop. This is because `i` would be function-scoped and thus wouldn't get recreated on each iteration. Every `setTimeout` callback will share the same `i` which, by the time those callbacks are called, will hold the last value assigned to it, in this case `3`.

```ts
// the variable i is always the same one
// because its scoped to the function
for (var i = 0; i < 3; i++) {
  setTimeout(function() { console.log(i) }, 10 * i)
};

// 3
// 3
// 3
```

---
## Practice

Is this code valid TypeScript?

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

---
## Revision

Variables declared with `const` are accessible within a ???.

* block
* function
* statement
* module