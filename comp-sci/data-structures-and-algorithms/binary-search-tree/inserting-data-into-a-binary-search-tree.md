---
author: jfarmer

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

parent: verifying-a-binary-search-tree

---

# Inserting Data Into a Binary Search Tree

---
## Content

To insert a new key into a BST, we traverse between the left and right children according to how the new key compares to the key at each node, and find the first empty leaf node where the new key fits.

The new key is first compared with that of the root.  If its key is less than the root's, it is then compared with the key of the root's left child. If its key is greater, it is compared with the root's right child. This process continues until the new node is compared with a leaf node, and then it is added as this node's child (left or right depending on how the new key compares).

Consider the following BST:

![i1](https://img.enkipro.com/7d6936b6e83091631f9eeb09c2d2ebe6.png)

Let's say we wanted to insert the key `4`.  To do so, the procedure would work as follows:

1. `4` is less than `8` so move on to the left child.
2. `4` is greater than `3`, so move on to the right child.
3. `4` is less than `6`, so move on to the left child.
4. Another check is necessary to verify if the node is empty, which it is: insert `4` as the left child of `6`.

The final result is a BST that looks like this:

![i2](https://img.enkipro.com/5d32d488258cf59c725595ba4baedde5.png)

## Order Dependence

You may have noticed that the shape of the BST depends on the order in which the data is inserted. For example, if the data were all inserted in ascending (or descending order), we would wind up with what essentially resembles a sorted linked list[1].

---
## Practice

How many checks are required to insert `9` in this BST?
```
       7
     /   \
    3    10
  /  \  /  \
 1   4  8   13
???
```

* `4`
* `2`
* `3`
* `1`
* `5`

---
## Revision

How many checks are required to insert `5` in this BST?
```
       6
     /   \
    3    10
  /     /  \
 2     9   20
???
```

* `3`
* `2`
* `5`
* `1`
* `4`

---
## Footnotes
[1: Worst-case scenario]
This refers to the case in which the tree's *height* (the distance between the root and the furthest away leaf from the root) is equal to the number of nodes in the tree. In this case, the operations that normally take `O(log n)` end up taking `O(n)`.

