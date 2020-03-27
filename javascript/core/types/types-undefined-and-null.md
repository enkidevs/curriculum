---
author: alexjmackey

type: normal

category: must-know

aspects:
  - introduction
  - workout
  - obscura

---

# Types - Undefined and Null

---
## Content

### `undefined`

A variable is of `undefined` type when it is created but not set to a value:

```js
let company;
typeof company; // undefined
```

Note that if the `typeof` operator is used on a variable that has never been defined it will also return `undefined`:

```js
typeof randomName; //undefined
```

### `null`

null is used to represent a deliberate absence of a value:

```js
let myNullValue = null;
```

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
// aren't the same
// type are not
// equal.
console.log(
  x === y // false
);
```

If you compare `null` and `undefined` you will find they are equal when using `==`:

```js
null  == undefined // true
```

But not equal when using `===`:

```
null === undefined // false
```

---
## Practice

Not initializing a variable sets its value to ???.


* undefined
* null
* the default one

---
## Revision

What will the following statement evaluate to?

```js
undefined == null
// ???
```

* true
* false
 
