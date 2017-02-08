# bellman-ford-algorithm
author: mihaiberq

levels:
 - beginner
 - basic

type: undefined

category: must-know

---
## Content

**Bellman-Ford algorithm** computes the shortest paths from a single source vertex to all the other vertices in a *weighted graph*. The difference between *Dijkstra's* and *Bellman-Ford* is that the later, even if it is slower, works for graphs whose edges have *negative weights*.

If a graph contains a *negative cycle* (the weight of the edges sum to a negative value) reachable from the source, there wouldn't be a *cheapest path* since it would get cheaper with every *walk*[1] around that cycle.

Like *Dijkstra's*, this algorithm is based on the principle of *relaxation*[2]. In *Bellman-Ford*, instead of visiting each node using a *closest-first approach*, *V-1* iterations are done, where *V* is the number of vertices (for a graph with 5 vertices, the maximum number of iterations would be 4).

Because the implementation differs from one graph representation to another, the following way of applying it may not always work[3].

The algorithm follows the pattern:
- Instantiate two data structures, one for *distances* between the nodes and one for *predecessors* of the nodes.
- Initialize the distance to *0* for the *initial node* and *infinity* for the rest of them. Initialize all the *predecessors* as *null*.
- While *iterating* for *V-1* times (number of *vertices-1* times):
  - If the node is *not reachable*, move on for now.
  - Else, update the *node*'s distance if the new one is smaller than the old one
  - Move on to the next node, until all of them are visited (trying to visit skipped nodes again)
- You can terminate the algorithm earlier if the distances stop changing.

The *pseudocode* looks like this:
```javascript
function BellmanFord(vertices,
                     edges,source)
  distance[],predecessor[]
  for each vertex v in vertices
    distance[v]←inf             
    predecessor[v]←null         
    
  distance[source]←0
   
  for i from 1 to size(vertices)-1:
    foreach edge (v, u) edges:
      w←weight((v,u))
      newD←distance[v] + w
      if newD < distance[u]:
        distance[u]←newD
        predecessor[u]←v
  // to check for negative cycles
  foreach edge (v, u) in edges:
    newD←distance[v] + weight(v,u)
    if newD < distance[u]:
      print 'Graph has a negative 
              cycle'
  return distance[], predecessor[]
```

The algorithm runs in *O(V×E)* time, where *V* and *E* are numbers of vertices and edges, respectively.

---
## Footnotes

[1:Walk]
Also known as **chain**. A sequence of nodes and edges, for whichever two consecutive nodes, there *exists* an edge between them.

In a directed graph, the ordering of the nodes must be consistent with the direction of the edges.

[2:Relaxation]
Assigning an initial approximate value to the distance (i.e. infinity), then replacing it by more accurate ones.

[3:Assumption]
We will assume that the *directed graph* is represented using a *nodes list* and a map with *(edge, weight)* pairs, for which the directed *edge* from *u* to *v* is represented as *(u,v)*.

The map will contain pairs like *((u,v),weight))*.