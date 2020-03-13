---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Interfaces Intro

---
## Content

One of the most popular data types that you will is the object. We had a small run-in with the `object`, `Object`, and `{}` types, but never explained how you can pre-define an object.

```ts
function f(companyObj: { name: string }) {
  console.log(companyObj.name);
}
const someObject = {
  name: "Enki",
  product: "EnkiApp"
};
f(someObject);
```

The function will only check that the `name` argument exist, and if it does it continues running.

We can re-write this function using interfaces, to increase readability:

```ts
interface Company {
  name: string;
}

function f(companyObj: Company) {
  // ...
}
```

The order of the fields doesn't matter, as long as TypeScript can find the field it needs it will keep running. This is just a short introduction to interfaces, with the following mission going into more details.

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