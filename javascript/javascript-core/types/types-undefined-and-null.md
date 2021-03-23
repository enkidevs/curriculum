---
author: alexjmackey
type: normal
category: must-know
tags:
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Types - Undefined and Null


---

## Content

### `==` vs `===`

In JavaScript, there are two ways to check if two values are equal. 

Using `==` to compare two values will first force the values to have the same type before comparing them:

```js
// a number 2
let x = 2; 

// a string '2'
let y = '2';

// are equal when
// using == because
// they are both
// first converted
// to numbers before
// comparing
console.log(
  x == y // true
);
```

Using `===` will require us to match both the type and the value:

```js
// a number 2
let x = 2; 

// a string '2'
let y = '2';

// when using ===
// any values that
// have a different
// type are always
// not equal
console.log(
  x === y // false
);
```

### `undefined`

A variable has a value of `undefined` when it is created but not set to a value. The type of `undefined` is `"undefined"`:

```js
let company;
company === undefined; // true
typeof company; // "undefined"
```

Note that if the `typeof` operator is used on a variable that has never been defined it will also return `undefined`:

```js
typeof randomName; // undefined
```

The way to think of `undefined` is as the default value assigned to anything without an assigned value.

### `null`

`null` is used to represent a deliberate absence of a value:

```js
let myNullValue = null;
```

Unlike `undefined`, which JavaScript automatically assigns as the value wherever a value is missing, `null` is a special value that the programmer can use to explicitly say that something is defined but holds no value. More on this to come later.

If you compare `null` and `undefined` you will find they are equal when using `==`:

```js
null  == undefined // true
```

But not equal when using `===`:

```javascript
null === undefined // false
```


---

## Practice

Not initializing a variable sets its value to ???.

- undefined
- null
- the default one


---

## Revision

What will the following statement evaluate to?

```js
undefined == null
// ???
```

- true
- false
