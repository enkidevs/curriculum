---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to

aspects:

  - deep

  - workout

  - obscura

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
(2 + 5) × 3
// Polish notation - PN
(2 + 5) -> + 2 5
(2 + 5) × 3 -> × + 2 5 3
// Reverse polish notation - RPN
(2 + 5) -> 2 5 +
(2 + 5) × 3 -> 2 5 + 3 ×
```

An advantage of Polish and Reverse-Polish notation is that it's easier to parse for a machine. RPN and PN don't need paranthesis to specify operator precedence.

For example, consider the infix expression with 2 arbitrary operators `1 $ 2 # 3`. Now, we don't know what those operators mean, so there are two possible corresponding postfix expressions: `1 2 $ 3 #` and `1 2 3 $ #`. Without knowing the rules governing the use of these operators, the infix expression is essentially worthless. But with PN or RPN, computation of an expression is independent of their precedence order. This is one of the reasons why Lisp uses prefix notation in expressions.

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

