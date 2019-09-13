---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction

  - workout

parent: the-graph-data-structure

---

# The Components of a Graph

---
## Content

In a graph, a **path** is a sequence of vertices and edges , such that between two vertices in the path, there is an edge. In a *directed graph*, a **directed path** is a path such that all edges are directed and traversed along their direction. The path below is `[E, C, A, F]`:

![path](https://img.enkipro.com/a37d2d895926bb1f613821c7167001c7.png)

If the path starts and ends with the same vertex, having more than one edge, it is called a **cycle**. A **directed cycle** is equivalent to a *directed path*. The cycle below is `[C, A, E, C]` (note: every permutation that follows the edge directions is a valid cycle, no matter how many times it goes around - `[A, E, C, A]` and `[E, C, A, E, C]` are both cycles).

![cycle](https://img.enkipro.com/20941478ecf64d754af9a4e8c59d369d.png)

A *path* is **simple** if it contains each edge and vertex at most *once*. If a *simple path* ends with the vertex it started, it becomes a **simple cycle**. This is the case for both directed and undirected graphs.

Given an edge between two vertices *u* and *v*, we could say that *u* **reaches** *v* and *v* is **reachable** from *u*. In case of an undirected edge, the converse is also true: *v* **reaches** *u* and *u* is **reachable** from *v*.

A graph is **connected** if between every vertex in the graph, there is a *path*. The graph above was connected, while the one below isn't (you cannot get from *A* to *B*, for example):

![notconnected](https://img.enkipro.com/fd90d6dffb5b81595d3c873ccfda50ff.png)

A **directed graph** is **strongly connected** if for any two vertices, *v* reaches *u* and *u* reaches *v*. In case either one of `(B,E)` or `(E,B)` edges wasn't there, *B* wouldn't have been part of the strongly connected component anymore.

![strongly](https://img.enkipro.com/8134cbbae056863a10e62794630a0189.png)

A **subgraph** of a graph G is a graph H whose vertices and edges are a subset of the ones in G. If H contains all vertices in G, it is called a **spanning subgraph**.

![spanning](https://img.enkipro.com/d1cd4a2bd6749a5c429f3165f6c199bf.png)

If a graph is not connected, the maximal connected subgraphs are called **connected components** of the graph. The only illustration of an unconnected graph above has two connected components.

A **forest** is a simple graph without cycles:

![forest](https://img.enkipro.com/a448db31b72d6170bdf1a2255cc194ba.png)

If the graph is connected as well, it is called a **tree**. A **spanning tree** is a *spanning subgraph* (a subgraph containing all of the graph's nodes) that is a tree. As the tree below contains all nodes in the initial graph, it is a spanning tree:

![spanningtree](https://img.enkipro.com/d2ec82db4ee7155030141438776b2990.png)


Note: The notion of **tree** here is not related to the one of the *Tree Data Type* since it *does not need* to have a root.

---
## Practice

Can a graph be a tree if it has more than one connected component?

???

* No
* Yes

---
## Revision

A subgraph of a graph is *spanning* if it contains

???.

* all the nodes in the graph
* all the edges in the graph
* all the connected components of the graph
* only the directed edges


