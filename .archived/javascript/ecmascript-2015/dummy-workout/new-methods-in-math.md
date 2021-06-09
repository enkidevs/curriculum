---
author: rosielowther
levels:
  - basic
  - advanced
  - medium
type: normal
category: must-know
links:
  - >-
    [www.2ality.com](http://www.2ality.com/2015/04/numbers-math-es6.html){website}
  - '[github.com](https://github.com/lukehoban/es6features#arrows){website}'
  - >-
    [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# New methods in `Math`


---

## Content

ES6 introduces several methods to `Math`, for example:

`.sign(n)` returns the sign of `n` as -1 or +1. `n` is returned if `n` is NaN or zero.

    Math.sign(-Infinity); // -1
    Math.sign(0); // 0
    Math.sign(NaN); // NaN

`.trunc(n)` removes the decimal fraction of `n`.

    Math.trunc(-2.4); // -2

`.log2(n)` finds the logarithm to base 2 of `n`.

    Math.log2(16); // 4

**Bitwise operations**, e.g. `.clz32(int)` counts the leading zero bits in the 32 bit integer `int`.

**Trigonometric methods**, e.g. `.acosh(n)` finds the inverse hyperbolic cosine of n.


---

## Practice

What does the following line of code return?

    Math.sign(Infinity);
    // ???

- 1
- 0
- -1
- NaN
- Math error


---

## Revision

What's the result of the following operation:

```javascript

Math.trunc(-8.2);

```

???

- -8
- 8
- -2
- 2
- -9
- 9
 
