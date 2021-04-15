---
author: emmab
tags:
  - introduction
type: normal
category: must-know
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

# Execution Order of Operators


---

## Content

When using more than one operator in Python, it's crucial to understand the *order* they'll be executed in.

What will be the result of the following expression?

```bash
>>> 2 + 9 * 4 / 3 - 5
# this expression is equivalent to:
# 2 + ((9*4)/3) - 5
# Result:
# 9.0
```

Here is the order of execution for Python's operators (highest to lowest):

| Operator            | Name                                              |
| ------------------- | ------------------------------------------------- |
| `()`                | Parenthesis                                       |
| `**`                | Exponent                                          |
| `*`, `/`, `//`, `%` | Multiplication, division, floor division, modulus |
| `+`, `-`            | Addition, subtraction                             |


---

## Practice

What’s the output of the following code:

```bash
2 + 7 * 2 // 8
```

???

- `3`
- `3.0`
- `2.0`
- `1`


---

## Revision

What’s the output of the following code:

```bash
4 + 3 * 9 // 6
```

???

- `8`
- `8.0`
- `6.0`
- `5`
- `7.0`
