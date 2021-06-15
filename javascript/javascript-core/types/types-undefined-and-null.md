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

# Undefined and Null


---

## Content

### Undefined

When a variable is created without being assigned a value, its value is `undefined`. We can test this by using the `typeof` operator which returns the data type of the given variable.


```js
let life_goals;
console.log(typeof life_goals); // undefined
```

The way to think of `undefined` is as the default value assigned to anything without an assigned value.

### Null

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

