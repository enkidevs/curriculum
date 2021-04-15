---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Operator
    Precedence](https://docs.python.org/3/reference/expressions.html#operator-precedence){documentation}
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

# Complex Operators


---

## Content

Python uses the exponent operator, `**`, to multiply a number *to the power* of another.

```bash
>>> 2 ** 4
# 16
```

This code executes 2 to the power of 4.

Here are some other examples:

```bash
>>> -3 ** 4
# -81
>>> 2 ** -2
# 0.25
```

As mentioned in the previous insight[1], the `**` operator is executed before the `-` in the first example, so the calculation is `-(3**4)`.

Python uses the modulus operator, `%`, to return the *remainder of a division*.

```bash
>>> 14 % 3
# 2
```

14 divided by 3 equals 4 remainder 2. The modulus operator returns this remainder 2.


---

## Practice

Complete the following code snippet to execute 3 to the power of 4:

```bash
3 ??? 4
```

- `**`
- `*`
- ` ***`
- `^`


---

## Revision

What does the following code snippet return:

```bash
11 % 4
```

```bash
???
```
- `3`
- `2`
- `7`
- `2.5`
- `4.66`


---

## Footnotes

[1: Order Of Operations]

| Operator            | Name                                              |
| ------------------- | ------------------------------------------------- |
| `()`                | Parenthesis                                       |
| `**`                | Exponent                                          |
| `*`, `/`, `//`, `%` | Multiplication, division, floor division, modulus |
| `+`, `-`            | Addition, subtraction                             |
