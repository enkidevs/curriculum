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

In this example, the `who` argument always has to be a string, and the `hello` function can't return anything (because the return type is `void`). 

Notice that when we try to call the function using a number, we get a type error. The same would happen if we tried to include a `return` statement in the function.

If you don't declare a type, TypeScript will guess (infer) one for you:

```ts
let aNumber = 5;
aNumber = '5'; 
// error TS2322: Type '"5"' is not assignable to type 'number'.
```

TypeScript will also throw an error if the wrong number of arguments is passed in:

```ts
function hello(who: string, what: string): void {
  console.log('Hello ' + who);
}

hello('Enki');
// error TS2554: Expected 2 arguments, but got 1.
```

There is a way to define optional arguments, but this will be explained in the next workout.

---
## Practice

Which of the following code snippets do not contain a type error?

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

Will TypeScript report an error for `Enki`?

```ts
function Enki(): number {
  return '5';
}
```

???

* Yes
* No