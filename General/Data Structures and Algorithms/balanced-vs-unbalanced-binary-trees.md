# balanced-vs-unbalanced-binary-trees
author: jfarmer

levels:
 - basic

type: undefined

category: must-know

---
## Content

A binary tree is called *balanced* if every leaf node is not more than a certain distance away from the root than any other leaf.  That is, if we take any two leaf nodes (including empty nodes), the distance between each node and the root is approximately the same.  In most cases "approximately the same" means the distance between the leaf and the root is not greater than 1, but the exact number can vary from application to application.

This distance constraint ensures that is takes approximately the same amount of time to reach any leaf node in a binary tree from the root.  A linked list is a kind of maximally-unbalanced binary tree.

This is a problem for binary search trees (BSTs) because an ordered linked list is a BST and searching it is linear.  Thus, a BST has log-time searching *on average*, but a linear-time worst case.

Solving this problem and guaranteeing that the tree remains more-or-less balanced is one of the main motivations behind more complex BST-like data structures, e.g., AVL trees, red-black trees, and others.
---
## Revision

Which of the following data structures is a type of *maximally-unbalanced* binary tree?

???
*Ordered linked list
*Ordered array
*Weighted graph
*Max-heap