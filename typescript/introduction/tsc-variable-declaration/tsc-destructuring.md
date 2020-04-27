---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Destructuring

---
## Content

Destructuring is a method used to unpack values (from arrays and tuples) or properties (from objects). It makes the code more readable by omitting some steps behind the scenes.

Let's take a look at an example:

```ts
let numbers: number[] = [
  1,
  2
];

// this code
let a = numbers[0];
let b = numbers[1];

// can be abbreviated to
let [a, b] = numbers;

console.log(a); // 1
console.log(b); // 2
```

If you want to extract the remaining elements of the array into a single variable, you can use the rest operator (`...`):

```ts
let alphabet: string[] = [
  'a',
  'b',
  'c',
  'd'
];

let [first, ...others] = alphabet;
console.log(first); // a
console.log(others);
// ['b', 'c', 'd']
```

With objects, the syntax is similar, except we use `{}` instead of `[]`:

```ts
let someData = {
  a: 1,
  b: 2,
  c: 3
};

let {a, ...rest } = someData;
console.log(a); // 1
console.log(rest);
// { b: 2, c: 3 }
```

Note that for objects, the destructured variable name must have the same name as the field you want to extract.

```ts
let x = { name: 'enki' };
let { age } = x; // error
// Property 'age' does not exist on type '{ name: string; }'
```

---
## Practice

Complete the following destructuring:

```ts
let cities: string[] = [
  'London',
  'New York',
];

let ??? = cities;
console.log(first); // London
console.log(second); // New York
```

* [first, second]
* {first, second}
* first, second

---
## Revision

Will the following code cause an error?

```ts
const x = {
  a: 1,
  b: 2,
  c: 3
};

let { a, d } = x;
```

???

* Yes
* No
