---
author: jfarmer

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know



parent: verifying-a-binary-search-tree

---

# Inserting Data Into a Binary Search Tree

---
## Content

To insert a new key into a BST, we traverse between the left and right children according to how the new key compares to the key at each node, and find the first empty leaf node where the new key fits.

The new key is first compared with that of the root.  If its key is less than the root's, it is then compared with the key of the root's left child. If its key is greater, it is compared with the root's right child. This process continues until the new node is compared with a leaf node, and then it is added as this node's child (left or right depending on how the new key compares).

Consider the following BST:

![i1](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M350%2085c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C373.560339%2021.6072003%20362.551767%2015%20350%2015c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM210%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C233.560339%20121.6072%20222.551767%20115%20210%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zM100%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C123.560339%20222.6072%20112.551767%20216%20100%20216c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035zm220-1c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C343.560339%20221.6072%20332.551767%20215%20320%20215c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm170-100c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C513.560339%20121.6072%20502.551767%20115%20490%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22465.996094%22%20y%3D%22164%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22197.998047%22%20y%3D%22167%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22307.998047%22%20y%3D%22264%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M400%20385c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C423.560339%20321.6072%20412.551767%20315%20400%20315c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22387.998047%22%20y%3D%22366%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M600%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C623.560339%20222.6072%20612.551767%20216%20600%20216c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22575.996094%22%20y%3D%22267%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M521%20386c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C544.560339%20322.6072%20533.551767%20316%20521%20316c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22496.996094%22%20y%3D%22367%22%3E13%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2287.9980469%22%20y%3D%22267%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%2266%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325.27056%2075.9005944l-93.305402%2046.2707536m143.680216-46.4627484l89.005263%2049.5755164M124.832786%20226.630334l60.724369-50.675908m50.17766-1.621328l60.021434%2051.186277m49.412782%2049.55283l29.698301%2049.718463m140.239359-149.723162l60.148477%2050.160539m-30.177685%20100.060672l30.282407-50.048577%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Let's say we wanted to insert the key `4`.  To do so, the procedure would work as follows:

1. `4` is less than `8` so move on to the left child.
2. `4` is greater than `3`, so move on to the right child.
3. `4` is less than `6`, so move on to the left child.
4. Another check is necessary to verify if the node is empty, which it is: insert `4` as the left child of `6`.

The final result is a BST that looks like this:

![i2](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M350%2085c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C373.560339%2021.6072003%20362.551767%2015%20350%2015c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM210%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C233.560339%20121.6072%20222.551767%20115%20210%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zM100%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C123.560339%20222.6072%20112.551767%20216%20100%20216c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035zm220-1c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C343.560339%20221.6072%20332.551767%20215%20320%20215c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm170-100c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C513.560339%20121.6072%20502.551767%20115%20490%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22465.996094%22%20y%3D%22164%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22197.998047%22%20y%3D%22167%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22307.998047%22%20y%3D%22264%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M400%20385c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C423.560339%20321.6072%20412.551767%20315%20400%20315c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22387.998047%22%20y%3D%22366%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M240%20385c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C263.560339%20321.6072%20252.551767%20315%20240%20315c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22227.998047%22%20y%3D%22366%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M600%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C623.560339%20222.6072%20612.551767%20216%20600%20216c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22575.996094%22%20y%3D%22267%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M521%20386c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C544.560339%20322.6072%20533.551767%20316%20521%20316c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22496.996094%22%20y%3D%22367%22%3E13%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2287.9980469%22%20y%3D%22267%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%2266%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325.27056%2075.9005944l-93.305402%2046.2707536m143.680216-46.4627484l89.005263%2049.5755164M124.832786%20226.630334l60.724369-50.675908m50.17766-1.621328l60.021434%2051.186277m49.412782%2049.55283l29.698301%2049.718463m140.239359-149.723162l60.148477%2050.160539m-30.177685%20100.060672l30.282407-50.048577m-309.983499%2050.659038l29.789726-50.584449%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

## Order Dependence

You may have noticed that the shape of the BST depends on the order in which the data is inserted. For example, if the data were all inserted in ascending (or descending order), we would wind up with what essentially resembles a sorted linked list[1].

---
## Practice

How many checks are required to find the right place to insert `9` in the following BST?
```
       7
     /   \
    3    10
  /  \  /  \
 1   4  8   13
???
```

* `3`
* `2`
* `4`
* `1`
* `5`

---
## Revision

How many checks are required to find the right place to insert `5` in the following BST?
```
       6
     /   \
    3    10
  /     /  \
 2     9   20
???
```

* `2`
* `3`
* `5`
* `1`
* `4`

---
## Footnotes
[1: Worst-case scenario]
This refers to the case in which the tree's *height* (the distance between the root and the furthest away leaf from the root) is equal to the number of nodes in the tree. In this case, the operations that normally take `O(log n)` end up taking `O(n)`.
 
