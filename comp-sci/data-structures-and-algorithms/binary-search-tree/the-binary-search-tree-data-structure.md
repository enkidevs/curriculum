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

links:

  - '[Binary Search Trees](http://algs4.cs.princeton.edu/32bst/){website}'

parent: post-order-traversal

---

# The Binary Search Tree Data Structure

---
## Content

A *binary search tree* (or BST) is a tree-based data structure designed for efficient insertion, deletion, and searching. BSTs are in many ways the most important search-optimized data structure — although the most basic version of BST described here is rarely used in practice, many search-optimized data structures are based on it.

Recall that a binary tree is a tree in which each node has at most two children.  The value stored in each node is called a *key*.

Here is a picture of a binary search tree containing numbers:

![bstds](https://img.enkipro.com/09e3a9cd394bdae7a3724f1f3f563858.png)

We use numbers as an example here, but a BST works with any information that has a natural order to it, e.g., strings with alphabetical order.

There is one key property that makes searching BSTs efficient:

- For every key, the children to the left have smaller keys and the children to the right have larger keys

Therefore, to search a BST we ask "Is the key I'm searching for greater than or less than the current key?". If it is less, then we know the key we're searching for is in the left sub-tree and if it is greater, then we know the key we're searching for is in the right sub-tree.  Thus, at each stage, we effectively cut the search space in half.

This structure also makes for efficient `min` and `max` operations; to find the minimum key in a BST we follow the left branch and to find the maximum key in a BST we follow the right branch.

---
## Practice

Which key prevents the following tree from being a *BST*?
```
       10
     /    \
    9     15
  /   \      \
 3    11      20
```
???

* 11
* 3
* 20
* 9
* 15

---
## Revision

Which child has to be larger than the parent for a tree to be a Binary Search Tree?

???

* Right
* Left
* Both
* None


