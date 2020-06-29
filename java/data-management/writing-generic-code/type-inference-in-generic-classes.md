---
author: adamMontgomerie
type: normal
category: tip
tags:
  - generics
  - type-inference
  - java-7
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/generics/types.html){website}
---

# Type inference in generic classes


---

## Content

Using generic classes in Java can sometimes result in verbose syntax, for example:

```java
Map<Integer, List<String>> hashMap = 
  new HashMap<Integer, List<String>>();
```

In Java 7+, we can simplify this by using the compiler's ability to infer the type arguments from context. This allows us to avoid specifying the same type arguments multiple times. The previous example now becomes:

```plain-text
Map<Integer, List<String>> hashMap =
  new HashMap<>();
```

We now only have to state the type arguments once. The compiler will be able to infer from this assignment statement that the type of the `new HashMap<>()` should be `<Integer, List<String>>`.
