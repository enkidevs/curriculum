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

parent: inserting-data-into-a-heap-with-the-upheap-operation

---

# Removing Data From a Heap With The `downheap` Operation

---
## Content

Finding the maximum value in a max-heap (or the minimum value in a min-heap) is easy: it's stored in the root node. However, we also want to be able to remove the maximum.

Consider the following (binary) max-heap:

![downheap1](https://img.enkipro.com/51b37c3ec78747ce6943d78ca9cd8702.png)

Remember, that we need to maintain two properties of the tree to ensure we have a heap:

1. The tree is a *complete* binary tree
2. The parent node of a key is always greater than or equal to the key itself

To respect property (1), we move the key in the last position to the root position after we've removed the root.  In this case, we'd move the key `6` to the root node after removing `100`.  To respect property (2), as in the insertion case, we will move around nodes in the tree until the now-rearranged data is properly arranged.

So, after removing `100` and moving up `6`, the heap would look like this:

![downheap2](https://img.enkipro.com/22e481a197dce37aafdb1b045745bccb.png)

Again, the tree no longer satisfies property (2) — the heap property — since `6` is less than both its children.  To ensure that we respect the heap property, we compare `6` to its children.  If it is less than either of its children we swap it with the larger of the two children.  By swapping it with the *larger* of the two children we ensure that the key replacing `6` will be greater than both its children (and hence respect the heap property).

We continue doing this until `6` is in a position where it is greater than both its children.

This operation is sometimes called the `shift-down` or `downheap` operation.  Here's how it would look in this instance.

Since `6` is less than both `19` and `36`, we would swap `6` with `36`, the larger of the two children:

![downheap3](https://img.enkipro.com/b3dd9b807b6dfb97ef1198e753290d2e.png)

In this specific case we are done, but in general we might have to perform multiple such swaps until `6` is in the correct position.

---
## Practice

Which node should we move into the root position after removing the old one?
```
       ???
      /   \
    20      38
   /  \    /  \
  15  16   3   37
```

* `37`
* `38`
* `3`
* `15`
* `16`

---
## Revision

During `downheap` operation, if both the children of a node have larger keys than the parent's, we swap the parent with

???.

* the larger of the two children
* the smaller of the two children
* none, since it already respects the heap property


