---
author: catalin
type: normal
category: caveats
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Inaccuracy of Binary Floating-Point Format


---

## Content

**JavaScript** has only one data type for representing numbers - binary floating-point format.

Taking into consideration that binary floating-point format have several *`inaccuracies`*, you must be aware of some implications that may break your code.

For example:

```javascript
console.log(.1 + .2);
```

will print `0.30000000000000004` instead of `0.3`. This happens because `0.1` is an *`inaccuracy`* - it can not be represented in binary (just the same way we can't represent `1/3` in decimal).

This proves a nuisance especially at comparisons:

```javascript
console.log((.1 + .2) == .3); //false
```

It is advised to avoid comparisons between floating point numbers. Instead, consider subtracting the numbers and compare it to an epsilon:

```javascript
eql = Math.abs((.1 + .2) - .3) < .0000001;
```


---

## Practice

The output of the following snippet is ???

```javascript
console.log((1.3 + 2.3) == 3.6);
```

- false
- true


---

## Revision

Instead of comparing two floating numbers, the best way to avoid *inaccuracies* is to ??? the numbers and compare the result to ???.

- substract
- third expected value
- sum


---

## Quiz

### what is 0.1 + 0.2?


What will be the value of x?

```javascript
var x = 0.2 + 0.1;
console.log(x);
```

 ???

- 0.30000000000000004
- 0.3
- 0.2999999999999999
- NaN
 
