---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Never & Enum

---
## Content

### Never

This type (`never`) is used for types of values that **never** return. To better understand this, take a look at these examples:

```ts
function neverEnding(): never {
  while(true) {}
}

function throwErrorMessage(message: string): never {
  throw new Error(message);
}
```

Note that in the first example (`neverEnding` function), that is how to assign a return type to a function. We will go into more detail in a later mission.

### Enum

An `enum` is used to define a set of named constants. The most popular ones are numerical enums, but it is also possible to have string enums, and mixed enums (it is advised against used mixed enums).

```ts
// numerical enum
enum SomeData {
  A,
  B,
  C
}

let foo: SomeData = SomeData.A;
console.log(foo);
// 0
```

In this case, `A` is equal to `0`, and all the other values are incremented. Following this logic, `B` will be equal to `1` and `C` will be equal to `2`.

You can also decide the starting value, or directly decide all the values:

```ts
enum OtherData {
  A = 1,
  B,
  C = 10
}

let foo: OtherData = OtherData.B;
console.log(foo);
// 2
```

---
## Practice

What will be the value logged in the console?

```ts
enum Enki {
  a,
  b = 10,
  c
}

let foo: Enki = Enki.c;
console.log(foo);
// ???
```

* 11
* 1
* 3
* 2

---
## Revision

Complete the code block:

```ts
enum Enki {
  a,
  ???,
  c
}

let foo: Enki = Enki.c;
console.log(foo);
// 13
```

* b = 12
* b
* b = 14
* b = 11