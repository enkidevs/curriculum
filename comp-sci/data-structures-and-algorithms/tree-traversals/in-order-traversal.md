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

  - workout

parent: pre-order-traversal

---

# In-order Traversal

---
## Content

**In-order traversal** is a type of *depth-first traversal* in which the *root* of the tree is visited after the left child and before the right child. It only makes sense for *binary trees*.

It works like this:
- Traverse the *left subtree *recursively.
- *Modify/Display* the data of the current node (starting with the root).
- Traverse the *right subtree* recursively.

For the same tree:

![traversalex](https://img.enkipro.com/a60c49e26c0b710b7fd170527d2adf93.png)


*In-order traversal* will visit nodes in the following order:

![inorder](https://img.enkipro.com/9a551ec21baec6ae9651535be19ad38b.png)

With the output:
```
D, C, B, E, A, G, F, H
```

The pseudocode for the recursive method is:
```
inorder(node)
  if (node = null)
    return
  inorder(node.left)
  doSomething(node)
  inorder(node.right)
```

---
## Practice

Chose the sequence that simulates an in-order traversal of the tree:
```
      A
    /   \
   B     C
     \    \
      F    E
```
???

* B,F,A,C,E
* F,B,E,C,A
* A,B,F,C,E
* B,F,A,E,C

---
## Revision

Chose the sequence that simulates an in-order traversal of the tree:
```
      A
    /   \
   B     C
 /   \    \
G      F    E
  \        /
  H       I
```
???

* G,H,B,F,A,C,I,E
* F,B,E,C,A,H,I,G
* A,B,F,C,E,G,I,H
* B,F,A,E,C,G,H,I

---
## Quiz
### which tree traversal is to be use in the following scenario?

Given a binary search tree (BST), which traversal would print
its nodes in ascending order?


 ???

* In-order traversal
* Breadth first traversal
* Depth first traversal
* Post-order traversal

