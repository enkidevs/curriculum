---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Never

---
## Content

This type (`never`) is used for types of values that **never** return. Let's take a look at these examples:

```ts
function neverEnding(): never {
  while(true) {}
}

function throwErrorMessage(message: string): never {
  throw new Error(message);
}
```

Note that in the first example (`neverEnding` function), that's how to assign a return type to a function. We'll go into more detail in a workout later on.

---
## Practice

The `never` type is used for values that never ???.

* return
* compile
* log
