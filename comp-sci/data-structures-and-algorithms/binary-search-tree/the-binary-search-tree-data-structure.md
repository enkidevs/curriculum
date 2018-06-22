---
author: jfarmer

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


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

![bstds](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M350%2095c19.33%200%2035-15.67%2035-35a34.836%2034.836%200%200%200-5.263-18.467C373.56%2031.607%20362.552%2025%20350%2025c-19.33%200-35%2015.67-35%2035s15.67%2035%2035%2035zM210%20195c19.33%200%2035-15.67%2035-35a34.836%2034.836%200%200%200-5.263-18.467C233.56%20131.607%20222.552%20125%20210%20125c-19.33%200-35%2015.67-35%2035s15.67%2035%2035%2035zM100%20296c19.33%200%2035-15.67%2035-35a34.836%2034.836%200%200%200-5.263-18.467C123.56%20232.607%20112.552%20226%20100%20226c-19.33%200-35%2015.67-35%2035s15.67%2035%2035%2035zM320%20296c19.33%200%2035-15.67%2035-35a34.836%2034.836%200%200%200-5.263-18.467C343.56%20232.607%20332.552%20226%20320%20226c-19.33%200-35%2015.67-35%2035s15.67%2035%2035%2035zm170-101c19.33%200%2035-15.67%2035-35a34.836%2034.836%200%200%200-5.263-18.467C513.56%20131.607%20502.552%20125%20490%20125c-19.33%200-35%2015.67-35%2035s15.67%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22467%22%20y%3D%22174%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22201%22%20y%3D%22175%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22307.998%22%20y%3D%22275%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M385%20377c19.33%200%2035-15.67%2035-35a34.836%2034.836%200%200%200-5.263-18.467C408.56%20313.607%20397.552%20307%20385%20307c-19.33%200-35%2015.67-35%2035s15.67%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22375%22%20y%3D%22358%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M255%20377c19.33%200%2035-15.67%2035-35a34.836%2034.836%200%200%200-5.263-18.467C278.56%20313.607%20267.552%20307%20255%20307c-19.33%200-35%2015.67-35%2035s15.67%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22242.998%22%20y%3D%22358%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M600%20296c19.33%200%2035-15.67%2035-35a34.836%2034.836%200%200%200-5.263-18.467C623.56%20232.607%20612.552%20226%20600%20226c-19.33%200-35%2015.67-35%2035s15.67%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22577%22%20y%3D%22275%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M535%20375c19.33%200%2035-15.67%2035-35a34.836%2034.836%200%200%200-5.263-18.467C558.56%20311.607%20547.552%20305%20535%20305c-19.33%200-35%2015.67-35%2035s15.67%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22513%22%20y%3D%22354%22%3E13%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2287.998%22%20y%3D%22277%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22339%22%20y%3D%2274%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325.305%2086L232%20132.27M376%2086l89.005%2049.576M125%20236.676L185.724%20186M515%20186l60.148%2050.16M280%20317.853L295.455%20287m64.78%2030.84L345%20286m216%2030.334L575.703%20286M296%20236l-61-51%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

We use numbers as an example here, but a BST works with any information that has a natural order to it, e.g., strings with alphabetical order.

There is one key property that makes searching BSTs efficient:

- For a every key, the children to the left have smaller keys and the children to the right have larger keys

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

 
