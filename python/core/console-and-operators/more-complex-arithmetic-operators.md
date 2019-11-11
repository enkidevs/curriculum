---
author: tommarshall

tags:

  - introduction

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false
aspects:
  - introduction
standards:
  python.native-types-operations.2: 10

links: 
  
  - '[Operator Precedence in Python](https://docs.python.org/3/reference/expressions.html#operator-precedence){documentation}'


---

# More Complex Arithmetic Operators

---
## Content

Python supports the `**` arithmetic operator, which multiplies a number to the power of another.

Example 1:
```python
>>> 2 ** 4
16
```
This code executes as 2 to the power of 4.

Example 2:
```python
>>> -3 ** 4
# This is executed as
# -(3 ** 4) which results in:
-81
>>> 2 ** -2
0.25
```

The first expression executes as `-(3 ** 4)` and the second one as `2 ** (-2)`. Even though the precedence of operators `-` and `+` is higher than that of the exponentiation operator `**`, the operator `**` binds less tightly than the operator on its right and more tightly than the operator on its left. Thus, the unary operator `-` of `-3` is executed on the result of the expression `3 ** 4`.

Python also supports the modulo operator, `%`, which is used to return the integer remainder of a division sum.

Here's this operator in use:
```python
>>> 14 % 3
2
```
14 divided by 3 equals 4 remainder 2. The modulo operator returns the remainder, 2.

---
## Practice

Complete the following code snippet to execute 3 to the power of 4:

```
3 ??? 4
```
 
* `**`
* `*`
* ` ***`
* `^`

---
## Revision

What does the following code snippet return:

```
11 % 4
```
???

* `3`
* `2`
* `7`
* `2.5`
* `4.66`
