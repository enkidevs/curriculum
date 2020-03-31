---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

tags:
  - introduction

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

Note that if the `typeof` operator is used on a variable that has never been defined it will also return as `undefined`:

```js
typeof randomName; 
// undefined
```

### null

`null` is used to represent a deliberate absence of a value:
```js
var myNullValue = null;
```

Confusingly, if you compare `null` and `undefined` you will find they are equal when using the standard equals comparison (this will convert types):

```js
null  == undefined 
// true
```
But when using strict comparison (this does not change types) they are not equal:

```js
null === undefined 
// false
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
 
