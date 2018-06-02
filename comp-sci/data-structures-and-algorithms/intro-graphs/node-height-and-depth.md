---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know



parent: the-tree-data-structure

---

# Node Height and Depth

---

## Content

The **height of a node** is the number of edges on the _longest path_ from that node to a leaf.

Moreover, we can say that the **height of a tree** is the _height of the root node_.

The **depth of a node** is number of edges from the node to the root of the tree. A root always has a depth of _0_. We cannot talk about the _depth of a tree_.

For example:

```text
          Depth 0
          Height 3
         /        \
     Depth 1     Depth 1
     Height 1    Height 2
     /      \         \
Depth 2   Depth 2    Depth 2
Height 0  Height 0   Height 1
                      /
                    Depth 3
                    Height 0
```

These concepts are applicable to **any type** of tree.

_Note_: When we are talking about the _height_, we take a leaf as the reference point. Additionally, when we talk about _depth_, we take the root as the reference point.

---

## Practice

What _depth and height_ do the following nodes have?

```
          A
        /   \
       B     C
             |
             D
A ???
B ???
C ???
D ???
```

- `D0/H2`
- `D1/H0`
- `D1/H1`
- `D2/H0`

---

## Revision

What _depth and height_ do the following nodes have?

```
          A
         /
        B
        |
        C
A ???
B ???
C ???
```

- `D0/H2`
- `D1/H1`
- `D2/H0`
- `D2/H2`
