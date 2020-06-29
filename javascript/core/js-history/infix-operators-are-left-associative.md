---
author: adamMontgomerie
type: normal
category: tip
links:
  - >-
    [learnxinyminutes.com](http://learnxinyminutes.com/docs/javascript/){website}
  - >-
    [developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence){website}
---

# Infix operators are left-associative


---

## Content

Operator associativity determines the order in which operators of the same type are evaluated.

Operations are processed from the left-hand side of an equation:

```plain-text
let x = a - b - c;
```

The example is evaluated in the following way:

```plain-text
let x = (a - b) - c;
```

These parentheses can be safely omitted without affecting the outcome of the equation. However, if you wish to evaluate the right-hand side of the equation first, then parentheses must be used:

```plain-text
let x = a - (b - c);
```


---

## Practice

What does the following JS code output? ???

```plain-text
let a = 20;
let b = 4;
let c = 12;

let x = a - (-b * c);
console.log(x);
```

- 68
- -28
- 192
- 0
- undefined
- -68
- -192


---

## Revision

The processing of operations starts with the ??? operator if no parentheses are used.

- left-most
- right-most
- middle
