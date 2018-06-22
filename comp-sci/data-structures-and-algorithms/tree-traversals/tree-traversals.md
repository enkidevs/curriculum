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

  - '[Tree traversals](https://en.wikipedia.org/wiki/Tree_traversal){website}'

parent: primality-test

---

# Tree Traversals

---
## Content

*Tree traversal* (also known as *tree search*) is the process of visiting each node in the tree data structure once. The order in which the algorithm visits the nodes serves for classifying them.

In contrast to linear traversal of one-dimensional data structures, there are different ways in which to traverse a tree. Two of them are:
- Depth-first traversal
- Breadth-first traversal

The name of a traversal comes from the order in which it visits the nodes:
- The one that visits nodes downwards first, through *"generations"*. (Depth-first)
- The one that visits nodes across first, on the *same level*. (Breadth-first)

Having multiple ways to traverse a tree is useful when you need to deal with sorted trees, like *Binary Search Tree*, for which a particular depth-first traversal visits the nodes in ascending order.

Because a tree is self-referential[1], a common way of performing these searches is using *recursion*.


In the following insights we will assume that a left node has priority over the right ones.

## Breadth-first traversal

**Breadth-first traversal** (also known as *Breadth-first Search* or *BFS*) is the tree traversal that prioritize neighbors (nodes on the same level) over nodes on other levels.

Let’s consider the tree:

![treeex](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M350%2085c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C373.560339%2021.6072003%20362.551767%2015%20350%2015c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM210%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C233.560339%20121.6072%20222.551767%20115%20210%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zM100%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C123.560339%20222.6072%20112.551767%20216%20100%20216c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035zm220-1c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C343.560339%20221.6072%20332.551767%20215%20320%20215c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm170-100c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C513.560339%20121.6072%20502.551767%20115%20490%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22477.998047%22%20y%3D%22166%22%3EG%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M350%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C373.560339%20121.6072%20362.551767%20115%20350%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%22166%22%3EF%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22197.998047%22%20y%3D%22166%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22307.998047%22%20y%3D%22265%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M50%20385c19.3299662%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.2625561-18.466673C73.5603395%20321.6072%2062.5517669%20315%2050%20315c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2237.9980469%22%20y%3D%22366%22%3ED%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M600%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C623.560339%20222.6072%20612.551767%20216%20600%20216c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22587.998047%22%20y%3D%22267%22%3EH%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2287.9980469%22%20y%3D%22267%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%2266%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325.27056%2075.9005944l-93.305402%2046.2707536m143.680216-46.4627484l89.005263%2049.5755164M124.832786%20226.630334l60.724369-50.675908m50.17766-1.621328l60.021434%2051.186277m219.350442-50.451869l60.148477%2050.160539M350.677448%2085.3023895l.200744%2030.2308945M75.4063679%20275.681633l-24.6070053%2039.464642%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)

The visiting order for BFS is:

![bfs](%3Csvg%20width%3D%22100%25%22%20height%3D%22auto%22%20viewBox%3D%220%200%20700%20400%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3Ctitle%3EArtboard%3C%2Ftitle%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Cpath%20d%3D%22M350%2085c19.329966%200%2035-15.6700338%2035-35%200-6.7781994-1.926799-13.1063707-5.262556-18.4666731C373.560339%2021.6072003%20362.551767%2015%20350%2015c-19.329966%200-35%2015.6700338-35%2035s15.670034%2035%2035%2035zM210%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C233.560339%20121.6072%20222.551767%20115%20210%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zM100%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C123.560339%20222.6072%20112.551767%20216%20100%20216c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035zm220-1c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C343.560339%20221.6072%20332.551767%20215%20320%20215c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035zm170-100c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C513.560339%20121.6072%20502.551767%20115%20490%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22477.998047%22%20y%3D%22166%22%3EG%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M350%20185c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C373.560339%20121.6072%20362.551767%20115%20350%20115c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%22166%22%3EF%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22197.998047%22%20y%3D%22166%22%3EB%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22307.998047%22%20y%3D%22265%22%3EE%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M50%20385c19.3299662%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.2625561-18.466673C73.5603395%20321.6072%2062.5517669%20315%2050%20315c-19.3299662%200-35%2015.670034-35%2035s15.6700338%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2237.9980469%22%20y%3D%22366%22%3ED%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M600%20286c19.329966%200%2035-15.670034%2035-35%200-6.778199-1.926799-13.106371-5.262556-18.466673C623.560339%20222.6072%20612.551767%20216%20600%20216c-19.329966%200-35%2015.670034-35%2035s15.670034%2035%2035%2035z%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22587.998047%22%20y%3D%22267%22%3EH%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%2287.9980469%22%20y%3D%22267%22%3EC%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2240%22%20font-weight%3D%22300%22%20fill%3D%22currentColor%22%3E%3Ctspan%20x%3D%22337.998047%22%20y%3D%2266%22%3EA%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20d%3D%22M325.27056%2075.9005944l-93.305402%2046.2707536m143.680216-46.4627484l89.005263%2049.5755164M124.832786%20226.630334l60.724369-50.675908m50.17766-1.621328l60.021434%2051.186277m219.350442-50.451869l60.148477%2050.160539M350.677448%2085.3023895l.200744%2030.2308945M75.4063679%20275.681633l-24.6070053%2039.464642%22%20stroke%3D%22currentColor%22%20stroke-width%3D%222%22%2F%3E%3Cpath%20d%3D%22M302%2079l-53.875243%2026.409433m8.377072-7.4474601l-8.377072%207.4474601%2011.018015-2.059936M256%20150h49m-10.8%203l10.8-3-10.8-3m100.8%203h50m-10.8%203l10.8-3-10.8-3M155%20250h109.018347m-10.8%203l10.8-3-10.8-3M404%20250h109.018347m-10.8%203l10.8-3-10.8-3M434%20183l-270%2048m10.108175-4.844048L164%20231l11.158375%201.063328M538%20278l-418%2069m10.167194-4.718915L120%20347l11.144401%201.200972%22%20stroke%3D%22%23FFF%22%20stroke-width%3D%222%22%2F%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22265.499023%22%20y%3D%2287%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22273.499023%22%20y%3D%22146%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22413.499023%22%20y%3D%22146%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22304.499023%22%20y%3D%22199%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22204.499023%22%20y%3D%22245%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22319.499023%22%20y%3D%22307%22%3E7%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20font-family%3D%22RobotoMono-Light%2C%20Roboto%20Mono%22%20font-size%3D%2220%22%20font-weight%3D%22300%22%20fill%3D%22%23FFF%22%3E%3Ctspan%20x%3D%22455.499023%22%20y%3D%22245%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)

And it outputs:
```
A, B, F, G, C, E, H, D
```
A full traversal of the tree takes *O(n) time* and *O(n) space*[2], where n is the number of nodes.

---
## Practice

Which node will be prioritized after *B* in a breadth-first traversal?
```
         D
       /   \
      B     E
    /   \
   C     A
```
???

* E
* D
* A
* C

---
## Revision

Which type of tree traversal visits the children before the nodes on the same level?

???

* Depth-first
* Breadth-first
* Children-first

---
## Footnotes
[1:Self-referentiality]
Every node references its children and, maybe, its parent, thus allowing movement through the tree wherever the starting point is chosen.

[2:Big-O for space]
Just as the time function can be bounded, the memory used by a data type or algorithm can be quantified. For example, different graph representations have different space requirements: the matrix requires `O(|V*V|)` space, while the edge list and node list combination requires `O(|E+V|)` space.

*|V|*, *|E|* are the number of vertices and edges, respectively.
 
