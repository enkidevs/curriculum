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
# Number Extensions (Part 1)

---
## Content

The `Number` class benefits from many new methods saving you from writing your own potentially error prone-implementation. Because of the increased number of methods available, this insight will explain the ones you are more likely to use.

### Number.isFinite

Determines whether a number is finite (finite means that it could be measured or have a value).

```javascript
Number.isFinite(Infinity); //false
Number.isFinite(100); //true
```

### Number.isInteger

Determines if a number is an integer or not.

```javascript
Number.isInteger(1); // true
Number.isInteger(0.1); //false
```

### Number.isNaN

Before ES6 it was difficult to test if a value was equal to `NaN` (Not a number). This is because `NaN == NaN` evaluates to false.

Whilst a global `isNaN` function has existed in previous versions, it converts the given value to a number before checking if the given number is equal to `NaN`, making it hard to test if something is really `NaN`:

```javascript
isNaN("Enki") == true; //true
```

`Number.isNaN` allows you to easily test if a number really is `NaN`:

```javascript
Number.isNaN(1); //false
Number.isNaN(Number.NaN); //true
```

One reliable way[1] to check if a given string is a valid number is:

```js
const isNum = num =>
  num !== "" && Number(num) === Number(num);
```

---
## Practice

What is the output of the following two calls?

```javascript
const enki = "enki";

isNaN(enki);
Number.isNaN(enki);
// ???
```

* true, false
* false, true
* false, false
* true, true

---
## Revision

Complete the missing calls with methods such that all the statements are true:

```javascript

Number.???(5) // true
???.???(2.71) // false
Number.???(Number.NaN) // true
```

* isFinite
* Number
* isInteger
* isNaN
* isReal
* String
* isRatio
* NaN
* isNotNaN
 
---
## Footnotes

[1: Checking if a value is numerical]
It is worth noting the fact that `!Number.isNaN(<value>)` and `Number.parseFloat(<value>)` are not reliable ways of checking if a value is numerical or not. This is because `!Number.isNaN("")` evaluates to `true`, and while `Number.parseFloat("")` does evaluate to `NaN`, it fails on input like `"1.1.1"` and results in `1.1` as output.
