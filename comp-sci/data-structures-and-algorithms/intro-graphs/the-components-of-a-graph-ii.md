---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# More Components of a Graph


---

## Content

A graph is **connected** if between every vertex in the graph, there is a *path* (here's an example[1]). Below you can see a graph that isn't connected (you cannot get from *A* to *B*, for example):

![notconnected](https://img.enkipro.com/e59ce9c8052bc0aed3ef2ec9db706c1d.png)

A **directed graph** is **strongly connected** if for any two vertices, *v* reaches *u* and *u* reaches *v*. In case either one of `(B,E)` or `(E,B)` edges wasn't there, *B* wouldn't have been part of the strongly connected component anymore.

![strongly](https://img.enkipro.com/c5b0e80a6b40292bae6d30017577af51.png)

A **subgraph** of a graph G is a graph H whose vertices and edges are a subset of the ones in G. If H contains all vertices in G, it is called a **spanning subgraph**.

![spanning](https://img.enkipro.com/806d2b85d517b7e00e2f1d5fcb670173.png)

If a graph is not connected, the maximal connected subgraphs are called **connected components** of the graph. The only illustration of an unconnected graph above has two connected components.

A **forest** is a simple graph without cycles:

![forest](https://img.enkipro.com/89e3f6008d370b4091aaf1dd10ae9af6.png)

If the graph is connected as well, it is called a **tree**. A **spanning tree** is a *spanning subgraph* (a subgraph containing all of the graph's nodes) that is a tree. As the tree below contains all nodes in the initial graph, it is a spanning tree:

![spanningtree](https://img.enkipro.com/48d9282e1686cda71848ec61545ed099.png)

Note: The notion of **tree** here is not related to the one of the *Tree Data Type* since it *does not need* to have a root.


---

## Practice

Can a graph be a tree if it has more than one connected component?

???

- No
- Yes


---

## Revision

A subgraph of a graph is *spanning* if it contains

???.

- all the nodes in the graph
- all the edges in the graph
- all the connected components of the graph
- only the directed edges


---

## Footnotes

[1: Graph]
The graph discussed in the previous insight

![cycle](https://img.enkipro.com/9d61467f8592f253b7c556ce50aeca28.png)
