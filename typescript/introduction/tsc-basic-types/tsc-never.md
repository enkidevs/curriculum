---
author: kapnobatai136
type: normal
category: must-know
aspects:
  - deep
  - workout
links:
  - '[Never Type](https://www.typescriptlang.org/docs/handbook/basic-types.html#never){documentation}'

---

# Never

---
## Content

The type `never` is used to represent a value that **never** occurs.

Let's take a look at a few examples:

```ts
function neverEnd(): never {
  while (true) {}
}

function throwError(
  message: string
): never {
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
