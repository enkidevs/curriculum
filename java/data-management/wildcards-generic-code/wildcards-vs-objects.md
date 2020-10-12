---
author: kld14
type: normal
category: caveats
tags:
  - wildcard
links:
  - >-
    [More on Generics by
    Oracle](https://docs.oracle.com/javase/tutorial/java/generics/index.html){website}
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/extra/generics/morefun.html){website}
---

# Wildcards vs Objects


---

## Content

`Set<?>` can be used to indicate the apparent type of "any" set. The `?` is a wildcard. This wildcard can match any type.

A `String` can be added to `Set<Object>` because `String` is an `Object`. However, `String` cannot be added to `Set<?>` due to the fact that the wildcard in `Set<?>` could indicate something that is not a `String`, for instance, `Set<Scanner>`.
 
