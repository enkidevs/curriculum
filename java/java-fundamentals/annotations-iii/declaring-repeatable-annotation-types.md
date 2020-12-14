---
author: adamMontgomerie
type: normal
category: tip
tags:
  - annotations
  - meta-annotations
  - java-8
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/annotations/repeating.html){website}
---

# Declaring `@Repeatable` annotation types


---

## Content

As of Java 8, it is possible to apply the same type of annotation more than once to a single declaration. In order to do this, when defining a new annotation type, the `@Repeatable` meta-annotation must be used.

```plain-text
@Repeatable(Contributors.class)
public @interface Contributor {
  String firstName();
  String lastName();
  String jobTitle();
}
```

The `@Repeatable` annotation comes before the definition of the annotation we wish to make repeatable.

The compiler stores repeated annotations within a container. We also need to define this container. Inside brackets immediately after the `@Repeatable` annotation, the name of the container must be specified; in this case `Contributors`. The container should be defined in the following way:

```plain-text
public @interface Contributors {
  Contributor[] value();
}
```

The container has one field which is an array of the type of annotation we wish to store.
 
