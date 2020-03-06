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

An array is just a way of storing multiple **values** in **one variable**. In TypeScript, there are two ways in which you can define an array:

```ts
let numberArray: number[] = [1, 3, 5, 7];
let stringArray: Array<string> = [
  "one",
  "three",
  "five",
  "seven"
];
```

Note that you can only insert the type that you specify. If you want to store different types, you can use a union:

```ts
let mixedArray: (string|number)[] = [
  1, 
  'one', 
  3, 
  5, 
  'five'
];
```

### Tuple

Tuples are like an array, but they can only take in a fixed number of elements with known types:

```ts
let myTuple: [number, boolean] = [
  1, 
  true
];
```

Note that for tuples, the order of elements matter. If you define its type as `[number, boolean]`, then the tuple must contain exactly two elements and be in the correct order. Here is an example that would throw an error:

```ts
let myTuple: [number, boolean] = [
  true,
  1
];
```

---
## Practice

Which of the following is **not the correct way** of creating a list:

```ts
let a: number[] = [1, 2];

let b: Array<number> = [1, 2];

let c: Array[] = [1, 2];
```

???

* c
* a
* b

---
## Revision

Which of the following variable assingment **will not throw** an error:

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