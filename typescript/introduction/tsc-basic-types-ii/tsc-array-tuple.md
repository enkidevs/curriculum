---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Array & Tuple

---
## Content

### Array

An array represents an ordered collection of values. In TypeScript, there are two ways in which you can define an array:

```ts
// by putting the [] after the type
// here we define an array of numbers
let numberArray: number[] = [1, 3, 5, 7];

// or by wraping your type in the Array type
// here we define an array of strings
let stringArray: Array<string> = [
  "one",
  "three",
  "five",
  "seven"
];
```

Note that arrays can only hold values of the type that you specify.

### Tuple

Tuples are like an array, but they can only take in a fixed number of elements with known types:

```ts
// myTyple has a number at the first position
// and a boolean at the second position
let myTuple: [number, boolean] = [
  1,
  true
];
```

Note that for tuples, the order of elements matters.

If you define its type as `[number, boolean]`, then the tuple must contain exactly two elements and be in the correct order.

Here is an example that would throw an error because the order of the types is wrong:

```ts
let myTuple: [number, boolean] = [
  true, // Type 'true' is not assignable to type 'number'
  1 // Type 'number' is not assignable to type 'boolean'
];
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

* c
* a
* b

---
## Revision

Which of the following statements **will not throw** an error:

```ts
let aTuple: [string, boolean];

// a
aTuple = ['true', true];

// b
aTuple = [false, false];

// c
aTuple = [false, 'false'];
```

???

* a
* b
* c
