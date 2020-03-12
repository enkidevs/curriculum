---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

links:
  - '[ts-node](https://www.npmjs.com/package/ts-node){website}'

---

# Assigning Types

---
## Content

Assigning types is one of the main features of TypeScript. We have shown you how to do this in the previous examples, and now we can check the benefits of this.

```ts
function hello(who: string): void {
  console.log('Hello ' + who);
}
hello('Enki'); // Hello Enki
hello(5); // TypeError
```

But what we haven't showed you is how TypeScript can infer a variable's type:

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