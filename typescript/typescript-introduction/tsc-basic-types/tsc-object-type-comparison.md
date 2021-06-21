---
author: nem035
type: normal
category: must-know
links:
  - >-
    [object
    Type](https://www.typescriptlang.org/docs/handbook/basic-types.html#object){documentation}
  - >-
    [Play with object
    types](https://repl.it/@enkicontent/TypeScriptPlayWithObjectTypes){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `{}` vs `object` vs `Object`

---

## Content

TypeScript has 3 ways to represent an object with slightly different behaviors.

> 💡 An object can be thought of as a collection of name value pairs

### `{}`

The type `{}` is used to represent an object with a specific shape.

```ts
let empty: {} = {};

const Enki: {
  job: string;
  isFun: boolean;
} = {
  job: "teach",
  isFun: true,
};
```

Assigning values that aren't part of the shape will cause errors:

```ts
empty.name = "oops";
// error: Property 'name' does not exist on type '{}'
Enki.age = 5;
// error: Property 'age' does not exist on type '{ job: string; isFun: boolean; }'
```

### `object`

The type `object` is used to represent any non-primitive[1] value (any collection of values):

```ts
// an object is an "object"
let obj: object = { enki: true };
// an array is an "object"
let arr: object = [1, 2, 3];
// a map is an "object"
let map: object = new Map([
  ["enki", "cool"]
]);
// ...
// primitive values aren't an "object"
let str: object = "enki"; // error
let num: object = 3; // error
let n: object = null; // error
let u: object = undefined; // error
```

### `Object`

The `Object` type is less useful than the other two because it often leads to confusion.

Usually by *"object"* we mean a collection of named values (e.g. map, set, array, plain object), but not a single value (e.g. number, string, etc.).

However, the `Object` type can be used to represent any type that is considered to contain a value[2]:

```ts
// almost anything is an "Object"
let num: Object = 3;
let bool: Object = false;
let str: Object = "enki";
let arr: Object = [1, 2, 3];
// ...
// only null and undefined
// give an error
let n: Object = null; // error
let u: Object = undefined; // error
```

---

## Practice

Which statement will throw an error?

```ts
const a: Object = {
  enki: "fun",
};

const b: object = {
  enki: "fun",
};

const c: { enki: string } = {
  enki: "fun",
};
```

???

- None of them
- b
- a
- c

---

## Revision

Which statement will throw an error?

```ts
const a: Object = 5;

const b: object = 5;

const c: object = { enki: true };

const d: Object = { enki: true };
```

???

- b
- a
- c
- d

---

## Footnotes

[1:Primitive Values]
The following types are considered to be primitive:

- `number`
- `string`
- `boolean`
- `bigint`
- `symbol`
- `null`
- `undefined`

[2:Most JS values are Objects]
All built-in values besides `null` and `undefined` are a form of object in JavaScript.

A quick test to verify if something is an object is to try and access a property on it and see if it errors.

```js
// use anything as x
x = // anything
// if this throws, then
// x is not an object
(x).enki;
```

For example, these values are all objects:

```js
(3).enki // undefined
('enki').enki // undefined
({ enki: 1 }).enki // 1
```

Only these throw an error:

```js
(undefined).enki // Uncaught TypeError: Cannot read property 'property' of undefined
(null).enki // Uncaught TypeError: Cannot read property 'property' of null
```
