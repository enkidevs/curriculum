---
author: jfarmer

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: how to



parent: inserting-data-into-a-binary-search-tree

---

# Removing Keys From a Binary Search Tree

---
## Content

Removing or deleting a node from a binary search tree (BST) is more complicated than inserting or searching.  There are three possible cases to consider:

1. The node we want to delete has no children
2. The node we want to delete has one child
3. The node we want to delete has two children

Consider the following highlighted nodes:

![rem1](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M350%2095c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C373.560339%2031.6072003%20362.551767%2025%20350%2025c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM210%20195c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C233.560339%20131.6072%20222.551767%20125%20210%20125c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zM100%20296c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C123.560339%20232.6072%20112.551767%20226%20100%20226c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M320%20296c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C343.560339%20232.6072%20332.551767%20226%20320%20226c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm170-101c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C513.560339%20131.6072%20502.551767%20125%20490%20125c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22465.996094%22%20y%3D%22174%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22197.998047%22%20y%3D%22177%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22307.998047%22%20y%3D%22275%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M385%20377c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C408.560339%20313.6072%20397.551767%20307%20385%20307c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22372.998047%22%20y%3D%22358%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M255%20377c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C278.560339%20313.6072%20267.551767%20307%20255%20307c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22242.998047%22%20y%3D%22358%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M600%20296c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C623.560339%20232.6072%20612.551767%20226%20600%20226c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22575.996094%22%20y%3D%22277%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M535%20375c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C558.560339%20311.6072%20547.551767%20305%20535%20305c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22510.996094%22%20y%3D%22356%22%3E13%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2287.9980469%22%20y%3D%22277%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%2276%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325.305402%2086L232%20132.270754M376%2086l89.005263%2049.575516M125%20236.675909L185.724368%20186M515%20186l60.148477%2050.16054M280%20317.852281L295.455271%20287m64.780386%2030.840445L345%20286m216%2030.334131L575.702837%20286M296%20236l-61-51%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The first two cases are easy to handle:

1. If the node we want to delete has no children (**13**), simply remove the node from the tree.
2. If the node we want to delete has one child (**10**), remove the node and replace it with its (single) child node.

To handle the two-children case (**6**) we have to think carefully about the BST's ordering property; given a node we want to delete, we know that every key in the left sub-tree is less than our node's key and every key in the right sub-tree is greater than our node's key.

Is there a node in the left sub-tree which could replace the node we want to delete while maintaining the BST's ordering property?  The answer is yes: the node with the maximum key in the left sub-tree.  However big the maximum key in the left sub-tree is, it will still be *smaller* than all the keys in the right sub-tree.  But because it's the *maximum* value in the left sub-tree, it will also be bigger than anything else in the left sub-tree.

Thus, we can handle the two-children case as follows:

1. If our node has two children, replace it with the node having the maximum key in the left sub-tree (*4*).
2. Recursively delete the maximum key from the left sub-tree.

After the three nodes removal, our initial tree will look like this:

![rem2](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M351%2095c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C374.560339%2031.6072003%20363.551767%2025%20351%2025c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zm140%20100c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C514.560339%20131.6072%20503.551767%20125%20491%20125c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22466.996094%22%20y%3D%22174%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22338.998047%22%20y%3D%2275%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M326.305402%2086L233%20132.270754M377%2086l89.005263%2049.575516M210%20195c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C233.560339%20131.6072%20222.551767%20125%20210%20125c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zM100%20296c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C123.560339%20232.6072%20112.551767%20226%20100%20226c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M320%20296c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C343.560339%20232.6072%20332.551767%20226%20320%20226c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22199.998047%22%20y%3D%22175%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22307.998047%22%20y%3D%22275%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M385%20377c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C408.560339%20313.6072%20397.551767%20307%20385%20307c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22373.998047%22%20y%3D%22358%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2287.9980469%22%20y%3D%22277%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M125%20236.675909L185.724368%20186m174.511289%20131.840445L345%20286m-49-50l-61-51%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

**Note**: the node with the maximum key in any sub-tree of a BST will never have two children since it couldn't possibly have a *right* child.  This guarantees that our delete operation will never call itself recursively more than once.

We can also delete nodes by working with the *minimum* key in the right sub-tree rather than the *maximum* key in the left sub-tree.

---
## Practice

Which node in the left sub-tree would replace *10* in case of its removal?
```
     [10]
    /    \
   5      15
 /  \    /  \
1    6  13   20

???
```

* `6`
* `1`
* `5`
* `13`
* `20`

---
## Revision

Which BST deletion case does require the most work?

???

* When the node has two children
* When the node has one child
* When the node has no children

 
