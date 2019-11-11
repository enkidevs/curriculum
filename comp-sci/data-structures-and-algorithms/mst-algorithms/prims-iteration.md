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

![primsinit](https://img.enkipro.com/32aeec3823a531002b3272807fba65b9.png)

The algorithm starts off by picking a random node, say *B*. It then adds edges incident to B to the sorted container of available edges:

![iter1](https://img.enkipro.com/6c9212db51278e63d9e9ab143e3e7be5.png)

Out of those edges, the cheapest one is *BA*. So it adds *A* to the tree and the new available edges to the sorted container:

![iter2](https://img.enkipro.com/ec96b86d6393d3a3e763347af3e9fd13.png)

*AD* is picked next:

![iter3](https://img.enkipro.com/181cf36172849b971a501fc3a2ead962.png)

The next cheapest edge is *DE*, so it adds *E* to the tree:

![alt description](https://img.enkipro.com/8f8b109ce6fc6a1b33b6e4ddb0e9095e.png)

Left with two edges that have the same weight to be picked next, the algorithm chooses the one for which the node at the other end is not already in the tree(or a random edge if neither node has been added). In the end, the minimum spanning tree will be:

![final](https://img.enkipro.com/e19cbd0f6aee98dc72a1519b20ff945a.png)

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


