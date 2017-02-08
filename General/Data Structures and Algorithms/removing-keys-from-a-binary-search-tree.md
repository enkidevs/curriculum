# Removing Keys From a Binary Search Tree
author: jfarmer

levels:

type: normal

category: how to

---
## Content

Removing or deleting a node from a binary search tree (BST) is more complicated than inserting or searching.  There are three possible cases to consider:

1. The node we want to delete has no children
2. The node we want to delete has one child
3. The node we want to delete has two children

The first two cases are easy to handle:

1. If the node we want to delete has no children, simply remove the node from the tree.
2. If the node we want to delete has one child, remove the node and replace it with its (single) child node.

To handle the two-children case we have to think carefully about the BST's ordering property.  Given a node we want to delete, we know that every key in the left sub-tree is less than our node's key and every key in the right sub-tree is greater than our node's key.

Is there a node in the left sub-tree which could replace the node we want to delete while maintaining the BST's ordering property?  The answer is yes: the node with the maximum key in the left sub-tree.  However big the maximum key in the left sub-tree is, it will still be *smaller* than all the keys in the right sub-tree.  But because it's the *maximum* value in the left sub-tree, it will also be bigger than anything else in the left sub-tree.

Thus, we can handle the two-children case as follows:

1. If our node has two children, replace it with the node having the maximum key in the left sub-tree.
2. Recursively delete the maximum key from the left sub-tree.

**Note**: the node with the maximum key in any sub-tree of a BST will never have two children since it couldn't possibly have a *right* child.  This guarantees that our delete operation will never call itself recursively more than once.

We can also delete nodes by working with the *minimum* key in the right sub-tree rather than the *maximum* key in the left sub-tree.


---
## Practice

Which node in the left sub-tree would replace *10* in case it is removed?
```
     [10]
    /    \
   5      15
 /  \    /  \
1    6  13   20

???
```
*`6`
*`1`
*`5`
*`13`
*`20`

---
## Revision

Which BST deletion case requires the most work?

???
*When the node has two children
*When the node has one child
*When the node has no children