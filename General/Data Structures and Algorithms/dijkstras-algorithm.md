# dijkstras-algorithm
author: mihaiberq

levels:
	- medium

type: normal

category: must-know

---
## Content

**Dijkstra's algorithm** is an algorithm that finds the shortest paths between nodes in a *weighted graph*[1].

*Shortest path* refers to the lowest-weight path, and not necessarily to the *number of edges* in that path.

Usual implementations of this algorithm compute and store the minimum cost from the initial node to *all* other nodes.

*Dijkstra's algorithm* could be used to find a way to connect flights to reach a specific place.

It works like this:
- Assign an *initial node*.
- For every node, assign a *reference distance* to the initial node[1].
- Keep track of the unmarked nodes with a *tracking data structure* and mark the *initial node* as current.
- For the current node, consider all of its unvisited neighbors and calculate their *relative distance*. Compare the new distance with the old one (this is where having infinity as the initial value comes in handy) : if the new value is smaller, *overwrite* the old one, otherwise keep the old value.
- Mark the current node as *visited*, not to check it again.
- If the destination node has been checked[2] or if the smallest distance between the two is infinity[3], stop the algorithm.
- Else, select the unvisited neighbor of the current node with the *smallest tentative distance*, set it as *current node*, and go back to **4th** step.

The pseudocode is:
```
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


If the implementation *does not* prioritize which node to visit next (or is used to traverse all the nodes),  the algorithm runs in *O(V×V)* time (where V is the number of nodes).


---
## Practice

What distances are available after first iteration of the algorithm, if the starting point is **E**?
```
            2
         A  -  B
      3/         \2
      C           D
    8/ \ 3       /5 
    F    --------E
```
???
*EC=3/ED=5
*EB=7/EC=3
*EA=inf/ED=inf
*EF=inf/EA=6

---
## Revision

What does Dijkstra's algorithm achieve?

???
*The shortest path between nodes in an weighted graph.
*The number of connected components in a graph.
*The negative cycles in an weighted graph.

---
## Footnotes

[1:Weighted graph]
A graph in which every edge has numerical values assigned to it. 
```
         A   -   B
      3/     2    
       D       
        \
       6 \         
          C          

```

[2:Reference distance]
To be able to track the actual distance from the initial node to other nodes, a reference value must be used. Because we are trying to find the lowest cost path, the bigger the number we choose, the safer it would be to perform the condition check. 

The safest way to do it is to assign *distance 0* to the initial node and *distance infinity* to all the others.

[3:Known destination]
In case the destination node is known.

[4:Full traversal]
In case the algorithm computes a full traversal, an infinity value tells that the particular node is not reachable.

