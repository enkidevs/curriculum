# post-order-traversal
author: mihaiberq

levels:
 - basic

type: undefined

category: must-know

---
## Content

**Pre-order traversal** is a type of *depth-first traversal* in which the root of the tree is placed to the right of the right child. It only makes sense for *binary trees*.

Its implementation looks like this:
- Traverse the *left subtree* recursively.
- Traverse the *right subtree* recursively.
- *Modify/Display* the current node (starting with the root)

```
        A
      /   \
     B     F
    / \   / \
   C  E   G  H
  /
 D
```
*Post-order traversal* visits nodes in the following order:
```
D, C, E, B, G, H, F, A
```

The pseudocode for the recursive method is:
```
postorder(node)
  if (node = null)
    return
  postorder(node.left)
  postorder(node.right)
  doSomething(node)
```
---
## Practice

Chose the sequence that simulates a post-order traversal of the tree:
```
      A
    /   \
   B     C
 /   \    \ 
D     F    E
```
???
*D,F,B,E,C,A
*A,B,D,F,C,E
*D,B,F,A,C,E
*A,B,C,D,E,F
---
## Revision

Chose the sequence that simulates a post-order traversal of the tree:
```
      A
    /   \
   B     C
 /   \    \ 
D     F    E
```
???
*D,F,B,E,C,A
*A,B,D,F,C,E
*D,B,F,A,C,E
*A,B,C,D,E,F