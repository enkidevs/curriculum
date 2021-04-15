---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Step-by-step, interactive Dijkstra`s algorithm
    application](https://www-m9.ma.tum.de/graph-algorithms/spp-dijkstra/index_en.html){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Dijkstra's Algorithm


---

## Content

**Dijkstra's algorithm** is an algorithm for finding the shortest paths between nodes in a *weighted graph*[1].

*Shortest path* refers to the lowest-weight path, and not necessarily to the path with the lowest *number of edges*.

Usual implementations of this algorithm compute and store the minimum cost from the initial node to *all* other nodes.

*Dijkstra's algorithm* could be used to find a way to connect flights to reach a specific place.

The algorithm works like this:

- Assign an *initial node*.
- For every node, assign `infinity` as the *reference distance* to the initial node[2].
- Keep track of the unmarked nodes with a *tracking data structure* and mark the *initial node* as current.
- For the current node, consider all of its unvisited neighbors and calculate their *relative distance*. Compare the new distance with the old one (using `infinity` as the initial, reference value): if the new value is smaller, *update* the distance, otherwise keep the old value.
- Mark the current node as *visited*, to avoid an infinite loop.
- If the destination node has been checked[3] or if the smallest distance between the two is infinity[4], stop the algorithm.
- Else, select the unvisited neighbor of the current node with the *smallest tentative distance*, set it as *current node*, and go back to **4th** step.

The pseudocode is:

```plain-text
function Dijkstra(Graph, source)
  vSet[]
  dist[source]←0

  for each vertex v in Graph
    dist[v]←infinity
    prev[v]←undefined
    vSet add v

  while vSet is not empty
    v←vertex in vSet with minimum
                 distance
    remove v from vSet

    for each neighbor u of v
      newD←dist[v]+weight(v,u)
      if newD < dist[u]
        dist[u]←newD
        prev[u]←v

  return dist[], prev[]

```

If the implementation *does not* prioritize which node to visit next (or is used to traverse all the nodes),  the algorithm runs in *O(|V|×|V|)* time (where |V| is the number of nodes).

Swipe to the next insight to see a step by step iteration of the algorithm.


---

## Revision

What does Dijkstra's algorithm compute?

???

- The shortest path between nodes in an weighted graph.
- The number of connected components in a graph.
- The negative cycles in an weighted graph.


---

## Footnotes

[1:Weighted graph]
A graph in which every edge has numerical values (weight or cost) assigned to it.

```plain-text
         A   -   B
      3/     2
       D
        \
       6 \
          C

```

[2:Reference distance]
To be able to track the actual distance from the initial node to other nodes, a reference value must be used. As we are trying to find the lowest cost path, the larger the number we choose, the safer it is when performing the condition check.

The safest way to do it is to assign *distance 0* to the initial node and *distance infinity* to all the others.

[3:Known destination]
In case the destination node is known.

[4:Full traversal]
In case the algorithm computes a full traversal, value of `infinity` tells that the particular node is not reachable.
