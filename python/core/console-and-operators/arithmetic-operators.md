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

  - '[Python division](http://stackoverflow.com/questions/2958684/python-division){website}'


---

# Arithmetic Operators

---
## Content

Similar to other programming languages, Python allows the use of standard arithmetic operators.

The four standard operators perform addition, subtraction, multiplication and division. The operators are `+`, `-`, `*`, `/` respectively.

Here they are in use:

```python
>>> 210 + 32
# 242

>>> 6 - 43
# -37

>>> 9 * 8.12
# 73.08

>>> 62 / 9
# 6.888888888888889

```
In Python 3, using the division operator (`/`) will return a float[1]. 

If you want to perform floor division, use the `//` operator:

```py
>>> 62 // 9
# 6
```

When performing floor division with the `//` operator, you are effectively returning only the integer part with the digits after the decimal point being removed. 

---
## Practice

Choose the correct result of the following expression:

```python
>>> 1 + 2 - 3 + 4
```

???

* `4`
* `10`
* `124`
* `- 4`
* `TypeError`

---
## Revision

What are the outputs to the following lines of code?

```
25 // 6 ???
5 * 5.15 ???
```


* `4`
* `25.75`
* `5`
* `6`
* `3`
* `25`
* `26`

---
## Footnotes

[1:Floating Point Numbers]
Floats or floating point numbers represent real numbers and they are written with a decimal point that divides the integer and fractional parts. For example, 26.3 is a float while 26 is an integer.