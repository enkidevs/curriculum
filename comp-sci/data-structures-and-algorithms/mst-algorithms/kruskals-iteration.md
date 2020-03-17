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

![kinitial](https://img.enkipro.com/1083f1190f1ced85c824cd8007b8cf9a.png)

In order to apply the algorithm, we have to sort the edges by weight. Doing that yields the following ordered **(edge, weight)** pairs:
```text
BC - 2, CD - 5, AE - 5
BD - 6, AB - 7, BE - 9
DE - 10, AC - 20
```
The next step is to "extract" the vertices from the initial graph and connect them. The first two nodes to be connected are **B** and **C**, by an edge of weight 2:

![k1](https://img.enkipro.com/3ad2849f206dd9c5ea38ac7afc85af5f.png)

We continue with picking up edges and connecting the other nodes:

![k2](https://img.enkipro.com/8841183c2943b19b653c11dc3ddc31a0.png)

So far, so good. The next edge in line is **BD**:

![k3](https://img.enkipro.com/3e47cd6f43a88991916190f2ad71d0e4.png)

Not exactly what we've been looking for. In order for a subgraph to be a tree, it must have **no cycles** - yet we got one, so **BD** is skipped. The algorithm will go through each edge in the sorted edge list until a single connected component remains. You can find the minimum spanning tree below:

![kfinal](https://img.enkipro.com/3ee46becc2b00a7986a7d230c95fc2fc.png)

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


