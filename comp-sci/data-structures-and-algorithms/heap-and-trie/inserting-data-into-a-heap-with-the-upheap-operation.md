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

![upheap1](https://img.enkipro.com/5b33803aab36347394dd05d8c1af8aa3.png)

Remember, that we need to maintain two properties of the tree to ensure we have a heap:

1. The tree is a *complete* binary tree[1]
2. The parent node of a key is always greater than or equal to the key itself

To respect property (1), we will insert the new data in the correct spot.  To respect property (2), we will move around nodes in the tree after inserting the new data in the correct spot.

Let's say we want to insert the key `120`.  We would start by inserting it in the next available spot, like so:

![upheap2](https://img.enkipro.com/0980ef3705a44971cd1dc0b08aa8737c.png)

But now the tree no longer satisfies the property (2) — the heap property — since `120` is greater than `19`.  To ensure that we respect the heap property, we compare `120` to its parent and swap the two if `120` is greater.  We continue doing this until `120` is in the root position or is less than its parent node.

This operation is sometimes called the `shift-up` or `upheap` operation.  Here's how it would look in this instance

Since `120` is greater than `19`, we would swap the two:

![upheap3](https://img.enkipro.com/7c58cf45092b84206cd31840b25d9a5b.png)

However, `120` is still greater than `100`, so we must swap those two keys as well:

![upheap4](https://img.enkipro.com/9aaa289e8d3a5e0bf0206e9add5a90d7.png)

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

