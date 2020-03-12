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

You might already know what destructuring is, but for those who don't here we go. Destructuring is a method used to unpack values (from arrays and tuples) or properties (from objects). It is useful in increasing readability and also managing your data.

Let's take a look at an example:

```ts
let numbers: number[] = [
  1,
  2
];

let [a, b] = numbers;
console.log(a); // 1
console.log(b); // 2
```

As you can see, you can create new variables and assign them certain values from arrays.

If you're working with big arrays, you can use the rest operator (`...`) to group all the data that you are not interested in:

```ts
let alphabet: string[] = [
  'a',
  'b',
  'c',
  'd',
  '...'
];
let [first, ...rest] = alphabet;
console.log(first); // a
console.log(rest);
// ['b', 'c', 'd', '...']
```

With objects, the syntax is similar, but you can omit fields that you are not interested in:

```ts
let someData = {
  a: 1,
  b: 2,
  c: 3
};

let {a, c} = someData;
console.log(a);
console.log(c);
```

Note that for objects, the new variable must have the same name as the field you want to extract.

---
## Practice

Complete the following destructuring:

```ts
let cities: string[] = [
  'London',
  'New York,
];

let [???, ???] = ???;
console.log(first); // London
console.log(second); // New York
```

* first
* second
* cities

---
## Revision

Is the following destructuring correct?

```ts
let {a, delta} = {
  a: 1,
  b: 2,
  d: 3
};
```

???

* No
* Yes