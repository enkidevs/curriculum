---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Step-by-step, interactive Bellman-Ford algorithm
    application](https://www-m9.ma.tum.de/graph-algorithms/spp-bellman-ford/index_en.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Bellman-Ford Algorithm


---

## Content

**Bellman-Ford algorithm** computes the shortest paths from a single source vertex to all the other vertices in a *weighted graph*. The difference between *Dijkstra's* and *Bellman-Ford* is that the latter, even if it is slower, works for graphs with *negative weighted* edges.

If the graph contains a *negative cycle* (the weight of the edges sum to a negative value) reachable from the source, every *walk*[1] around that cycle would decrease its cost - if this is the case, the algorithm should throw an error.

Why is this important? Because *Dijkstra's*, when run in such a situation, will never terminate as it will keep decreasing the path length by spinning around the negative cycle.

Like *Dijkstra's*, this algorithm is based on the principle of *relaxation*[2]. For *Bellman-Ford*, instead of visiting each node using a *closest-first greedy approach*, `|V-1|` iterations are done, where `|V|` is the number of vertices(e.g. for a graph with 5 vertices, the maximum number of iterations would be 4).

Because the implementation differs from one graph representation to another, the following way of applying the algorithm may not always work[3].

The algorithm follows a pattern:

- Instantiate two data structures, one for the *distances* between the nodes and one for the *predecessors* of the given nodes.
- Set the distance to `0` for the *initial node* and `infinity` for the rest. Initialize *predecessors* as `null`.
- `While` iterating |V-1| times:
  - `If` the node is *not reachable*, move on for now
  - `Else`, update the node's distance to the origin if the new one is smaller than the old one
  - Move on to the next node, until all of them are visited
  - Increment the while counter and start again
- You can terminate the algorithm earlier if the distances stop changing.

The *pseudocode* looks like this:

```plain-text
function BellmanFord(vertices,
                     edges,source)
  distance[],predecessor[]
  for each vertex v in vertices
    distance[v]←inf
    predecessor[v]←null

  distance[source]←0

  for i from 1 to size(vertices)-1:
    foreach edge(v, u) in edges:
      w←weight((v,u))
      newD←distance[v] + w
      if newD < distance[u]:
        distance[u]←newD
        predecessor[u]←v
  // check for negative cycles
  foreach edge (v, u) in edges:
    newD←distance[v] + weight(v,u)
    if newD < distance[u]:
      print `Graph has a negative
              cycle`
  return distance[], predecessor[]
```

The algorithm runs in `O(|V|×|E|)` time, where `|V|` and `|E|` are numbers of vertices and edges, respectively. Swipe left for an iteration of the algorithm.


---

## Revision

The main difference between Bellman-Ford and Dijkstra's algorithms is that

???

- Bellman-Ford works for graphs with negative-weighted edges
- Bellman-Ford is faster
- Bellman-Ford is slower
- Dijkstra's outputs the distance between the source and every other node


---

## Quiz

### which algorithm is to be use in the following scenario?


Suppose we have an undirected, complete, weighted (real numbers) graph.
Out of the following, which algorithm would work best for finding
the shortest paths between a source node and every other node?

 ???

- Bellman-Ford algorithm
- Prim’s algorithm
- Kruskal’s algorithm
- Dijkstra’s algorithm


---

## Footnotes

[1:Walk]
Also known as **chain**. A sequence of nodes and edges in which there *exists* an edge between any two consecutive nodes,

In a directed graph, the ordering of the nodes must be consistent with the direction of the edges.

[2:Relaxation]
Assigning an initial approximate value to the distance (i.e. infinity), then replacing it by more accurate ones.

[3:Assumption]
We will assume that the *directed graph* is represented using a *nodes list* and a map with *(edge, weight)* pairs, for which a directed *edge from u to v* is represented as *(u,v)*.

The map would, therefore, contain pairs like `((u,v),weight))`.
