---
author: rosielowther
levels:
  - basic
  - advanced
  - medium
type: normal
category: tip
links:
  - >-
    [www.2ality.com](http://www.2ality.com/2015/04/numbers-math-es6.html){website}
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# ES6 `Number` methods


---

## Content

ES6 introduces several methods to `Number`.

The method `.isFinite()` is false if the number is +/- infinity or NaN.

    Number.isFinite(Infinity) //false
    Number.isFinite(10) // true
    Number.isFinite('10') // false

`.isNaN()` is true if the value of the number is NaN.

`.EPSILON` specifies a margin of error when comparing floating point values which can't be exactly represented e.g. decimal fractions.

`.isInteger(number)` returns true if `number` is an integer.

`.isSafeInteger(number)` returns true if `number` is in the range **−2^53 < i < 2^53**. The result of applying an integer operator is only guaranteed to be correct if **all** operands and the result are safe.


---

## Practice

What does the following JS code snippet return? ???

```javascript
console.log(Number.isFinite(Infinity));
console.log(Number.isFinite(0.01));
console.log((Number.isFinite('Enki!')));
```

- False, True, False
- True, True, False
- False, False, True
- True, False, False


---

## Revision

Check if a number is a **safe** integer using `Number`:

???

- isSafeInteger(number)
- isInteger(number)
- isFinite()
 
