---
author: alexjmackey

levels:
  - beginner

type: normal

category: must-know

aspects:
  - introduction
  - workout

inAlgoPool: false

links:
  - '[ponyfoo.com](https://ponyfoo.com/articles/es6-math-additions-in-depth){website}'


---
# Math Extensions

---
## Content

Since its creation, the `Math` object has been expanded to provide a great deal of functionality. Although many of the additions have very specific use cases, for this insight we will take a look at those that you are more likely to use in every day development.

### Math.trunc

`Math.trunc` will drop any numbers after the decimal point whether the number is positive or negative.

```javascript
Math.trunc(1.2343); //1
Math.trunc(-3242.34); //-3242
```

### Math.cbrt

`Math.cbrt` returns the cube root of a number:

```javascript
Math.cbrt(27); //3
```

### Math.sign

`Math.sign` returns a value that represents whether a number is positive (1), negative (-1), positive zero (0), negative zero (-0) and NaN:

```javascript
Math.sign(1); //1
Math.sign(-1); //-1
```

---
## Practice

What will the following function calls return?

```javascript
console.log(Math.cbrt(27));
// ???

console.log(Math.sign(-22));
// ???

console.log(Math.trunc(4.522));
// ???
```

* 3
* -1
* 4
* 1
* 9
* 7
* 8
* 2
* -2
* -22

---
## Revision

What `Math` method can be used to find the cubic root of a number?

`Math.???`

* cbrt
* cubicRoot
* cbRoot
* cubicrt
 
