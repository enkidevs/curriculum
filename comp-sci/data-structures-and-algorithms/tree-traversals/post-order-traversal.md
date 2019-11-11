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

parent: in-order-traversal

---

# Post-order Traversal

---
## Content

**Post-order traversal** is a type of *depth-first traversal* in which the root of the tree is visited after the right child. It only makes sense for *binary trees*.

Its implementation looks like this:
- Traverse the *left subtree* recursively.
- Traverse the *right subtree* recursively.
- *Modify/Display* the current node (starting with the root)

![traversalex](https://img.enkipro.com/34487ad41bc6317f63440df48d238abb.png)

*Post-order traversal* visits nodes in the following order:

![postorder](https://img.enkipro.com/c87da5f3bbd3a924ba09783267696965.png)

With the output:
```text
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

* D,F,B,E,C,A
* A,B,D,F,C,E
* D,B,F,A,C,E
* A,B,C,D,E,F

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

* D,F,B,E,C,A
* A,B,D,F,C,E
* D,B,F,A,C,E
* A,B,C,D,E,F


