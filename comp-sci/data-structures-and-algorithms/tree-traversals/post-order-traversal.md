---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Post-order Traversal


---

## Content

**Post-order traversal** is a type of *depth-first traversal* in which the root of the tree is visited after the right child. It only makes sense for *binary trees*.

Its implementation looks like this:

- Traverse the *left subtree* recursively.
- Traverse the *right subtree* recursively.
- *Modify/Display* the current node (starting with the root)

![traversalex](https://img.enkipro.com/a60c49e26c0b710b7fd170527d2adf93.png)

*Post-order traversal* visits nodes in the following order:

![postorder](https://img.enkipro.com/333200d1ce66957302d8b7f18c707187.png)

With the output:

```plain-text
D, C, E, B, G, H, F, A
```

The pseudocode for the recursive method is:

```plain-text
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

```plain-text
      A
    /   \
   B     C
 /   \    \
D     F    E
```

???

- D,F,B,E,C,A
- A,B,D,F,C,E
- D,B,F,A,C,E
- A,B,C,D,E,F


---

## Revision

Chose the sequence that simulates a post-order traversal of the tree:

```plain-text
      A
    /   \
   B     C
 /   \    \
D     F    E
```

???

- D,F,B,E,C,A
- A,B,D,F,C,E
- D,B,F,A,C,E
- A,B,C,D,E,F
