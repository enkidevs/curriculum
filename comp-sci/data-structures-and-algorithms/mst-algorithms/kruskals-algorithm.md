---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know


links:

  - '[Step-by-step, interactive Kruskal`s algorithm application](https://www-m9.ma.tum.de/graph-algorithms/mst-kruskal/index_en.html){website}'

parent: traveling-salesman-problem

---

# Kruskal's Algorithm

---

## Content

**Kruskal's algorithm** is an algorithm that finds a _minimum spanning tree_[1] in a _weighted graph_[2]. The applications of minimum spanning trees are numerous: any type of network design (electrical, roads), data cluster analysis, process control, etc.

In other words, it finds a _subset of edges_ forming a tree that includes _every vertex_, and for which the total weight of the edges is _minimal_.

The process of implementing the algorithm starts with creating a _set of trees_, also known as a _forest_ (a way to store all the nodes in the graph and check if adding an edge between two of these nodes still preserves the tree's properties).

Then, a way of sorting edges' weights is needed. A mapping of _(edge, weight)_ pairs, sorted by the _value_ (i.e. weight) would suffice.

Because the algorithm chooses the lowest-weight edge first, it is considered a _greedy algorithm_.

Having these two data structures, the algorithm comes down to extracting the _cheapest_ edge from the graph and adding it to the forest, combining two trees, if and only if it _does not_ create a cycle[3].

The algorithm terminates when the forest becomes a spanning tree of the graph.

The _pseudocode_ looks like this:

```text
Kruskal(SortedEdges[])
  Vertices[] // map of edge's weights
    // between two nodes

  foreach edge (u,v) in SortedEdges
    if !sameConnectedComponent(u,v)
      Vertices[u,v]←weight(u,v)

  return Vertices
```

The function `sameConnectedComponent(v1, v2)` checks whether or not there already is a path between the two nodes. Why do we have to check that?[4]

_Kruskal's algorithm_ can be shown to run in _O(|E|×|log E|)_ time, which is equivalent to _O(|E|×|logV|)_, where _E_ and _V_ are the number of edges and the number of vertices, respectively.

Swipe to the next insight to see an iteration of the algorithm.

---

## Revision

Kruskal's algorithm is used for finding

???.

- the minimum spanning tree in a weighted graph
- distances between the nodes in a weighted graph
- the number of negative cycles in a weighted graph

---

## Footnotes

[1:Minimum spanning tree]
A **spanning tree** is a connected subgraph of the initial graph G, which contains all of the nodes in G and doesn't have any cycles. The spanning tree is **minimum** if its spanning properties are satisfied using the cheapest edges in the graph.

[2:Weighted graph]
A graph that has numerical values assigned to edges.

As the algorithm is using a greedy approach (sorted list of edges), we also know for sure the old edge connecting the second node to the rest of the connected component is cheaper than the new one.

[3: Trees and cycles]
A cycle is defined as a closed sequence of vertices (path): the start node and the end node are the same.
By definition, for a graph to be considered a tree it must:

- be acyclic (have no cycles)
- be connected

If the chosen edge creates a cycle, the data structure won't be a tree anymore.

[4: Hint]
If they are part of the same component, it means those nodes will already appear in the final spanning tree.
