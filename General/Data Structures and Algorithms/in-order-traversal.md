# in-order-traversal
author: mihaiberq

levels:
	- basic

type: normal

category: must-know

---
## Content

**In-order traversal** is a type of *depth-first traversal* in which the *root* of the tree is visited after the left child and before the right child. It only makes sense for *binary trees*.

It works like this:
- Traverse the *left subtree *recursively.
- *Modify/Display* the data of the current node (starting with the root).
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
*In-order traversal* will visit nodes in the following order: 
```
D, C, B, E, A, G, F, H
```

The pseudocode for the recursive method is:
```
inorder(node)
  if (node = null)
    return
  inorder(node.left)
  doSomething(node)
  inorder(node.right)
```

---
## Practice

Chose the sequence that simulates a post-order traversal of the tree:
```
      A
    /   \
   B     C
     \    \ 
      F    E
```
???
*B,F,A,C,E
*F,B,E,C,A
*A,B,F,C,E
*B,F,A,C,E

---
## Revision

Chose the sequence that simulates a post-order traversal of the tree:
```
      A
    /   \
   B     C
     \    \ 
      F    E
```
???
*B,F,A,C,E
*F,B,E,C,A
*A,B,F,C,E
*B,F,A,C,E