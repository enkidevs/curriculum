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

parent: kruskals-algorithm

---

# Kruskal's Algorithm Iteration

---
## Content

Consider the following weighted graph:

![kinitial](https://img.enkipro.com/13dd7a63856a73566502a45481af021e.png)

In order to apply the algorithm, we have to sort the edges by weight. Doing that yields the following ordered **(edge, weight)** pairs:
```text
BC - 2, CD - 5, AE - 5
BD - 6, AB - 7, BE - 9
DE - 10, AC - 20
```
The next step is to "extract" the vertices from the initial graph and connect them. The first two nodes to be connected are **B** and **C**, by an edge of weight 2:

![k1](https://img.enkipro.com/c2e6181ab175aa819daa8ecf8e62134d.png)

We continue with picking up edges and connecting the other nodes:

![k2](https://img.enkipro.com/66f3e0cfac9af618280a95c30fc1ad64.png)

So far, so good. The next edge in line is **BD**:

![k3](https://img.enkipro.com/3bc57815c2bfc0b81f55cf4b75cdc586.png)

Not exactly what we've been looking for. In order for a subgraph to be a tree, it must have **no cycles** - yet we got one, so **BD** is skipped. The algorithm will go through each edge in the sorted edge list until a single connected component remains. You can find the minimum spanning tree below:

![kfinal](https://img.enkipro.com/62a28d3fd09ce3f27727da794ee03159.png)

---
## Practice

Is the following graph a valid one on which to apply Kruskal's algorithm?
```text
           5
     A   C -- D
   3/         |2
  B      F -- E
           6
???
```


* No
* Yes

---
## Revision

In order for the Kruskal's algorithm to work, the graph should be

???.


* weighted
* directed
* acyclic
* disconnected


