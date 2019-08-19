---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

aspects:
  - introduction
  - new
  - workout

inAlgoPool: false

links:
  - '[MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number){website}'

---
# Number Extensions (Part 2)

---
## Content

### Number.EPSILON

`Number.EPSILON` is the smallest value less than 1 that can be represented as a number and is intended for advanced uses such as testing equality:

```javascript
Number.EPSILON;
//2.220446049250313e-16
```

### Number.isSafeInteger

To be considered a safe integer numbers must be able to be represented in a format called *IEEE-754* and cannot be the result of rounding any other IEEE-754 number. There are some numbers that fall outside of what can be represented using IEEE-754:

```javascript
Number.isSafeInteger(3); //true
var unsafe = Math.pow(2, 53);
Number.isSafeInteger(unsafe); //false
```

### Number.MIN_SAFE_INTEGER and Number.MAX_SAFE_INTEGER

*IEEE-754* can represent a limited range of numbers. This range can be retrieved using `Number.MIN_SAFE_INTEGER` and `Number.MAX_SAFE_INTEGER`:

```javascript
Number.MIN_SAFE_INTEGER; //-9007199254740991
Number.MAX_SAFE_INTEGER; //9007199254740991
```

---
## Practice

Fill in the gaps with the `Number` constants' names:

Smallest value, smaller than `1` and bigger than `0` that can be represented as a number:

```javascript
Number.???
// 2.220446049250313e-16
```

Smallest and biggest IEEE-754 numbers:

```javascript
Number.???
//-9007199254740991
Number.???
//9007199254740991
```

* EPSILON
* MIN_SAFE_INTEGER
* MAX_SAFE_INTEGER
* E
* MIN_INTEGER
* MAX_INTEGER
* MIN_IEEE_INTEGER
* MAX_IEEE_INTEGER

---
## Revision

How do you check if a number can be represented in IEEE-754 format?

```javascript
Number.???(
  Math.pow(2, 53)
  )
```

* isSafeInteger
* MIN_SAFE_INTEGER
* EPSILON
* isSafe
* isIeee
* isValid
* isFinite
* isInteger
