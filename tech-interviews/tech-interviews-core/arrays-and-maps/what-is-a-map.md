---
author: nemanjaenki
category: must-know
type: normal
links:
  - '[What is a Map data structure?](https://www.quora.com/What-is-a-map-data-structure-How-does-it-store-data){discussion}'

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# What's a Map?

---
## Content

A Map is a data structure that links keys to values.

> 💡 Note that a dictionary or an associative array are different names for the same data structure, i.e. a key-value store. 

Finding a value by its key is O(1) because, no matter how big a map is, it takes the same time to do it[1].

![map-get-banana](https://img.enkipro.com/207792353e00a4117cbbc62594a8788f.gif)

Adding value to and removing values from a map are also unaffected by map size and are thus O(1).

![map-add-or-remove](https://img.enkipro.com/eebddfae318999c0c250463a9596cd74.gif)

> 💡 A Map is different from an array because it can typically contain anything as the key whereas arrays can only use numbers (usually called indexes).

---
## Practice

Adding an element into a map is ???

Removing an element from a map is the same.

???

- O(1)
- true
- O(N)
- false
- O(logN)
- O(K*V)

---
## Revision

A map key can be ???, but an array key can only be ???.

- any type
- an integer
- a string
- an object
- a boolean

---
## Footnotes

[1: Map Implementation]

Maps aren't always O(1)!

A Map is sometimes implemented as a HashMap, which is a Map with a special way of building keys.

This special way is something called a *hash function*, which is a function that takes in a value and returns a unique number for it, called a *hash code*, which is used as the key.

Except this value isn't always unique which leads to collisions (i.e. same key for different values). Maps have to account for that by adding the element into a different key or storing multiple elements at the same key, which makes some operations go from O(1) to O(N).