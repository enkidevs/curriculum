# breadth-first-traversal
author: mihaiberq

levels:
 - basic

type: undefined

category: must-know

---
## Content

**Breadth-first traversal** (also known as *Breadth-first Search* or *BFS*) is the tree traversal that prioritize neighbors (nodes on the same level) over nodes on other levels. 

Let’s consider the tree:
```text
        A
      / | \
     B  F  G
    / \     \
   C   E     H
  /
 D
```
Visiting nodes using BFS pattern outputs:
```
A, B, F, G, C, E, H, D
```
A full traversal of the tree takes *O(n) time*  and *O(n) space*[1], where n is the number of nodes.

---
## Revision

Which node will be prioritized after *B* in a breadth-first traversal?
```
         D
       /   \
      B     E
    /   \
   C     A
```
???
*E
*D
*A
*C
---
## Footnotes

[1:Big-O]
O(n) refers to the upper bound of the function.