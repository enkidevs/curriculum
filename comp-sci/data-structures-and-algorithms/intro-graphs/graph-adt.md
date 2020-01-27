---
author: mihaiberq

levels:
  - beginner

type: normal

category: must-know

aspects:

  - introduction

  - workout

links:

  - '[Graph Representation](http://www.geeksforgeeks.org/graph-and-its-representations/){website}'

parent: the-components-of-a-graph

---

# Graph Representation and ADT

---
## Content

Consider this graph:

![digraph](https://img.enkipro.com/9e4b059a8e0042dd126eba438501b5bf.png)

It must be said that there are 4 common ways of representing it:
- **Edge list**: maintains an unordered list of all edges, but makes it hard to find a particular edge or the edges incident to vertex v. For the above example, the list is:

```
[(E, C), (C, A), (A, E), (E, B),
 (B, E), (A, F), (B, F), (F, B)]
```
- **Adjacency list**: maintains a list of incident edges for each vertex. We assume we can sort the nodes alphabetically by labels, to keep a relative order.

```
[(A, E, F), // A goes to E and A goes to F
 (B, E, F),
 (C, A),
 (E, B, C),
 (F, B)]
```
- **Adjacency map**: maintains a map of incident edges for each vertex. For a vertex v, its map  *(key,value)* pair is equivalent to (*adjacentVertex(u)* , *edgeBetween(v,u)*). The only difference between the list and the map is the container (data structure) used to store them.
- **Adjacency (incidence) matrix**: maintains an `n x n` matrix, for a graph with `n` vertices. Each cell represents an edge between *(v,u)*; if there is no edge, the value of the cell is null(or 0).

![matrix](https://img.enkipro.com/6b26321d5ca7565679df808559dc893c.png)

Any *implementation* of a graph data type should provide these methods:
- `adjacent(v,u)` : *Returns* `true` if there is an edge between v and u.
- `inEdges(v)` : *Returns* a collection of edges that have *v* as their endpoint.
- `outEdges(v)` : *Returns* a collection of edges that have *v* as their start point.
- `getOpposite(v,e)` : *Returns* the node on the other end of edge e, with v as the starting point.
- `getEdge(v,u)` : *Returns* the edge between v and u.
- `addVertex(v)` : *Adds* vertex v to the graph.
- `addEdge(v,u,x)` : *Adds* an edge with value x between v and u.
- `removeVertex(v)` : *Removes* vertex v and all incident edges from the graph.
- `removeEdge(e)` : *Removes* edge e from the graph.

---
## Practice

For any undirected graph represented as a matrix, you can be sure that the cells having the same value are (where _n_ is the number of vertices):

???

* `g[u][v]` and `g[v][u]`
* `g[0][0]` and `g[n-1][n-1]`
* `g[u][u]` and `g[v][v]`
* `g[u][v]` and `g[v-1][u-1]`

---
## Revision

Which of the following statements is describing an adjacency list?

???


* A list describing the set of neighbours for each node.
* An unordered list of all edges.
* A matrix of size N*N, where N is the number of nodes.


