# The Components of a Graph
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

In a graph, a **path** is a sequence of vertices and edges , such that between two vertices in the path, there is an edge. In a *directed graph*, a **directed path** is a path such that all edges are directed and traversed along their direction.

If the path starts and ends with the same vertex, having more than one edge, it is called a **cycle**. A **directed cycle** is equivalent to a *directed path*.

A *path* is **simple** if the it contains each edge and vertex at most *once*. If a *simple path* ends with the vertex it started, it becomes a **simple cycle**.

Given two connected vertices of an *undirected graph*, *v* and *u*, we say that *u* **reaches** *v* and that *v* is **reachable** from *u*. In the case of a *directed graph*, one might be true, while the other might not.

A graph is **connected** if between every vertex in the graph, there is a *path*.
A **directed graph** is **strongly connected** if for any two vertices, *v* reaches *u* and *u* reaches *v*.

A **subgraph** of a graph G is a graph H whose vertices and edges are a subset of the ones in G. If H contains all vertices in G, it is called a **spanning subgraph**.

If a graph is not connected, the maximal connected subgraphs are called **connected components** of the graph.

A **forest** is a graph without cycles. If the graph is connected as well, it is called a **tree**. A **spanning tree** is a *spanning subgraph* that is a tree.

Note: The notion of **tree** here is not related to the one of the *Tree Data Type* since it *does not need* to have a root.


---
## Practice

Can a graph be a tree if it has more than one connected component?

???
*No
*Yes

---
## Revision

A subgraph of a graph is *spanning* if it contains

???.
*all the nodes in the graph
*all the edges in the graph
*all the connected components of the graph
*only the directed edges
