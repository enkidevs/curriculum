# Prim's Algorithm
author: mihaiberq

levels:

  - medium

type: normal

category: must-know

---
## Content

As an alternative to Kruskal's algorithm, Prim's algorithm yields the same result: the **minimum spanning tree** of that graph. It is a greedy algorithm which works for **connected, weighted undirected graphs**.

The algorithm starts off by picking a random node of the graph and initializing a tree with it. Next, it looks for the minimum-weight edge out of all that are incident to nodes in the tree and adds the adjacent node to the tree. It then repeats the process until the tree becomes a spanning one.

This is the pseudocode:
```text
Prim(AdjMatrix)


```


The difference between Kruskal's and Prim's is that the former starts building the minimum spanning tree using the cheapest edges first, while the latter starts with a node and looks for the cheapest edge incident to that node.

In terms of time complexity, for dense graphs[1], the algorithm can get as fast as *linear time*. Increasing the number of edges for each node means there is a smaller chance for the algorithm to reach a dead end and backtrack.

However, the time upper-bound depends on how the graph is represented. For example, the difference between a matrix representation and an adjacency list and a sorted array of edges(by weight) is shown below:
```text
matrix: O(|V|×|V|)
adjacency list + sorted array:
    O(|E|×|log V|)
```

---
## Revision

Prim's algorithm can be applied for

???
* connected, weighted undirected graphs
* any weighted undirected graphs
* any weighted graphs
* any weighted connected graphs

---
## Footnotes

[1:Dense graphs]
A dense graph is a graph in which the number of edges is close to a complete graph's number of edges. A complete graph is a graph for which there is an `edge between any two nodes`.

The maximal number of edges of a directed graph is `|V|×|V-1|`, while for an undirected one it is `(|V|×|V-1|)/2`.
