# pre-order-traversal
author: mihaiberq

levels:
 - basic

type: undefined

category: must-know

---
## Content

**Pre-order traversal** is a type of *depth-first traversal* in which the *root* of the tree is placed to the left of the left child. It only makes sense for *binary trees*.

It works like this:
- *Modify/Display* the data of the current node (starting with the root).
- Traverse the *left subtree *recursively.
- Traverse the *right subtree* recursively.

```
        A
      /   \
     B     F
    / \   / \
   C  E   G  H
  /
 D
```
*Pre-order traversal* will visit nodes in the following order: 
```
A, B, C, D, E, F, G, H
```

The pseudocode for the recursive method is:
```
preorder(node)
  if (node = null)
    return
  doSomething(node)
  preorder(node.left)
  preorder(node.right)
```
---
## Practice

Chose the sequence that simulates a pre-order traversal of the tree:
```
      A
    /   \
   B     C
 /   \    \ 
D     F    E
```
???
*A,B,D,F,C,E
*D,B,F,A,C,E
*D,F,B,E,C,A
*A,B,C,D,E,F
---
## Revision

Chose the sequence that simulates a pre-order traversal of the tree:
```
      A
    /   \
   B     C
 /   \     \ 
D     F     E
```
???
*A,B,D,F,C,E
*D,B,F,A,C,E
*D,F,B,E,C,A
*A,B,C,D,F,E