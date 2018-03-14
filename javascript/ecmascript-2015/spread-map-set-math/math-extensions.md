---
author: alexjmackey

levels:

  - beginner

type: normal

category: must-know


links:

  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-math-additions-in-depth){website}'

inAlgoPool:

---

# Math Extensions

---
## Content

In ES6 the *Math* object has been expanded with a lot of functionality. Many of the additions have very specific use cases so let's discuss those more likely to be used in every day development. 

**Math.trunc**

*Math.trunc* will drop any numbers after the decimal point whether the number is positive or negative.

```
Math.trunc(1.2343); //1
Math.trunc(-3242.34); //-3242
```

**Math.cbrt**

Math.cbrt returns the cube root of a number:

```
Math.cbrt(81); //4.326748710922225
```

**Math.sign**

Math.sign returns a value that represents whether a number is positive (1), negative (-1), positve zero (0), negative zero (-0) and NaN:

```
Math.sign(1); //1
Math.sign(-1); //-1
```

