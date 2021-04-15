---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Step-by-step, interactive Kruskal`s algorithm
    application](https://www-m9.ma.tum.de/graph-algorithms/mst-prim/index_en.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Prim's Algorithm


---

## Content

As an alternative to Kruskal's algorithm, Prim's algorithm yields the same result: the **minimum spanning tree** of that graph. It is a greedy algorithm which works for **connected, weighted, undirected graphs**.

A random starting node is selected and an empty list initialized that will contain the distance from the start node to all other nodes. Next, the algorithm looks for the minimum-weight edge out of all that are incident to nodes in the visited list and adds the edge node to the tree, marking the new node as visited. It then repeats the process until the there are no unvisited nodes left.

This is the pseudocode:

```plain-text
Prim(AdjMatrix)
// initial random node
  inTree[]
  toVisit←[1, ... , n-1]
  spanningTree[]

  while toVisit.length > 0
    foreach (i, j) in AdjMatrix
      if inTree.has(i) and
      !inTree.has(j) and
      isMinimumAvailable(edge(i,j)
        inTree←inTree + j
        toVisit←toVisit - j
        spanningTree←spanningTree
                    + edge(i,j)

```

The difference between Kruskal's and Prim's is that the former starts building the minimum spanning tree using the cheapest edges first, while the latter starts off by picking a random node and then finds the cheapest edge incident to it.

In terms of time complexity, for dense graphs[1], the algorithm can get as fast as *linear time*. Increasing the number of edges for each node means there is a smaller chance for the algorithm to reach a dead end and backtrack. In case of more-common, sparse graphs, **Kruskal's algorithm** should be preferred as it is faster.

The time upper-bound also depends on how the graph is represented[2]. For example, the difference between a matrix representation and an adjacency list and a sorted array of edges(by weight) is shown below:

```plain-text
matrix: O(|V|×|V|)
adjacency list + sorted array:
    O(|E|×|log V|)
```


---

## Revision

Prim's algorithm can be applied for

???

- connected, weighted undirected graphs
- any weighted undirected graphs
- any weighted graphs
- any weighted connected graphs


---

## Quiz

### which algorithm is to be use in the following scenario?


Consider a complete, weighted graph. If we want to compute its minimum spanning tree,
which starts from a given node we choose, which algorithm should we use?

 ???

- Prim’s algorithm
- Kruskal’s algorithm
- Knapsack algorithm
- Dijkstra’s algorithm


---

## Footnotes

[1:Dense graphs]
A dense graph is a graph in which the number of edges is close to a complete graph's number of edges. A complete graph is a graph for which there is an `edge between any two nodes`.

The maximal number of edges of a directed graph is `|V|×|V-1|`, while for an undirected one it is `(|V|×|V-1|)/2`.

[2: Graph Representation]
If you remember the first Data Structure and Algorithm insight, we said that different data structures are optimized for different types of operations.
