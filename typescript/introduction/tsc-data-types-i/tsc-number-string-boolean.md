---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Number, String & Boolean

---
## Content

### String

A *string* is just a data type used to represent a sequence of characters. For a value to be a string, it must be enclosed in either single (`'`) or double (`"`) quotation marks.

```ts
let brand: string = 'Samsung';
brand = "Apple";
```

### Number

As you might've already guessed, the `number` type is used to store any numerical value. By default, all numbers in TypeScript are floating points values. Hexadecimal, decimal, binary, and octal literals are also considered numbers:

```ts
let simpleNumber: number = 13;
let hex: number = 0xf010;
let decimal: number = 61456;
let binary: number = 0b1111000000010000;
let octal: number = 0o170020;
```

### Boolean

The boolean type can only take two values, `true` or `false`:

```ts
let isTrue: boolean = true;
let isFalse: boolean = false;
```

---
## Practice

Match the types with their values:

```ts
let a: ??? = false;
let b: ??? = 'Enki';
let c: ??? = 123.4;
```

* boolean
* string
* number

---
## Revision

Complete the following code:

```ts
let a: ??? = 0xf010;
let b: number = ???;
```

* number
* 0o170020
* false
* '0o170020'
* boolean