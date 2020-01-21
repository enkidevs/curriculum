---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

aspects:

  - deep

  - obscura

parent: parsing-reverse-polish-notation

---

# Binary Expression Tree

---
## Content

**Binary expression tree** is a specific kind of binary tree that represents a algebraic (*2+3×5*) or boolean (*¬(q ∧ v)∧q*) expressions.

Each node of the tree will hence have zero, one or two children.

The BET of **(5×10+9)/(3-2)** is:

![bes](https://img.enkipro.com/26087fd410881f2a8fd2235b3a8f16f5.png)

The leaves of the tree are operands, while the internal nodes contain operators. If a node has one child, its value will either be unary minus operator (-7) or logical negation (¬).


In-order traversal[1] of the tree will return the infix notation. It is worth mentioning that each subtree should be enclosed in parentheses.

Pre-order traversal[2] will output the Polish notation, or prefix notation, of the expression, while the post-order traversal[3] will result in the Reverse Polish Notation, or postfix notation.

---
## Revision

The following binary expression tree evaluates to:
```
     ÷
   /   \
  +     -
 / \    |
3   9   3
```
???

* `-4`
* `4`
* `-3`
* `3`

---
## Footnotes
[1:In-order traversal]
Depth-first traversal in which the parent node is visited after the left child and before right child.

[2:Pre-order traversal]
Depth-first traversal in which the parent node is visited before visiting any of the children.

[3:Post-order traversal]
Depth-first traversal in which the parent node is visited after both children.

