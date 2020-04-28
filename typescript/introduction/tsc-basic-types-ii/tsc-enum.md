---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[Enum Type](https://en.wikipedia.org/wiki/Enumerated_type){documentation}'

---

# Enum

---
## Content

An `enum` is used to define a set of named constants.

```ts
// numerical enum
enum SomeData {
  A = 111,
  B = 222,
  C = 333
}

let foo: SomeData = SomeData.A;
console.log(foo);
// 111
```

If we omit the values, the enum will assign values from `0` onwards:

```ts
// numerical enum
enum SomeData {
  A, // auto-assigned to 0
  B, // auto-assigned to 1
  C  // auto-assigned to 2
}

let foo: SomeData = SomeData.A;
console.log(foo);
// 0
```

You can also set the starting value from which to start the value sequence:

```ts
enum OtherData {
  A = 1,
  B, // auto-assigned to 2
  C = 50,
  D, // auto-assigned to 51
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
