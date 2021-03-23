---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The Components of a Graph


---

## Content

In a graph, a **path** is a sequence of vertices and edges, such that between two vertices in the path, there is an edge. In a *directed graph*, a **directed path** is a path such that all edges are directed and traversed along their direction. The path below is `[E, C, A, F]`:

![path](https://img.enkipro.com/4ab62c5093646cdf387c937f61f2a83a.png)

If the path starts and ends with the same vertex, having more than one edge, it is called a **cycle**. A **directed cycle** is equivalent to a *directed path*. The cycle below is `[C, A, E, C]` (note: every permutation that follows the edge directions is a valid cycle, no matter how many times it goes around - `[A, E, C, A]` and `[E, C, A, E, C]` are both cycles).

![cycle](https://img.enkipro.com/9d61467f8592f253b7c556ce50aeca28.png)

A *path* is **simple** if it contains each edge and vertex at most *once*. If a *simple path* ends with the vertex it started, it becomes a **simple cycle**. This is the case for both directed and undirected graphs.

Given an edge between two vertices *u* and *v*, we could say that *u* **reaches** *v* and *v* is **reachable** from *u*. In case of an undirected edge, the converse is also true: *v* **reaches** *u* and *u* is **reachable** from *v*.


---

## Practice

If the path starts and ends with the same vertex, having more than one edge, it is called a ???.

- Cycle
- Simple Cycle


---

## Revision

The two core components of a graph are nodes and ???

- edges
- vertices
- cycles
- islands
