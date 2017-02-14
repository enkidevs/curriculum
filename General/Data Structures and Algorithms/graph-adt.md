# Graph ADT
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

It must be said that there are 4 common ways of representing a graph:
- **edge list** : maintains an unordered list of all edges, but makes it hard to find a particular edge or the edges incident to vertex v.
- **adjacency list** : maintains a list of incident edges for each vertex, beside an edge list.
- **adjacency map** : maintains a map of incident edges for each vertex, beside an edge list. For a vertex v, its map  *(key,value)* pair is equivalent to (*adjacentVertex**U*** , *edgeBetween**V**and**U***).
- **adjacency/incidence matrix** : maintains an *n x n* matrix, for a graph with *n* vertices. Each cell represents an edge between *(v,u)*; if there is no edge, the value of the cell is null.

Any *representation* of a graph data type should provide these methods:
- `adjacent(v,u)` : *Returns* true if there is an edge between v and u.
- `inEdges(v)` : *Returns* a collection of edges that have *v* as their endpoint.
- `outEdges(v)` : *Returns* a collection of edges that have v as their start point.
- `getOpposite(v,e)` : *Returns* the node on the other end of edge e, with v as starting point.
- `getEdge(v,u)` : *Returns* the edge between v and u.
- `addVertex(v)` : *Adds* vertex v to the graph.
- `addEdge(v,u,x)` : *Adds* an edge with value x between v and u.
- `removeVertex(v)` : *Removes* vertex v and all incident edges from the graph.
- `removeEdge(e)` : *Removes* edge e from the graph.



---
## Practice

You can represent a graph as an adjacency matrix, without the need for an additional edge list. How then is the information contained in the edge list stored in the matrix?

???
*A different value in both (u,v) and (v,u) cells in the matrix for the undirected edge (u,v) in the list.
*A different value than the default one for the (u,v) cell of the matrix, for the  undirected edge (u,v) in the list.
*The default value in the (u,v) cell, for the edge (u,v) in the list.
*A different value in both (u,v) and (v,u) cells in the matrix for the directed edge (u,v) in the list.

---
## Revision

Which of the following methods is specific to the graph ADT?

???
*adjacent(u,v)
*child(u,v)
*root(u)
*first(u)
*pop(G)
