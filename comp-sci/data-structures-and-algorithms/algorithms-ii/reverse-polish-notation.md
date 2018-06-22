---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to


links:

  - '[Prefix, Infix and Postfix notations](http://www.cs.man.ac.uk/~pjj/cs2121/fix.html){website}'

parent: trie-data-structure

---

# Reverse Polish Notation

---
## Content

**Reverse polish notation**, or *postfix notation*, is a mathematical notation in which the *operators* follow their *operands* (+, × etc. can be found on the right-hand side of their operands).
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

* 2 10 + 4 / 3 +
* 2 10 + 4 3 + /
* 4 + 3 / 2 + 10
* 2 10 4 3 + / +

---
## Revision

What is the infix equivalent notation of the reverse polish notation `4 3 + 10 ×`?

???

* (4+3)×10
* 4+3×10
* 10×4+3
* 10+3×4

---
## Quiz 
### What is the result of the following expression?

Evaluate the following expression written
using the reverse polish notation (postfix notation)

```bash
2 3 * 4 - 5 / 6 + 0.4 -
```

 ???

* 6
* 0
* 10.04
* 6.04
 
