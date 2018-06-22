---
author: mihaiberq

levels:
  - beginner
  - basic

type: normal

category: must-know

stub: true

tags:
  - workout
  - deep

aspects:
  - workout
  - deep

---
# Type Inheritance

---
## Content

Boolean values in Python are represented by two objects - `True` and `False`, used to represent truth values. However, in numerical contexts they behave like integers with values `0` and `1` , respectively. Basically, the `bool`  type is a Numeric type,  a subtype of integers.

The reason for this is that prior to introducing an actual `bool` type, truth values were represented only by integers `1`  and `0` , similar to `C89` version of C language. To make old code  backwards compatible, `bool` needed to work just like numeric types and a decision was made to be a subtype of `int`.

---
## Quiz 

### what are booleans instances of?

What will the following code snippet print?
x = True
print(isinstance(x, int))

* True
* False
* "NameError: name 'x' is not defined"
* Numeric
 