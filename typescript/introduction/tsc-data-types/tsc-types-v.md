---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# `Object` vs `object`

---
## Content

One common source of confusion is the difference between the `object` and the `Object` type.

The `Object` type represents an object that you would see in Javascript:

```js
let someObject = {
  a: 1,
  b: 2
};

typeof someObject;
// "object"
```

Defining a variable of type `Object` will mean that any functionality present in JavaScript will be applicable to said variable. For example, you can use the `toString`, `toLocaleString`, and all the other methods available.

There will be cases when the data that you receive or use does not fit any of the previously mentioned types (primitive types):

```ts
type Primitives = 
  | number
  | string
  | boolean
  | void
  | null
  | undefined
  | any
```

In these situations, the `object` type is used. Using this type, some APIs like `Object.create` can be better represented. For example, passing any type other than `object` or `null` to `Object.create` will result in a type error:

```js
Object.create({a: 1}); // Ok
Object.create(null); // Ok

Object.create(120); // Error
Object.create('Enki'); // Error
```

---
## Practice

Which of the following is the correct way of using `Object.create()`?

```js
// a
Object.create('object');

// b
Object.create(['object']);

// c
Object.create({object: 1});
```

???

* c
* a
* b

---
## Revision

In TypeScript, is `object` the same as `Object`?

???

* No.
* Yes.