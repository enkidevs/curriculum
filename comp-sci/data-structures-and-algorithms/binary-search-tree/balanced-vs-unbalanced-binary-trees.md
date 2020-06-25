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

  - '[Why Is It Safer to Keep the Tree Balanced?](http://stackoverflow.com/questions/8015630/definition-of-a-balanced-tree){website}'

parent: removing-keys-from-a-binary-search-tree

---

# Balanced vs. Unbalanced Binary Trees

---
## Content

A binary tree is called *balanced* if every leaf node is not more than a certain distance away from the root than any other leaf.  That is, if we take any two leaf nodes (including empty nodes), the distance between each node and the root is approximately the same. In most cases, "approximately the same" means that the difference between the two distances (root to first leaf and root to second leaf) is not greater than 1, but the exact number can vary from application to application.

This distance constraint ensures that it takes approximately the same amount of time to reach any leaf node in a binary tree from the root. A linked list is a kind of maximally-unbalanced binary tree.

Consider the following unbalanced tree. The nodes that can be swapped to balance the tree are highlighted:

![unbalanced](https://img.enkipro.com/95af1c1303e70b87589a2f93d8884b6d.png)

In order to balance the above tree, the `10-15-13` subtree has to be "rotated":

![balanced](https://img.enkipro.com/9dab8acba7e13fed56e5a6d94613fba3.png)


This is a problem for binary search trees (BSTs) because an ordered linked list is a BST and searching it is linear. Thus, a BST has log-time searching *on average*, but a linear-time worst case.

Solving this problem and guaranteeing that the tree remains more-or-less balanced is one of the main motivations behind more complex BST-like data structures, e.g. AVL trees[1] and red-black trees[2].

---
## Revision

Which of the following data structures is a type of *maximally-unbalanced* binary tree?

???

* Ordered linked list
* Ordered array
* Weighted graph
* Max-heap

---
## Footnotes
[1: AVL tree]
Self-balancing binary search tree, in which the height of the two child subtrees of any node differ by at most one.

[2: Red-Black tree]
Self-balancing binary search tree, in which nodes store an additional bit of data: whether the node is black or red. All of the tree's leaves must be black and, in case of a node being red, its two children must be black.

