---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Introduction to Interfaces

---
## Content

In TypeScript, the shape that represents a collection of key-value pairs is an object.

One way to declare a type of an object is with `{}`:

```ts
function f(companyObj: { name: string }) {
  console.log(companyObj.name);
}
const someObject = {
  name: "Enki"
};
f(someObject);
```

It won't care about the order of the properties or if any additional ones exist.

If we wanted to reuse the type of `companyObj` at multiple places in our program, we can extract it into an interface:

```ts
interface Company {
  name: string;
}

function f(companyObj: Company) {
  // ...
}

function g(otherCompanyObj: Company) {
  // ...
}
```
Now both `f` and `g` expect the same shape as their argument.

Besides allowing us to define the shape of an object, interfaces let us declare properties as optional or read only:

```ts
interface Enki {
  // an optional comment
  comment?: string;
  // a read only url
  readonly url: string;
}

let e: Enki = {
  // we are only adding the url
  // no need to add a comment
  // because it's optional
  url: 'enki.com'
}

// cannot write to a readonly url
e.url = 'notallowed.com'; // Cannot assign to 'url' because it is a read-only property.
```

---
## Practice

Create an interface for the object:

```ts
const myObject = {
  name: 'foobar',
  isTrue: false
}

??? MyInterface {
  name: ???;
  isTrue: ???;
}
```

* interface
* string
* boolean
* 'foobar'
* false
* number
* Interface

---
## Revision

Will the following code cause an error?

```ts
interface Enki {
  note?: string,
}

let e: Enki = {};
```

???

* No
* Yes
