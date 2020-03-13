---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Assigning Types

---
## Content

Assigning types is one of the main features of TypeScript.

```ts
function hello(who: string): void {
  console.log('Hello ' + who);
}
hello('Enki'); // Hello Enki
hello(5); // TypeError
```

In this example, the `who` argument always has to be a string, and the `hello` function can't return anything (from the `function hello(): void` syntax). Notice that when we try to call the function using a number, we get a type error. The same would happen if we tried to include a `return` statement in the function.

What we haven't showed you is how TypeScript can infer a variable's type:

```ts
let aNumber = 5;
aNumber = '5'; 
// error TS2322: Type '"5"' is not assignable to type 'number'.
```

Lastly, if you define two arguments for a function, TypeScript will throw an error if less than two arguments are passed:

```ts
function hello(who: string, what: string): void {
  console.log('Helo ' + who);
}

hello('Enki');
// error TS2554: Expected 2 arguments, but got 1.
```

There is a way to define optional arguments, but this will be explained in the following mission.

---
## Practice

Which of the following is correct?

```ts
// a
let a = 5;
a = '5';

// b
function b(): void {
  return 5;
}

// c
const arr = [];
arr.push(5);
```

???

* c
* a
* b

---
## Revision

Is this valid?

```ts
function Enki(): number {
  return '5';
}
```

???

* No.
* Yes.