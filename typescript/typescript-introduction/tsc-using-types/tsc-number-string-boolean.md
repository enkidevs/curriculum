---
author: kapnobatai136
type: normal
category: must-know
links:
  - >-
    [Number, Boolean, String Types](https://www.typescriptlang.org/docs/handbook/2/everyday-types.html){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Number, String & Boolean

---

## Content

We can attach a type to a variable by adding a colon (`:`) and a type after its name.

### String

A `string` is a data type that represents a sequence of characters.

For a value to be a string, it must be enclosed in single (`'`) or double (`"`) quotation marks or back-ticks.

```ts
let brand: string = "Samsung";
brand = "Apple";
brand = `Enki`;
```

### Number

As you might've already guessed, the `number` type is used to store any numerical value[1]:

```ts
let meaningOfLife: number = 42;
let pi: number = 3.14;
```

### Boolean

The boolean type can only take two values, `true` or `false`:

```ts
let isTrue: boolean = true;
let isFalse: boolean = false;
```

---

## Practice

Declare a variable `ts` with the type `string` and a value `'is fun'`:

???

- `let ts: string = 'is fun'`
- `let ts string = 'is fun'`
- `let ts: string > 'is fun'`

---

## Revision

Match the types with their values:

```ts
let a: ??? = false;
let b: ??? = "Enki";
let c: ??? = 123.4;
```

- boolean
- string
- number

---

## Footnotes

[1:Numerical Values in TypeScript]
TypeScript numerical values can be integers, decimals, hexadecimals, binary literals or octal literals.

```ts
let integer: number = 42;
let decimal: number = 3.14;
let hexadecimal: number = 0xf010;
let binary: number = 0b1111000000010000;
let octal: number = 0o170020;
```
