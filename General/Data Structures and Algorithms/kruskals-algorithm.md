# Kruskal's Algorithm
author: mihaiberq

levels:

  - medium

type: normal

category: must-know

---
## Content

**Kruskal's algorithm** is an algorithm that finds a *minimum spanning tree*[1] in a *weighted graph*[2].

In other words, it finds a *subset of edges* forming a tree that includes *every vertex*, and for which the total weight of the edges is *minimum*.

The process of implementing the algorithm starts with creating a *set of trees*, also known as a *forest* (a way to store all the nodes in the graph and check if adding an edge between two of these nodes still preserves the tree's properties).

Then, a way of sorting edges' weights is needed. A mapping of *(edge, weight)* pairs, sorted by the *value* (i.e. weight) would suffice.

Because the algorithm chooses the lowest-weight edge first, it is considered a *greedy algorithm*.

Having these two data structures, the algorithm comes down to extracting the *"lightest"* edge out of the map and adding it to the forest, combining two trees, **only** if it *does not* create a cycle(property of trees).

The algorithm terminates when the forest becomes a spanning tree of the graph.

The *pseudocode* looks like this:
```
Kruskal(SortedEdges[])
  Vertices[]

  foreach (v,u) in SortedEdges
    if !sameConnectedComponent(v,u)
      Vertices[v,u]←weight((v,u))

  return Vertices

```

*Kruskal's algorithm* can be shown to run in *O(|E|×|log E|)* time, which is equivalent to *O(|E|×|logV|)*, where *E* and *V* are the number of edges and the number of vertices, respectively.

Swipe to the next insight to see an iteration of the algorithm.

---
## Revision

Kruskal's algorithm is used for finding

???.
* the minimum spanning tree in a weighted graph
* distances between the nodes in a weighted graph
* the number of negative cycles in a weighted graph

---
## Footnotes

[1:Minimum spanning tree]
Is a connected subgraph H of a graph G which contains all of G's *vertices* and obtains the connectivity by selecting the edges of *minimum weight*.

[2:Weighted graph]
A graph that has numerical values assigned to edges
