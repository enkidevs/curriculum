---
author: kapnobatai136
type: normal
category: must-know
links:
  - >-
    [Enum
    Type](https://www.typescriptlang.org/docs/handbook/basic-types.html#enum){documentation}
  - "[Try Out Enums](https://repl.it/@enkicontent/TypeScriptEnums){website}"
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Enum

---

## Content

An `enum` is used to define a set of named constants.

```ts
// numerical enum
enum GameLevel {
  A = 1,
  B = 2,
  C = 3,
}

let firstLevel: GameLevel = GameLevel.A;

console.log(firstLevel);
// 1
```

If we omit the values, the enum will assign values from `0` onwards:

```ts
// numerical enum
enum GameLevel {
  A, // auto-assigned to 0
  B, // auto-assigned to 1
  C, // auto-assigned to 2
}

let firstLevel: GameLevel = GameLevel.A;

console.log(firstLevel);
// 0
```

You can also set the starting value from which to start the value sequence:

```ts
enum WeirdLevel {
  A = 1,
  B, // auto-assigned to 2
  C = 50,
  D, // auto-assigned to 51
}

let idk: WeirdLevel = WeirdLevel.B;

console.log(idk);
// 2
```

---

## Practice

What will be the value logged in the console?

```ts
enum Enki {
  a,
  b = 10,
  c,
}

let enki: Enki = Enki.c;
console.log(enki);
// ???
```

- 11
- 1
- 3
- 2

---

## Revision

Complete the code block:

```ts
enum Enki {
  a,
  ???,
  c
}

let enki: Enki = Enki.c;
console.log(enki);
// 13
```

- b = 12
- b
- b = 14
- b = 11
