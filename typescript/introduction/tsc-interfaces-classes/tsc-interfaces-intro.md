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

The main data type that you can use as a collection of values and behaviors is called an *object*.

```ts
function f(companyObj: { name: string }) {
  console.log(companyObj.name);
}
const someObject = {
  name: "Enki"
};
f(someObject);
```

The function will verify that `companyObj` has a property called `name` of type `string`. 

```ts
function f(companyObj: { name: string }) {
  console.log(companyObj.name);
}
const someObject = {
  name: "Enki",
  product: "EnkiApp" // ignored without an error
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

This is just a short introduction to interfaces, with future workouts going into more details.

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