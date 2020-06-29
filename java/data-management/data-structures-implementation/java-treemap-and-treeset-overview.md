---
author: alex
type: normal
category: feature
tags:
  - data structures
links:
  - >-
    [en.wikipedia.org](https://en.wikipedia.org/wiki/Red%E2%80%93black_tree){website}
---

# Java TreeMap and TreeSet overview


---

## Content

Part of Java's Collections API are the TreeSet and TreeMap classes which provide fast search, insert, update and delete operations for persisting data.

The internal implementation is based on constructing a Red-Black tree which is basically a special form of a *Self-balancing Binary Search Tree (BST)* which ensures *O(logN) time complexity* for all operations in the worst case.

Another feature of having a BST as an internal implementation is that we can really efficiently in just *O(N) time iterate over data in its sorted order*. And since the data must have some order, the objects stored *must implement the `java.lang.Comparable<T>` interface*.

The difference between the TreeMap and TreeSet is that for each node in the BST, TreeMap stores a pair of a key and a value it maps to, while the TreeSet needs to store only the values.
 
