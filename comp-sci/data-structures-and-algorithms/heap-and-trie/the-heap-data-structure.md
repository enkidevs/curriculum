---
author: jfarmer
type: normal
category: must-know
links:
  - >-
    [The heap data
    structure](https://www.geeksforgeeks.org/heap-data-structure/){website}
  - >-
    [Binary
    Heap](https://www.cs.cmu.edu/~rdriley/121/notes/heaps.html#3-binary-heap){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The Heap Data Structure


---

## Content

A *heap* is a tree-based data structure designed to support a constant-time `find-max` (or `find-min`) operation and the efficient insertion of new elements and efficient removal of the maximum (or minimum) element. In addition, they are frequently used to implement priority queues, where the elements are ordered by priority (or some other factor) rather than their insertion order.

A heap that supports the `find-max` operation is called a *max heap* while a heap that supports a `find-min` operation is called a *min heap*. The values in a heap are often called *keys* and must satisfy what is known as the *heap property*: for a max heap, the keys of parent nodes are always greater than or equal to those of the children and the highest key is in the root node. For a min heap, replace "greater than" with "less than" and "highest key" with "lowest key".

A common implementation of a heap is a *binary heap*, in which the trees are all complete binary trees. *Complete* means that every level of the tree is filled, except possibly the last level.  Here is a picture of a max heap as a complete binary tree:

![heapds](https://img.enkipro.com/5298558ee2aa4b08af53ccc6e264e4ba.png)

Finding the maximum element is easy — it's the root node — but storing the information in a tree with the heap property allows for `O(log n)`-time insertion and removal. We'll see how shortly.

If we were to store the same information in a sorted list we could have constant time `find-max` and constant-time removal[1], but `O(n)`-time insertion.


---

## Practice

What is the average insertion time in a *binary heap*?

???

- O(log n)
- O(n)
- O(log log n)
- O(sqrt(n))


---

## Revision

What operation should a *max heap* support?

???

- `find-max`
- `find-min`
- `sort`
- `get-min`


---

## Footnotes

[1:Constant time removal]

As heaps are data structures for which the minimal or maximal element is prioritized, constant-time removal refers to the removal of this particular element (which we can access in constant-time through the `find-max`/`find-min` functions).

Because of this property, priority queues are often implemented using heaps.
