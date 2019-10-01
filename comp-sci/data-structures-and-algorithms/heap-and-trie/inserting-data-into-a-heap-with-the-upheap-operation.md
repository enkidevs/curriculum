---
author: jfarmer

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

parent: the-heap-data-structure

---

# Inserting Data Into a Heap With The `upheap` Operation

---
## Content

How do we insert information into a heap efficiently? Consider the following (binary) max-heap:

![upheap1](https://img.enkipro.com/5bb8ebd40ba2ff3e8088cd3d2c7eeab1.png)

Remember, that we need to maintain two properties of the tree to ensure we have a heap:

1. The tree is a *complete* binary tree[1]
2. The parent node of a key is always greater than or equal to the key itself

To respect property (1), we will insert the new data in the correct spot.  To respect property (2), we will move around nodes in the tree after inserting the new data in the correct spot.

Let's say we want to insert the key `120`.  We would start by inserting it in the next available spot, like so:

![upheap2](https://img.enkipro.com/8acfb09a786c780a23833ac13f29f306.png)

But now the tree no longer satisfies the property (2) — the heap property — since `120` is greater than `19`.  To ensure that we respect the heap property, we compare `120` to its parent and swap the two if `120` is greater.  We continue doing this until `120` is in the root position or is less than its parent node.

This operation is sometimes called the `shift-up` or `upheap` operation.  Here's how it would look in this instance

Since `120` is greater than `19`, we would swap the two:

![upheap3](https://img.enkipro.com/559201c0277b263dab3b966c2a822cc5.png)

However, `120` is still greater than `100`, so we must swap those two keys as well:

![upheap4](https://img.enkipro.com/05f36b4209d198152d4e75b5275ad194.png)

The tree is now a heap again!

---
## Practice

Where will the next node be inserted in the heap?
```
        50
      /    \
    20      45
  /    \   /   \
 15    18  C    D
  A     B
???
```

* `C`
* `A`
* `B`
* `D`

---
## Revision

In a `max-heap`, during upheap operation, the child swaps places with its parent if its value

???.

* is larger than the parent's
* is smaller than the parent's
* is equal to the parent's
* is the smallest in the whole heap

---
## Footnotes
[1: Complete heap]
Complete means that every level of the underlying binary tree structure is filled, except possibly the last level.

