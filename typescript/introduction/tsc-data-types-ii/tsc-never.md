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

The type `never` is used to represent value that **never** occur. Let's take a look at a few examples:

```ts
function neverEnding(): never {
  while(true) {}
}

function throwErrorMessage(message: string): never {
  throw new Error(message);
}

function impossibleValue(value) {
  if (
    typeof value === "string" &&
    typeof value === "number"
  ) {
    value; // type "never"
  }
}
```

Note that in the first example (`neverEnding` function), that's how to assign a return type to a function. We'll go into more detail in a workout later on.

---
## Practice

The `never` type is used for values that ???.

* never occur
* are undefined
* are falsy
* never return
