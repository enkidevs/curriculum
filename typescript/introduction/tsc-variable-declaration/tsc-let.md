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

Using `var` can sometimes lead to unintuitive code or unexpected bugs. With `let` we can fix those problems.

Apart from having a different keyword the syntax remains the same:

```js
let a: number = 1;
```

Unlike `var`, which is always scoped to the function, variables defined with `let` are always block-scoped. 

You can only access them in their containing block or any nested block but you cannot access them in the upper scope:

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
  // in the `if` block-scope
}
```

Another difference between `var` and `let` is that variables declared with `let` can't be used before their declaration:

```ts
a = 5; // Error
let a: number;
```

Unlike `var`, variables declared with `let` can't be redeclared no matter their type:

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

b++; // ???
let b: number = 10;
```

* Okay 
* Error

---
## Revision

Fill in the gaps with `Okay` or `Error`:

```ts
a++; // ???
let a: number = 10;

b++; // ???
var b: number = 10;
```

* Error
* Okay 
