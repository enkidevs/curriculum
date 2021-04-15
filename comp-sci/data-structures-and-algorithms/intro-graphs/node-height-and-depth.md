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

# Node Height and Depth


---

## Content

The **height of a node** is the number of edges on the *longest path* from that node to a leaf[1].

Moreover, we can say that the **height of a tree** is the *height of the root node*.

The **depth of a node** is number of edges from the node to the root of the tree. A root always has a depth of *0*. We cannot talk about the *depth of a tree*.

For example:

```plain-text
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

*Note*: When we are talking about the *height*, we take a leaf as the reference point. Additionally, when we talk about *depth*, we take the root as the reference point.


---

## Practice

What *depth and height* do the following nodes have?

```plain-text
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

What *depth and height* do the following nodes have?

```plain-text
          A
         /
        B
        |
        C
A: ???
B: ???
C: ???
```

- `D0/H2`
- `D1/H1`
- `D2/H0`
- `D2/H2`


---

## Footnotes

[1:Leaf]
In computer science, a leaf represents a node with **no children**.
