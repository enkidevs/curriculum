---
author: nickdaminov
type: normal
category: feature
links:
  - '[More on Hashing](https://en.wikipedia.org/wiki/Hash_function){website}'
  - >-
    [Java Object
    HashCode](https://docs.oracle.com/javase/7/docs/api/java/lang/Object.html#hashCode()){website}
  - >-
    [String
    Hashcode](https://docs.oracle.com/javase/7/docs/api/java/lang/String.html#hashCode()){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Hashing


---

## Content

**Hashing** is a process of mapping an arbitrary size data to a fixed size data which satisfies certain properties. In *Java* each object has a hash value defined by `public int hashCode()` function which returns a hash value implemented in the `Object` class. This function has following properties:

- If two objects are *"equal"*, then they have the same hash value, equality of two objects is provided by `public boolean equals(Object obj)` method.
- Hash function always returns the same integer if invoked on the same object, disregarding of the `equals()` method.
- If two objects are different by the `equals()` method it is not required for them to produce different hash value.

`hashCode()` can be used in `HashMaps`, `HashSets` and other collections where each value corresponds to the unique key. Both `hashCode()` and `equals()` methods can be overridden and in practice whenever one method is changed the other must be as well, that is due to them working close together.

Although whenever we create a custom class, we need to implement `hashCode()` method in order to be able to store it in a *HashMap*, a lot of commonly used classes are provided with implementation of this method. For example, if we take `String` class:

```java
String s = "Enki";
System.out.println(s);
//Enki
System.out.println(s.hashCode());
//2164711
```


---

## Revision

What is hashing?

???

- Concept of encoding an arbitrary data into a fixed size number in a unique way.
- Concept of rewriting methods in a subclass if they already exist in a parent class.
- Specific order of inheritance from multiple classes.
