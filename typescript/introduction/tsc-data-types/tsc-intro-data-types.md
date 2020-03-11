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

A data type is defined by the values it can take and the operations that can be performed on it and . For example, `number` is a data type.

In TypeScript, as the name already suggests, data types are a big deal. Let's take a look at the `hello.ts` file we wrote in the first workout:

```ts
// hello.ts
const hello = (name: string) => {
  console.log(`Hello ${name}!`)
}

let myName = 'Andrei';
hello(myName);
```

Notice that when writing the arguments of the `hello` function, we wrote `name: string`. This means that you can only pass `strings` as arguments, and no other type. If we were to change `myName` to a different type:

```ts
let myName = 120;
```

When compiling the code, TypeScript will throw the following error:

```
error TS2345: Argument of type 'number' is not assignable to parameter of type 'string'.
```

In the following insights we will go over the possible data types and how to use them.

---
## Practice

Which file do you think will compile?

```ts
// A.ts
let username: string = 'Zamolxis';

// B.ts
let username: string = 100;
```

???

* A
* B