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

parent: depth-first-traversal

---

# Pre-order Traversal

---
## Content

**Pre-order traversal** is a type of *depth-first traversal* in which the visiting order is: root, left child, right child. It only makes sense for **binary trees**.

It works like this:
- *Modify/Display* the data of the current node (starting with the root).
- Traverse the *left subtree* recursively.
- Traverse the *right subtree* recursively.

For the tree below:

![traversalex](https://img.enkipro.com/b89d02d48040cb7701617076c2d44eb1.png)

*Pre-order traversal* will visit nodes in the following order:

![preorder](https://img.enkipro.com/00214d9486ea9a90f3b845ca93422d91.png)

With the output:
```text
A, B, C, D, E, F, G, H
```

The pseudocode for the recursive method is:
```
preorder(node)
  if (node = null)
    return
  doSomething(node)
  preorder(node.left)
  preorder(node.right)
```

---
## Practice

Chose the sequence that simulates a pre-order traversal of the tree:
```
      A
    /   \
   B     C
 /   \    \
D     F    E
```
???

* `A,B,D,F,C,E`
* `D,B,F,A,C,E`
* `D,F,B,E,C,A`
* `A,B,C,D,E,F`

---
## Revision

Chose the sequence that simulates a pre-order traversal of the tree:
```
      A
    /   \
   B     C
 /   \     \
D     F     E
```
???

* `A,B,D,F,C,E`
* `D,B,F,A,C,E`
* `D,F,B,E,C,A`
* `A,B,C,D,F,E`


