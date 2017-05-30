# The Binary Search Tree Data Structure
author: jfarmer

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: must-know

links:
    - >-
        [Binary Search Trees](http://algs4.cs.princeton.edu/32bst/){website}

parent: post-order-traversal
---
## Content

A *binary search tree* (or BST) is a tree-based data structure designed for efficient insertion, deletion, and searching. BSTs are in many ways the most important search-optimized data structure — although the most basic version of BST described here is rarely used in practice, many search-optimized data structures are based on it.

Recall that a binary tree is a tree in which each node has at most two children.  The value stored in each node is called a *key*.

Here is a picture of a binary search tree containing numbers:

![bstds](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M350%2085c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C373.560339%2021.6072003%20362.551767%2015%20350%2015c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM210%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C233.560339%20121.6072%20222.551767%20115%20210%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zM100%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C123.560339%20222.6072%20112.551767%20216%20100%20216c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035zm290-1c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C413.560339%20221.6072%20402.551767%20215%20390%20215c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm100-100c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C513.560339%20121.6072%20502.551767%20115%20490%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22465.996094%22%20y%3D%22164%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22197.998047%22%20y%3D%22167%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22377.998047%22%20y%3D%22264%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M455%20366c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C478.560339%20302.6072%20467.551767%20296%20455%20296c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22442.998047%22%20y%3D%22347%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325%20366c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C348.560339%20302.6072%20337.551767%20296%20325%20296c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22312.998047%22%20y%3D%22347%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M600%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C623.560339%20222.6072%20612.551767%20216%20600%20216c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22575.996094%22%20y%3D%22267%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M535%20365c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C558.560339%20301.6072%20547.551767%20295%20535%20295c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22510.996094%22%20y%3D%22346%22%3E13%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2287.9980469%22%20y%3D%22267%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%2266%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325.27056%2075.9005944l-93.305402%2046.2707536m143.680216-46.4627484l89.005263%2049.5755164M124.832786%20226.630334l60.724369-50.675908m329.549536-.88692l60.148477%2050.160539m-159.311527.561715l49.504468-50.78497M350.020737%20306.275427l15.455271-30.852281M430.5%20306.5l-15.235657-31.840445m145.093362%2031.086565l14.702836-30.334131%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

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
