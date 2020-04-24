---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Data Types

---
## Content

A data type is defined by the values it can take and the operations that can be performed on it. 

For example, a `number` is a data type that can be subtracted but a `string` is a sequence of characters and it can't be subtracted.

```ts
let num = 5;
let ok = num - 3; // no error
let str = 'enki';
let nono = str - 3; 
//         ^^^ 
// error because we're subtracting a string
```

We can define types for any value (think variable) in TypeScript code. Let's take a look at the `hello.ts` file we wrote in the first workout:

```ts
// hello.ts
const hello = (name: string) => {
  console.log(`Hello ${name}!`)
}

hello('Andrei');
```

Notice that the `name` parameter in the `hello` function has a type definition `string` next to it. This means that you can only pass a `string` as the value for `name`, and no other type. 

If we were to pass a different type we would get an error::

```ts
hello(123);
// error TS2345: Argument of type 'number' is not assignable to parameter of type 'string'.
```

In the following insights we will go over the possible data types and how to use them.

---
## Practice

Which file do you think will compile without errors?

```ts
// A.ts
let username: string = 'Zamolxis';

// B.ts
let username: string = 100;
```

???

* A
* B