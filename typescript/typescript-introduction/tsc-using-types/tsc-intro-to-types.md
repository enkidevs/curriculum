---
author: kapnobatai136
type: normal
category: must-know
links:
  - >-
    [Try out the code
    example](https://repl.it/@enkicontent/TypeScriptIntroToTypes){website}
  - "[Type Inference](https://en.wikipedia.org/wiki/Type_inference){website}"
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Introduction to Types

---

## Content

A type in TypeScript is defined by its structure and the operations that can be performed on it.

For example, a `number` represents any numerical value and it can be subtracted but a `string` is a sequence of characters and it can't be subtracted.

> 💡 Adding types is optional. If you don't declare any types, TypeScript will try to guess them for you.

```ts
// TypeScript determines the type of
// the variable num to be a number
// because we give it the value 5
let num = 5;
let ok = num - 3; // no error

let str = "enki";
let nono = str - 3;
//         ^^^
// error because we're subtracting a string
```

TypeScript will try to guess as much of the type information as it can in order to provide safety without getting in the way[1].

---

## Practice

Will this code compile without errors?

```ts
let lesson = "Remember, TS guesses the type";
let points = 10;
let result = points * lesson;
```

???

- No
- Yes

---

## Revision

Will this code compile without errors?

```ts
let points = "101";
let total = points + 2;
```

???

- No
- Yes

---

## Footnotes

[1: Type Inference]
The automatic detection of types is called *type inference*.

This means that all values in TypeScript have an implicit type if no type is declared.
