---
author: adamMontgomerie
type: normal
category: feature
tags:
  - annotations
  - meta-annotations
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/annotations/predefined.html){website}
---

# Specifying an annotation retention policy


---

## Content

Meta-annotations are annotations which apply to other annotations. The `@Retention` meta-annotation specifies the way in which an annotation should be stored. There are three available retention policies:

- `RetentionPolicy.SOURCE`: the annotation is ignored by the compiler and maintained only at source code level.
- `RetentionPolicy.CLASS`: the annotation is retained by the compiler but ignored by the JVM. 
- `RetentionPolicy.RUNTIME`: the annotation is retained by the JVM and so is available at runtime.

For example:

```java
@Retention(RetentionPolicy.RUNTIME)
@interface Introduction {
  String name();
  String date();
}
```

This annotation will be available at runtime.
