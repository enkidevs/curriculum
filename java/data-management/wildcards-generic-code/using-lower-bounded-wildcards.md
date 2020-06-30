---
author: adamMontgomerie
type: normal
category: tip
tags:
  - generics
  - generic-methods
  - wildcards
  - collections
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/generics/lowerBounded.html){website}
---

# Using lower bounded wildcards


---

## Content

Lower bounded wildcards can be used to make a variable less restrictive. For example, the following method will only accept collections of type `List<Integer>`:

```java
public void method(List<Integer> list) {
  ...
}
```

Using a lower bounded wildcard `?`, we can modify the method to accept any `List` which contains `Integer` or any class which is a superclass of `Integer`:

```java
public void method(
  List<? super Integer> list) {
  ...
}
```

This method will now accept `List`s of supertypes of `Integer`, such as `Number` and `Object`.
