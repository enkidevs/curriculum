# Hashing
author: nickdaminov

levels:

  - medium

type: normal

category: feature

links:

  - '[More on Hashing](https://en.wikipedia.org/wiki/Hash_function)'
  - '[Java Object HashCode](https://docs.oracle.com/javase/7/docs/api/java/lang/Object.html#hashCode())'

---
## Content

**Hashing** a process of mapping an arbitrary size data to a fixed size data which satisfies certain properties. In *Java* each object has a hash value defined by `public int hashCode()` function which returns a hash value implemented in the `Object` class. This function has following properties:
 - If two objects are *"equal"*, then they have the same hash value, equality of two objects is provided by `public boolean equals(Object obj)` method.
 - Hash function always returns the same integer if invoked on the same object, disregarding of the `equals()` method.
 - If two objects are different by the `equals()` method it is not required for them to produce different hash value.

`hashCode()` can be used in `HashMaps`, `HashSets` and other collections where each value corresponds to the unique key. Both `hashCode()` and `equals()` methods can be overridden and in practice whenever one method is changed the other must be as well, that is due to them working close together.

---
## Revision

What is the concept of encoding an arbitrary data into a fixed size number in a unique way called?

???

* Hashing
* Overriding
* Inheritance
