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

parent: tree-traversals

---

# Depth-first Traversal

---
## Content

**Depth-first traversal** (also known as *Depth-first search* or *DFS*) represents the tree traversal in which the left node's grandchildren are prioritized over the right nodes.

Let's consider the following tree:

![treeex](https://img.enkipro.com/857d47ddc50f5dfa0e2947ab092854df.png)

Following DFS pattern, the order in which the nodes are visited is:

![traversal](https://img.enkipro.com/8cbe39d23bafa7a3d22e602e248a7132.png)

Which yields the sequence:
```text
A, B, C, D, E, F, G, H
```

A full traversal of the tree takes  *O(n)* time and *O(n)* space, where *n* is the number of nodes. We can say the traversal is a *linear* function.

---
## Revision

Which node will be prioritized after *B* in a depth-first traversal?
```
         A
       /   \
      B     C
    /   \
   D     E
```
???

* D
* E
* A
* C


