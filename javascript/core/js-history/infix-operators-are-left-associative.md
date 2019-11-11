---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

standards:

  javascript.javascript-syntax.2: 10

  javascript.write-expressions.0: 10

  javascript.evaluate-expressions.0: 10

tags:

  - operators

  - infix-operators

  - operator-associativity

aspects:
  - obscura


links:

  - '[learnxinyminutes.com](http://learnxinyminutes.com/docs/javascript/){website}'
  - '[developer.mozilla.org](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence){website}'




---

# Infix operators are left-associative

---
## Content

Operator associativity determines the order in which operators of the same type are evaluated.

Operations are processed from the left-hand side of an equation:
```
var x = a - b - c;
```
The example is evaluated in the following way:
```
var x = (a - b) - c;
```

These parentheses can be safely omitted without affecting the outcome of the equation. However, if you wish to evaluate the right-hand side of the equation first, then parentheses must be used:

```
var x = a - (b - c);
```

---
## Practice

What does the following JS code output? ???

```javascript
var a = 20;
var b = 4;
var c = 12;

var x = a - (-b * c);
console.log(x);
```


* 68
* -28
* 192
* 0
* undefined
* -68
* -192

---
## Revision

The processing of operations starts with ??? operator if no brackets are used.


* left-most
* right-most
* middle
 
