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

The type `never` is used to represent value that **never** occurs. Let's take a look at a few examples:

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


---
## Practice

The `never` type is used for values that ???.

* never occur
* are undefined
* are falsy
* never return

---
## Revision

What is the return type of `enki`?

```ts
function enki(message: string): ??? {
  throw new Error(message);
}
```

???

* `never`
* `undefined`
* `null`
* `void`
