# the-heap-data-structure
author: jfarmer

levels:
	- basic

type: normal

category: must-know

---
## Content

A *heap* is tree-based data structure designed to support a constant-time `find-max` (or `find-min`) operation in addition to efficient insertion of new elements and efficient removal of the maximum (or minimum) element.  They are frequently used to implement priority queues, where the highest-priority item in the queue is the first to be removed rather than the oldest item in the queue.

A heap that supports the `find-max` operation is called a *max heap* while a heap that supports a `find-min` operation is called a *min heap*.   The values in a heap are often called *keys* and must satisfy what is known as the *heap property*. For a max heap, the heap property is this: the keys of parent nodes are always greater than or equal to those of the children and the highest key is in the root node.  For a min heap, replace "greater than" with "less than" and "highest key" with "lowest key".

A common implementation of a heap is a *binary heap*, in which the trees are all complete binary trees.  *Complete* means that every level of the tree is filled, except possibly the last level.  Here is a picture of a max heap as a complete binary tree:

```text
        100
     /       \
    19       36
   /  \     /  \
  17   3   25   1
 /  \
2    7
```

Finding the maximum element is easy — it's the root node — but storing the information in a tree with the heap property allows for `O(log n)`-time insertion and removal. We'll see how shortly.

If we were to store the same information in a sorted list we could have constant time `find-max` and constant-time removal, but only `O(n)`-time insertion.


---
## Practice

What is the average insertion time in a *heap*?

???
*O(log n)
*O(n)
*O(log log n)
*O(sqrt(n))

---
## Revision

What operation should a *max heap* support?

???
*`find-max`
*`find-min`
*`sort`
*`get-min` 