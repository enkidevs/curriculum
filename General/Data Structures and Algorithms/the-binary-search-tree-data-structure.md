# the-binary-search-tree-data-structure
author: jfarmer

levels:
 - basic

type: undefined

category: undefined

---
## Content

A *binary search tree* (or BST) is a tree-based data structure designed for efficient insertion, deletion, and searching.  BSTs are in many ways the most important search-optimized data structure — although the most basic version of  BST described here is rarely used in practice, many search-optimized data structures are based on it.

Recall that a binary tree is a tree in which each node has at most two children.  The value stored in each node is called a *key*.

Here is a picture of a binary search tree containing numbers:

```text
       8
    /     \
   3      10
  / \       \
 1   6      15
    / \    /
   4   7  13
```

We use numbers as an example here, but a BST works with any information that has a natural order to it, e.g., strings with alphabetical order.

There is one key property that makes searching a BSTs efficient:

- For a every key, the children to the left have smaller keys and the children to the right have larger keys

To search a BST, then, we ask "Is the key I'm searching for greater than or less than the current key?"  If it is less then we know the key we're searching for is in the left sub-tree and if it is greater then we know the key we're searching for is in the right sub-tree.  Thus, at each stage, we effectively cut the search space in half.

This structure also makes for efficient `min` and `max` operations.  To find the minimum key in a BST we keep taking the left branch and to find the maximum key in a BST we keep taking the right branch.
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
*11
*3
*20
*9
*15
---
## Revision

Which child has to be larger than the parent for a tree to be a Binary Search Tree? 

???
*Right
*Left
*Both
*None