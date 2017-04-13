# Reverse Polish Notation
author: mihaiberq

levels:

  - basic

type: normal

category: how to

---
## Content

**Reverse polish notation**, or *postfix notation*, is a mathematical notation in which the *operators* follow their *operands* (+, × etc. can be found on the right side of their operands).
```
// Infix notation
(2+5)×3
// Polish notation - PN
(2+5) -> + 2 5
(2+5)×3 -> × + 2 5 3
// Reverse polish notation - RPN
(2+5) -> 2 5 +
(2+5)×3 -> 2 5 + 3 ×
```
An advantage of RPN is that it doesn't need parentheses required by the *infix notation*:
```
// 5+(4×3)
5 4 3 × +

// (5+4)×3
5 4 + 3 ×
```

---
## Practice

What is the reverse polish notation equivalent of `(2+10)/4+3`?

???
*2 10 + 4 / 3 +
*2 10 + 4 3 + /
*4 + 3 / 2 + 10
*2 10 4 3 + / +

---
## Revision

What is the infix equivalent notation of the reverse polish notation `4 3 + 10 ×`?

???
*(4+3)×10
*4+3×10
*10×4+3
*10+3×4
