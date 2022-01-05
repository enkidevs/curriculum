---
author: kapnobatai136
type: normal
category: must-know
links:
  - >-
    [Try out the code from this
    Insight](https://repl.it/@enkicontent/TypeScriptArraysAndTuples){website}
  - >-
    [Array
    Type](https://www.typescriptlang.org/docs/handbook/basic-types.html#array){documentation}
  - >-
    [Tuple
    Type](https://www.typescriptlang.org/docs/handbook/basic-types.html#tuple){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Array & Tuple

---

## Content

### Array

An array represents an ordered collection of values.

In TypeScript, there are two ways to define an array:

```ts
// by putting the [] after the type
// here we define an array of numbers
let primes: number[] = [2, 3, 5, 7];

// or by wrapping the type in the Array type
// here we define an array of strings
let powerRangerColors: Array<string> = [
  "red",
  "black",
  "yellow",
  "blue",
  "pink",
];
```

Note that arrays can only hold values of the type that you specify.

```ts
let nums: number[] = [1, 2, 3];
nums.push("enki");
// error: Argument of type '"enki"' is not assignable to parameter of type 'number'
```

An empty array belongs to any array type:

```ts
// all valid
let nums: number[] = [];
let words: string[] = [];
let bools: boolean[] = [];
// ...
```

### Tuple

Tuple is like an array, but it can only take in a fixed number of elements with individual types:

```ts
// numAndBoolTuple has a number at the first position
// and a boolean at the second position
let numAndBoolTuple: [number, boolean] = [
  1,
  true
];
```

The order of the types must be exact:

```ts
// this is an error because we're storing
// the types in the wrong order
let numAndBoolTuple: [number, boolean] = [
  true, // error: Type 'true' is not assignable to type 'number'
  1, // error: Type 'number' is not assignable to type 'boolean'
];
```

Tuples and arrays can be combined to build a `Map`:

```ts
// powerRangers is an array of tuples
// where each tuple is a string pair
// representing the color and name
// of each power ranger
const powerRangers: Array<
  [string, string] // <-- tuple
> = [
  ["red", "Jason"],
  ["black", "Zach"],
  ["yellow", "Trini"],
  ["blue", "Billy"],
  ["pink", "Kimberly"],
];

// create a map out of an array of tuples
const powerRangersMap = new Map(
  powerRangers
);

console.log(
  powerRangersMap.get("blue") // "Billy"
);
```

---

## Practice

Which of the following is **not a valid way** of creating an array:

```ts
let a: number[] = [1, 2];

let b: Array<number> = [1, 2];

let c: []number = [1, 2];
```

???

- c
- a
- b

---

## Revision

Which of the following statements **will not throw** an error:

```ts
let aTuple: [string, boolean];

// a
aTuple = ["true", true];

// b
aTuple = [false, false];

// c
aTuple = [false, "false"];
```

???

- a
- b
- c
