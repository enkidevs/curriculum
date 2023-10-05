---
author: alexjmackey
type: normal
category: must-know
tags:
  - introduction
---

# Types - Introduction


---

## Content

JavaScript has the following primitive[1] types:

- `undefined`
- `null`
- `boolean`
- `number`
- `string`
- `symbol`

The main non-primitive type is `Object`.

There are also a few special types - `Array`, `Date`, `RegExp` - that are types of `Object` but included out of the box.

### typeof

You can check the type of a value by using the `typeof` operator e.g.

```javascript
let company = "enki";
typeof company; // "string"
```


---

## Footnotes

[1: primitive]
A primitive is a fundamental data type that cannot be broken down into a more simple data type. For example, a number, as seen below, is a primitive data type.

```js
let x = 2
```

A non-primitive is a data type that can store multiple different types of data, like an array:

```js
let fruits = ['Apple', 'Banana']
```
