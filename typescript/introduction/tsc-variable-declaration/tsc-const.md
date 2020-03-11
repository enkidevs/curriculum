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

Along with `let` also came `const`. The only difference between `const` and `let` is that the latter can have its value reassigned:

```ts
let a: number = 1;
a = 2;

const b: string = 'enki';
b = 'foobar'; // Error
```

Although values defined with `const` can't be reassigned, that doesn't mean that it is immutable. This type of declaration creates a read-only reference to a value. If the value is an array, it can be mutated without a problem.

```ts
const c: number[] = [
  1,
  2,
  3
];
c.push(4);
console.log(c);
// [1, 2, 3, 4]

const d: {a: number} = {
  a: 1
};
d.a = 2;
console.log(d);
// {a: 2}
```

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
b.push(3);

// d
const d: number = 1;
b = 2;
```

???

* d
* a
* b
* c

---
## Revision

Defining a variable using `const` creates a ???-only reference to the value, but that doesn't make the value ???.

* read
* immutable
* write
* mutable