---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Python
    division](http://stackoverflow.com/questions/2958684/python-division){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Arithmetic Operators


---

## Content

Similar to other programming languages, Python uses standard arithmetic operators.

The four standard operators are `+`, `-`, `*` and `/`. These allow us to add, subtract, multiply and divide.

Here they are in use:

```bash
>>> 210 + 32
# 242

>>> 6 - 43
# -37

>>> 9 * 8.12
# 73.08

>>> 62 / 9
# 6.888888888888889
```

In Python 3, using the division operator `/` will always return a `float`. And whenever you use a `float` in your calculation, a `float` will be returned, even if the number is a whole number ending in `.0`.

If you want to perform floor division to return an `int`, use the `//` operator:

```bash
>>> 62 // 9
# 6
```

When using the `//` operator, you only return the whole number part of the division. Digits after the decimal point are removed.


---

## Practice

Choose the correct result of the following expression:

```bash
>>> 13 // 3 
# ???
>>> 4.5 + 4.5 
# ???
```

- `4`
- `9.0`
- `9`
- `4.0`
- `TypeError`


---

## Revision

What are the outputs to the following lines of code?

```bash
>>> 25 // 6 
# ???
>>> 5 * 5.15 
# ???
```

- `4`
- `25.75`
- `5`
- `6`
- `3`
- `25`
- `26`
