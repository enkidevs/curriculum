---
author: kapnobatai136
type: normal
category: must-know
links:
  - >-
    [Never
    Type](https://www.typescriptlang.org/docs/handbook/basic-types.html#never){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Never


---

## Content

The type `never` is used to represent a value that **never** occurs.

Let's take a look at a few examples:

```ts
// the return type of a function
// that never returns is "never"
function neverEnd(): never {
  while (true) {}
}

// the return type of a function
// that throws an error instead
// of returning, is "never"
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
    // a value cannot be a string and a number
    // at the same time
    value; // type "never"
  }
}
```


---

## Practice

The `never` type is used for values that ???.

- never occur
- are undefined
- are falsy
- never return


---

## Revision

What is the return type of `enki`?

```ts
function enki(message: string): ??? {
  throw new Error(message);
}
```

- `never`
- `undefined`
- `null`
- `void`
