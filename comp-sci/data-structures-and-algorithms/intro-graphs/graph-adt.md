---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know


links:

  - '[Graph representation](http://www.geeksforgeeks.org/graph-and-its-representations/){website}'

parent: the-components-of-a-graph

---

# Graph Representation and ADT

---
## Content

Consider this graph:
![digraph](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M212%20115c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C242.292%2033.495%20228.138%2025%20212%2025c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22198.873%22%20y%3D%2289%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M212%20275c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C242.292%20193.495%20228.138%20185%20212%20185c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22198.873%22%20y%3D%22249%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M80%20189c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C110.292%20107.495%2096.138%2099%2080%2099c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2266.873%22%20y%3D%22163%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M616%20275c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C646.292%20193.495%20632.138%20185%20616%20185c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22602.873%22%20y%3D%22249%22%3EF%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M526%20115c24.853%200%2045-20.147%2045-45%200-8.715-2.477-16.85-6.766-23.743C556.292%2033.495%20542.138%2025%20526%2025c-24.853%200-45%2020.147-45%2045s20.147%2045%2045%2045z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20fill%3D%22%23FFF%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2250%22%20font-weight%3D%22300%22%20letter-spacing%3D%22-3.75%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22512.873%22%20y%3D%2289%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M256%2063.5l323.647%20134.646M568.524%20196.767l11.123%201.38-8.82-6.92M555%20107l46%2077M592.886%20176.267L601%20184l-2.963-10.81M566%2094l54%2091M568.932%20104.82L566%2094l8.09%207.757M212%20115v68M209%20172.2l3%2010.8%203-10.8M259%20230L487.038%2096.978M479.22%20105.01l7.818-8.032-10.84%202.85M259%20216L484.257%2086.157M269.855%20213.206L259%20216l7.86-7.993M168%20217l-56-38M122.62%20182.582L112%20179l7.252%208.547M114%20113l52-32M158.374%2089.215L166%2081l-10.77%203.105%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

It must be said that there are 4 common ways of representing it:
- **Edge list**: maintains an unordered list of all edges, but makes it hard to find a particular edge or the edges incident to vertex v. For the above example, the list is:

```
[(E, C), (C, A), (A, E), (E, B),
 (B, E), (A, F), (B, F), (F, B)]
```
- **Adjacency list**: maintains a list of incident edges for each vertex. We assume we can sort the nodes alphabetically by labels, to keep a relative order.

```
[(A, E, F), // A goes to E and A goes to F
 (B, E, F),
 (C, A),
 (E, B, C),
 (F, B)]
```
- **Adjacency map**: maintains a map of incident edges for each vertex. For a vertex v, its map  *(key,value)* pair is equivalent to (*adjacentVertex(u)* , *edgeBetween(v,u)*). The only difference between the list and the map is the container (data structure) used to store them.
- **Adjacency (incidence) matrix**: maintains an _n*n_ matrix, for a graph with *n* vertices. Each cell represents an edge between *(v,u)*; if there is no edge, the value of the cell is null(or 0).


![matrix](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20300%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20d%3D%22M75%2050h550v200H75z%22%2F%3E%3Cpath%20d%3D%22M185%2050v200M295%2050v200M405%2050v200M515%2050v200M75%2090h550M75%20131h550M75%20171h550M75%20210h550%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%20stroke-linecap%3D%22square%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2238.4985352%22%20y%3D%2283%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2238.4985352%22%20y%3D%22123%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2238.4985352%22%20y%3D%22164%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2238.4985352%22%20y%3D%22203%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%2238.4985352%22%20y%3D%22242%22%3EF%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22229.498535%22%20y%3D%2242%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22121.498535%22%20y%3D%2242%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22341.498535%22%20y%3D%2242%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22449.498535%22%20y%3D%2242%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22560.498535%22%20y%3D%2242%22%3EF%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22121.498535%22%20y%3D%2283%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22121.498535%22%20y%3D%22124%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22121.498535%22%20y%3D%22203%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22121.498535%22%20y%3D%22242%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22121.498535%22%20y%3D%22164%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22232.498535%22%20y%3D%22124%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22341.498535%22%20y%3D%22164%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22341.498535%22%20y%3D%22124%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22341.498535%22%20y%3D%2283%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22232.498535%22%20y%3D%2283%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22232.498535%22%20y%3D%22164%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22232.498535%22%20y%3D%22203%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22232.498535%22%20y%3D%22242%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22341.498535%22%20y%3D%22203%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22341.498535%22%20y%3D%22242%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22452.498535%22%20y%3D%22203%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22561.498535%22%20y%3D%22203%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22561.498535%22%20y%3D%22164%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22561.498535%22%20y%3D%22124%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22561.498535%22%20y%3D%2283%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22452.498535%22%20y%3D%2283%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22452.498535%22%20y%3D%22124%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22452.498535%22%20y%3D%22164%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22452.498535%22%20y%3D%22242%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2230%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22561.498535%22%20y%3D%22242%22%3E0%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

Any *implementation* of a graph data type should provide these methods:
- `adjacent(v,u)` : *Returns* `true` if there is an edge between v and u.
- `inEdges(v)` : *Returns* a collection of edges that have *v* as their endpoint.
- `outEdges(v)` : *Returns* a collection of edges that have *v* as their start point.
- `getOpposite(v,e)` : *Returns* the node on the other end of edge e, with v as starting point.
- `getEdge(v,u)` : *Returns* the edge between v and u.
- `addVertex(v)` : *Adds* vertex v to the graph.
- `addEdge(v,u,x)` : *Adds* an edge with value x between v and u.
- `removeVertex(v)` : *Removes* vertex v and all incident edges from the graph.
- `removeEdge(e)` : *Removes* edge e from the graph.

---
## Practice

For any undirected graph represented as a matrix, you can be sure that the cells having the same value are (where _n_ is the number of vertices):

???

* `g[u][v]` and `g[v][u]`
* `g[0][0]` and `g[n-1][n-1]`
* `g[u][u]` and `g[v][v]`
* `g[u][v]` and `g[v-1][u-1]`

---
## Revision

Which of the following statements is describing an adjacency list?

???


* A list describing the set of neighbours for each node.
* An unordered list of all edges.
* A matrix of size N*N, where N is the number of nodes.

 
