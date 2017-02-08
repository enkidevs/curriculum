# depth-first-traversal
author: mihaiberq

levels:
 - basic

type: undefined

category: must-know

---
## Content

**Depth-first traversal** (also known as *Depth-first search* or *DFS*) represents the tree traversal in which the left node's grandchildren are prioritized over the right nodes.


Let's consider the following tree:
```text
        A
      / | \
     B  F  G
    / \     \
   C   E     H
  /
 D

```

Following DFS pattern, the order in which the nodes are visited is:
```text
A, B, C, D, E, F, G, H
```

A full traversal of the tree takes  *O(n)* time and *O(n)* space[1], where *n* is the number of nodes. We can say the traversal is a *linear* function.


---
## Revision

Which node will be prioritized after *B* in a depth-first traversal?
```
         A
       /   \
      B     C
    /   \
   D     E
```
???
*D
*E
*A
*C
---
## Footnotes

[1:Big-O]
O(n) refers to the upper bound of the function. 