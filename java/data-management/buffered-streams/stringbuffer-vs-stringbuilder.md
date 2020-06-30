---
author: fahimrahman
type: normal
category: tip
tags:
  - StringBuffer
  - StringBuilder
  - String-concatenation
links:
  - >-
    [docs.oracle.com](http://docs.oracle.com/javase/7/docs/api/java/lang/StringBuilder.html){website}
---

# `StringBuffer` vs `StringBuilder`


---

## Content

While both the clases can be used to concatenate strings, the key differences between `StringBuffer` and `StringBuilder` are:

- The `StringBuilder` class has *no guarantee of synchronization*, but provides an API compatible with `StringBuffer`. 

- `StringBuilder` is a drop-in replacement for `StringBuffer` for *use in a single thread* with no synchronization. 

Performance wise, `StringBuilder` is faster compared to `StringBuffer`, and hence should preferred under most implementations.
 
