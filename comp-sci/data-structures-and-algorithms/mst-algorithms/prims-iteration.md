---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

aspects:

  - deep

  - obscura

  - workout


parent: prims-algorithm

---

# Prim's Algorithm Iteration

---
## Content

Consider the following *weighted, connected graph*:

![primsinit](https://img.enkipro.com/6b7311859751de6cfaa608c8e661e516.png)

The algorithm starts off by picking a random node, say *B*. It then adds edges incident to B to the sorted container of available edges:

![iter1](https://img.enkipro.com/46d35429206cf9d52c4162d7e043a10a.png)

Out of those edges, the cheapest one is *BA*. So it adds *A* to the tree and the new available edges to the sorted container:

![iter2](https://img.enkipro.com/09fe967ccf0f13887c55aaee6ff4d169.png)

*AD* is picked next:

![iter3](https://img.enkipro.com/5ae7f44df86102a32d7f4eaf30cd113c.png)

The next cheapest edge is *DE*, so it adds *E* to the tree:

![alt description](https://img.enkipro.com/51bdceeefb410a4ff763d12e7560c204.png)

Left with two edges that have the same weight to be picked next, the algorithm chooses the one for which the node at the other end is not already in the tree(or a random edge if neither node has been added). In the end, the minimum spanning tree will be:

![final](https://img.enkipro.com/9b43122686b2efeedea6f29d2920e619.png)

---
## Practice

If the sorted edge container looks like this:
```
[(AC, 5), (AB, 5), (CE, 5)]
```
And the current nodes in the tree are:
```
A, D, C, E
```
The next edge to be picked is:
```
???
```

* `AB`
* `AC`
* `CE`

---
## Revision

Prim's algorithm uses

???

* a greedy approach
* a dynamic approach
* a divide and conquer approach
* no particular approach


