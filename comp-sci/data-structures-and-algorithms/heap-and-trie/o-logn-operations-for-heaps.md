---
author: jfarmer
type: normal
category: must-know
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# How Do Binary Heaps Enable O(log(n)) Insertion and Removal?


---

## Content

For a binary max-heap (or min-heap), why do the insert and find-max (or find-min, respectively) operations only take O(log n) time?

There are three key factors:

1. The underlying binary tree is complete
2. Given a complete binary tree with n nodes the height of the tree is at most log(n)
3. The upheap and downheap operations perform one swap per level, so if the tree has height H we will perform at most H swaps

Together, these imply that we will perform O(log n) swaps when inserting a new key or removing the maximum key.


---

## Revision

For insertion to take O(log n) time, the underlying structure used to implement a heap is a ???

- complete binary tree
- binary tree
- complete graph
- stack
- tree
