# graph-representations-cheat-sheet
author: mihaiberq

levels:
	- beginner
	- basic

type: normal

category: hack

---
## Content

**Store Graph** refers to the *memory occupied*. Anything else refers to the *time required*.

V = *number of vertices*;
E = *number of edges*;


------------------------**EL**[1]-----**AL**[2]-----**AM**[3]-----**IM**[4]

---

**Store Graph**----*O(E+E)*--*O(V+E)*--*O(V×V)*--*O(V×E)*-
___
**Add vertex**------*N/A*-------*O(1)*-----*O(V×V)*---*O(V×E)*-

---
**Add edge**--------*O(1)*-------*O(1)*--------*O(1)*----*O(V×E)*-

---
**Remove vertex**--*O(E)*----*O(E)*------*O(V×V)*--*O(V×E)*-

---
**Remove edge**----*O(E)*----*O(E)*--------*O(1)*-----*O(1)*----

---
**Query**[5]----------*O(E)*------*O(V)*--------*O(1)*-------*O(E)*--

---

---
## Footnotes

[1:EL]
*Edge list*: maintains an unordered list of all edges, but makes it hard to find a particular edge or the edges incident to vertex v.
[2:AL]
*Adjacency list* : maintains a list of incident edges for each vertex, beside an edge list.
[3:AM]
*Adjacency matrix* : maintains a map of incident edges for each vertex, beside an edge list. For a vertex v, its map (key,value) pair is equivalent to (adjacentVertexU , edgeBetweenVandU).[4:IM]
*Incidence matrix* : maintains an n x n matrix, for a graph with n vertices. Each cell represents an edge between (v,u); if there is no edge, the value of the cell is null.
[5:Query]
Something like "get the edge incident to nodes v and u ".