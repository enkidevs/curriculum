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

# Null

---

## Content

`null` is used to represent a deliberate absence of a value:

```js
let myNullValue = null;
```

Unlike `undefined`, which JavaScript automatically assigns as the value wherever a value is missing, `null` is a special value that the programmer can use to explicitly say that something is defined but holds no value. 

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

