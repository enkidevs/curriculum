---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Introducing `const`

---
## Content

The only difference between `const` and `let` is that the variables declared with `const` cannot be reassigned:

> *Note*: Assignment is done using the `=` operator. 

```ts
// because its declared with
// let, reassigning to a
// new value is fine
let a: number = 1;
a = 2;

// on the other hand, b is
// declared with const and
// cannot be reassigned
const b: string = 'enki';
b = 'foobar'; // Error
```

Although variables declared with `const` can't be reassigned, that doesn't mean that the values they hold are constants and can't be changed.

```ts
const c: number[] = [
  1,
  2,
  3
];
c.push(4);
console.log(c);
// [1, 2, 3, 4]
```

When using `const`, the assignment can happen only once but the value can be changed whenever.

---
## Practice

Which of the following will throw an error?

```ts
// a
let a: number = 12;
a = 13;

// b
let b: string = '12';
b = '13';

// c
const c: number[] = [1, 2];
c.push(3);

// d
const d: number = 1;
d = 2;
```

???

* d
* a
* b
* c

---
## Revision

The value of a variable declared with `const` can be changed.

???

* True
* False
