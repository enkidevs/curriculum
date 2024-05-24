---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone



---

# Operator Precedence I

---

## Content

Operator precedence refers to **the rules that determine the order in which operators are evaluated** in an expression. 

|    Priority    |           Operators           |
|:--------------:|:-----------------------------:|
|     Highest    |               ^               |
|                |             `not`             |
|                |             * , /             |
|                |             + , -             |
|                |              ..               |
|                |   < , > , <=  , >= , ~= , ==  |
|                |             `and`             |
|     Lowest     |              `or`             |

For example, if we look at the expression `3 + x ^ 3 * 5`, using the rules of precedence, the **expression is equivalent to** `3 + ((x ^ 3) * 5)`. 

Without understanding precedence, any interpretations of any expressions will mostly be incorrect, such as `(3 + x) ^ (3 * 5)`.

---

## Practice

Given the expression `5 * 3 ^ 7 + 4`, which of the following options is equivalent to the given expression?

- `(5 * (3 ^ 7)) + 4`
- `(5 * (3 ^ 7 + 4))`
- `(5 * 3) ^ (7 + 4)`
- `((5 * 3) ^ 7) + 4`


---

## Revision

Given the expression `7 > 4 and 5 * 3 + 4`, which of the following options is equivalent to the given expression?

- `(7 > 4) and ((5 * 3) + 4)`
- `7 > (4 and ((5 * 3) + 4))`
- `(7 > ((4 and 5) * 3)) + 4`
- `(7 > 4) and (5 * (3 + 4))`
