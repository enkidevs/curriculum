---
author: alex
type: normal
category: feature
links:
  - '[en.wikipedia.org](https://en.wikipedia.org/wiki/Hash_table){website}'
---

# Java HashSet and HashMap overview


---

## Content

Part of Java's Collections API are the HashSet and HashMap classes which provide fast search, insert, update and delete operations for persisting data.

The internal implementations are based on a HashTable which is basically an array of lists and *ensure O(1) amortized time complexity* for all operations.
How it all fits together:

- We need a key and a value to map to.
- The key has a hash code based on calling the #hashCode method which every object inherits from the Object super class.
- The key-value pair is inserted into the list on a specific index. That index is chosen based on the hash code of the key.
- When we search for a value by a given key, we use the has code of the key as a guidance for which list to look in.

Important: Proper implementations of the `hashCode` and `equals` methods are crucial! *Two equal keys must always return the same hash code!* The reverse, on the other hand, need not hold true.

> ❗ The classes don't provide any specific ordering of the data when iterating over it.
 
