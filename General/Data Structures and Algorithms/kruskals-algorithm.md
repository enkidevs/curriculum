# Kruskal's Algorithm
author: mihaiberq

levels:

  - medium

type: normal

category: must-know

---
## Content

**Kruskal's algorithm** is an algorithm that finds a *minimum spanning tree*[1] in a *weighted graph*[2]. The applications of minimum spanning trees are numerous: any type of network design (electrical, roads), data clusters analysis, process control etc. (Would a minimum spanning tree help you solve the Traveling Salesman Problem?)

In other words, it finds a *subset of edges* forming a tree that includes *every vertex*, and for which the total weight of the edges is *minimum*.

The process of implementing the algorithm starts with creating a *set of trees*, also known as a *forest* (a way to store all the nodes in the graph and check if adding an edge between two of these nodes still preserves the tree's properties).

Then, a way of sorting edges' weights is needed. A mapping of *(edge, weight)* pairs, sorted by the *value* (i.e. weight) would suffice.

Because the algorithm chooses the lowest-weight edge first, it is considered a *greedy algorithm*.

Having these two data structures, the algorithm comes down to extracting the *cheapest* edge out of the map and adding it to the forest, combining two trees, **only** if it *does not* create a cycle(property of trees).

The algorithm terminates when the forest becomes a spanning tree of the graph.

The *pseudocode* looks like this:
```
Kruskal(SortedEdges[])
  Vertices[] // map of edge's weights
    // between two nodes

  foreach (u,v) in SortedEdges
    if !sameConnectedComponent(u,v)
      Vertices[u,v]←weight(u,v)

  return Vertices
```
The function `sameConnectedComponent(v1, v2)` checks whether or not there already is a path between the two nodes. Why do we have to check that?[3]

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
A **spanning tree** is a connected subgraph of the initial graph G, which contains all of the nodes in G and doesn't have any cycles. The spanning tree is **minimum** if its spanning properties are satisfied using the cheapest edges in the graph.

[2:Weighted graph]
A graph that has numerical values assigned to edges.

[3: Hint]
If they are part of the same component, it means those nodes will already appear in the final spanning tree. As the algorithm is using a greedy approach (sorted list of edges), we also know for sure the old edge connecting the second node to the rest of the connected component is cheaper than the new one.
