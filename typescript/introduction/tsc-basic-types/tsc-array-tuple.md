---
author: kapnobatai136
type: normal
category: must-know
aspects:
  - introduction
links:
  - '[Try out the code from this Insight](https://www.typescriptlang.org/play/index.html#code/DYUwLgBAdgrgtgIxAJwILOQQwJ4C5rxLIDaAuhALwTECMANBAMwMCsDA7KQNwBQPokAM5hkASygBzdFjwRpOADzCxkgHyVqPCBABEAeyggddLbrAALZCCMntOgGaiAbjdM7BIF1B09ufARBw2AAqMAAOoPjEsIgoDAh6eqCYUORUxKb0piIwIL5cQA){website}'
  - '[Array Type](https://www.typescriptlang.org/docs/handbook/basic-types.html#array){documentation}'
  - '[Tuple Type](https://www.typescriptlang.org/docs/handbook/basic-types.html#tuple){documentation}'

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
let numberArray: number[] = [1, 3, 5, 7];

// or by wraping the type in the Array type
// here we define an array of strings
let stringArray: Array<string> = [
  "one",
  "three",
  "five",
  "seven"
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

Tuple is like an array, but it can only take in a fixed number of elements with known types:

```ts
// myTyple has a number at the first position
// and a boolean at the second position
let myTuple: [number, boolean] = [
  1,
  true
];
```

The order of the types must be exact:

```ts
// this is an error because we're storing
// the types in the wrong order
let myTuple: [number, boolean] = [
  true, // error: Type 'true' is not assignable to type 'number'
  1 // error: Type 'number' is not assignable to type 'boolean'
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
