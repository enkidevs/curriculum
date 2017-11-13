# NaN === NaN?
author: jordanfish

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

---
## Content

`NaN` is not equal to itself.
```
NaN === NaN; //false
```
In order to check for a `NaN` result, use the `isNaN` function:
```
isNaN("Enki"); //true
```

---
## Practice

What does the following code snippet return?
```
NaN === NaN
```
???

* false
* true
* undefined
* syntax error

---
## Revision

`NaN === NaN` is ???
* false
* true

---
## Quiz

headline: is NaN equal to itself?

question: |
  // What would the following expression evaluate to?
  NaN === NaN

answers:
  - false
  - true
  - SyntaxError
  - NaN
