---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

aspects:

  - deep

  - workout

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

![treeex](https://img.enkipro.com/857d47ddc50f5dfa0e2947ab092854df.png)

The visiting order for BFS is:

![bfs](https://img.enkipro.com/f94e05dd3aef718eb49094bca2c19b87.png)

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

