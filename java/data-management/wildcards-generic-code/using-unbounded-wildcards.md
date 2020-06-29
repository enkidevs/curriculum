---
author: adamMontgomerie
type: normal
category: tip
tags:
  - generics
  - generic-methods
  - wildcards
  - unbounded-wildcards
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/generics/unboundedWildcards.html){website}
---

# Using unbounded wildcards


---

## Content

Using unbounded wildcards can allow a method to accept a collection with any type. For example, `List<?>` used as a parameter means that the method can take a `List` containing any type as a parameter.

```java
public void printList(List<?> list) {
  for(Object e : list) {
    System.out.println(e);
  }
}
```

The `printList` method can take a `List` containing any type as a parameter. This allows us to print the contents of any `List`.
