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

  - workout

parent: dijkstras-algorithm

---

# Dijkstra's Algorithm Iteration

---
## Content

Consider the following undirected, weighted graph, for which **A** is the initial node:

![weightedg](https://img.enkipro.com/c0c22c8c486d5da2014a047ece15c2ea.png)

The initial three steps required by the algorithm are taken: assigning the starting node, *A*, setting the distance between *A* and every node to `inf` and marking *A* as the current node.

The next step is updating the distance from **A** to all reachable nodes. In this case, every vertex is reachable, so we update the distance for all of them and mark *A* as visited:

![iter1](https://img.enkipro.com/6487414eb44d0495f15211a4f9ff5f78.png)

If you prioritize the current smallest distance for the next node to be visited, **C** is the one to go to. Exactly as we did with A, we check C's neighbors and update their distances to A[1]. In this case, there is only D:

![iter2](https://img.enkipro.com/fdb0fe716f5361010f0791179ef09c22.png)

The distance from **C** to **D** is 3. This means that the distance between **A** and **D**(through C) is:
```text
AD = AC + CD = 3+5 = 8
which is smaller than the old one
AD = 20
```
So, we update the current distance. There are 3 more nodes to visit (*D*, *E* and *B*, in this order), but we'll jump straight to the final state as the process repeats itself:

![final](https://img.enkipro.com/842d1d3e36f562dac47c39561dd075c7.png)

In the end, we are left with:
```
AB = 10
AC = 5
AD = 8
AE = 10
```

---
## Revision

One of the initial steps in applying Dijkstra's algorithm is

???

* assigning a start node.
* assigning an end node.
* calculating the final distances between nodes.
* marking all nodes as visited.

---
## Footnotes
[1:Paths]
If there is a path between A and C and one between C and, say, X, it means that there is also a path between A and X.

