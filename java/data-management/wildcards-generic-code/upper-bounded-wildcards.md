---
author: adamMontgomerie
type: normal
category: tip
tags:
  - generics
  - generic-methods
  - wildcards
  - bounded-wildcars
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/generics/upperBounded.html){website}
---

# Upper bounded wildcards


---

## Content

Upper bounded wildcards can be used to make a variable less restrictive. For example, say we want to create a class which takes a `List` as a parameter. But we do not know whether the list will be `List<Number>`, `List<Integer>`, `List<Double>` or other subclasses of `Number`.

To solve this, we can use the wildcard `?` in place of a specific type. However, we do not want to accept *any* type; only ones that are subclasses of `Number`. To do this we can add an upper bound to the wildcard like this: `List<? extends Number>`:

```java
public void method(
  List<? extends Number> list) {
  for (Number elem : list) {
    ...
  }
}
```

This method will now be able to accept lists of any type that is a subclass of `Number`.
