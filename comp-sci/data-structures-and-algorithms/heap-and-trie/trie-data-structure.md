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

links:

  - '[Working With Tries](https://medium.com/algorithms/trie-prefix-tree-algorithm-ee7ab3fe3413){website}'

parent: o-logn-operations-for-heaps

---

# The Trie Data Structure

---
## Content

A **trie**, also know as *radix tree* or *prefix tree*, is an ordered tree structure that stores sets or arrays having one or more relations between the elements.

Unlike a *binary search tree*, an element of a trie isn't a *independent entity*, but more of a sequence of states following one another.

The best example that uses the trie data structure is the autocomplete function of smartphones: the entry node represents the empty character as you press space, then it gives suggestions of words (represented as leaves) that can be obtained extending the current character sequence (path between the current node and a leaf).

![trie](https://img.enkipro.com/a5ed10e77fadaabfbe50f952564b9916.png)

A node that has a *value associated* represents a word with a higher or lower chance to be picked by the autocomplete function.

Looking up data in a *trie* is fast; the worst case takes *O(m)*, where *m* is the length of the string, and you don't have to worry about two different words ending up in the same location (*collision*).

The drawback is that *tries* can take up a lot of space because they save each intermediate step. It is also hard to prevent adding long, meaningless sequences of characters to the trie.

They are also called *prefix trees* because a *pre-order traversal* would visit the nodes in *lexicographical order*.

---
## Revision

How long does searching for a word take?

???

* O(word's length)
* O(trie's size)
* O(word's length * trie's size)
* O(log n)


