# trie-data-structure
author: mihaiberq

levels:
	- basic

type: normal

category: must-know

---
## Content

A **trie**, also know as *radix tree* or *prefix tree*, is an ordered tree structure that stores sets or arrays having one or more relations between the elements.

Unlike a *binary search tree*, an element of a trie isn't a *independent entity*, but more of a piece in a puzzle. 

The best example that uses the trie data structure is the autocomplete function of smartphones: the entry node represents the empty character as you press space, then it gives suggestions of words (represented as leaves) that can be obtained extending the current character sequence (path between the current node and a leaf).

```text
         ( _ ) 
    A/     |c   \I
  (A)     (c)     (I)
 d/      a/       50
(Ad)    (ca)     
       r/  \t  
     (car) (cat)
      20    19
    e/  \s
 (care)  (cars)
   19      5
```
A node that has a value associated represents a word with a higher or lower chance to be picked by the autocomplete function.

Looking up data in a *trie* is fast: the worst case takes *O(m)*, where *m* is the length of the string, and you don't have to worry about two different words ending up in the same space (*collision*).

The drawback is that *tries* can take up more space than their counterparts and it is hard to prevent adding long, meaningless sequence of characters to the trie.

They are also called *prefix trees* because a *pre-order traversal* would visit the nodes in *lexicographical order*.

---
## Revision

In a trie, what happens to the words as you move away from the root?

???
*Their length increases.
*Their length decreases.
*They are more likely to be picked.
*They are less likely to be picked.