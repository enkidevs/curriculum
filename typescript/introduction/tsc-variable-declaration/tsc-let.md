---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Introducing `let`

---
## Content

Using `var` can introduce many unforseable or annoying bugs which could take time to detect. To circumvent these issues, a new type of variable definition has been introduced since the release of ES6.

This new declaration is done through the `let` keyword, and apart from having a different keyword the syntax remains the same:

```js
let a: number = 1;
```

When using `let`, the variables you define are block-scoped. You can only access them in their containing function, `if` statement, or `for` loop:

```ts
function f() {
  let a: number = 1;

  if (a < 5) {
    let b = a + 1;
    // a is accessible here
  }

  return b;
  // This will throw an error
  // because `b` is only accessible
  // in the `if` scope
}
```

Another feature of `let` is that the variable can't be used before being declared:

```ts
a = 5; // Error
let a: number;
```

Last important feature is that variables declared with `let` can't be redeclared:

```ts
let a: number;
let a: string;
// Error: can't redeclare 'a' in the same scope
```

---
## Practice

Fill in the gaps with `Okay` or `Error`:

```ts
let a: string = 'some';
a = 'thing' // ???

b++;
let b: number = 10; // ???
```

* Okay 
* Error