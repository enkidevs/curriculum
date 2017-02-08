# tree-traversals
author: mihaiberq

levels:
 - basic

type: undefined

category: must-know

---
## Content

*Tree traversal* (also known as *tree search*) is the process of visiting each node in the tree data structure once. The order in which the algorithm visits the nodes serves for classifying them.

In contrast to linear traversal of one-dimensional data structures, there are different ways in which to traverse a tree. Two of them are:
- Depth-first traversal
- Breadth-first traversal

The name of a traversal comes from the order in which it visits the nodes:
- The one that visits nodes downwards first, through _"generations"_. (Depth-first)
- The one that visits nodes across first, on the _same level_. (Breadth-first)

Having multiple ways to traverse a tree is useful when you need to deal with sorted trees, like *Binary Search Tree*, for which a particular depth-first traversal visits the nodes in ascending order.

Because a tree is self-referential[1], a common way of performing these searches is using *recursion*.


In the following insights we will assume that a left node has priority over the right ones.

---
## Practice

In what order will the nodes be visited during a breadth-first traversal?
```
          A
       /  |  \
      C   G   E
      |  /  / | \
      B  F  H D  I
???
```
*`A,C,G,E,B,F,H,D,I`
*`A,C,B,G,F,E,H,D,I`
*`B,F,H,D,I,C,G,E,A`
*`A,B,C,D,E,F,G,H,I`
---
## Revision

Which type of tree traversal visits the children before the nodes on the same level?

???
*Depth-first
*Breadth-first
*Children-first
---
## Footnotes

[1:Self-referentiality]
Every node references its children and, maybe, its parent, thus allowing movement through the tree wherever the starting point is chosen.