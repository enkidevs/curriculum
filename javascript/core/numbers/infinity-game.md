# Infinity
author: adamMontgomerie

levels:

  - basic

  - beginner

  - medium

type: fillTheGap

category: tip

standards:
  js.data-types-structures.0: 1000
  js.standard-library.2: 1000
  js.evaluate-expressions.1: 1000 

---
## Content

Your goal is to determine what the console
will print out for each given value of `x`.

---
## Game Content

```
var x = 10/0;
console.log(x); //prints ???
```
* `Infinity`
* `0`
* `NaN`
%exp
Infinity is a positive numeric value.

It is displayed when the upper limit of the floating numbers is exceeded.

This limit is: 1.797693134862315E+308.
%
---
```
var x = Infinity - Infinity;
console.log(x); //prints ???
```
* `NaN`
* `0`
* `Infinity`
%exp
Infinity could be any number, so we can’t represent the result of `Infinity - Infinity` as a fixed value.
%
---
```
var x = -10/0;
console.log(x); //prints ???
```
* `-Infinity`
* `Infinity`
* `0`
%exp
There is also an option for a number to be infinitely small, which is represented by `-Infinity`.
%
---
```
var x = Infinity * 10;
console.log(x); //prints ???
```
* `Infinity`
* `NaN`
* `-Infinity`
%exp
Any fixed number multiplied by `Infinity` gives us infinity.
%
---
```
var x = 10/-0;
console.log(x); //prints ???
```
* `-Infinity`
* `Infinity`
* `NaN`
%exp
Dividing a positive number by a negative 0 results in a negative `Infinity`.
%
