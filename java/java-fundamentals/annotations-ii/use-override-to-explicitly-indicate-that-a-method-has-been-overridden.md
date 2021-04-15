---
author: adamMontgomerie
type: normal
category: tip
tags:
  - inheritance
  - overriding-methods
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=223){website}
---

# Use `@Override` to explicitly indicate that a method has been overridden


---

## Content

It is possible to override methods in Java without explicitly declaring it, however it is good practice to indicate that this is a method redefinition by using `@Override`.

Using `@Override` allows the compiler to check that the method does actually override a method in the superclass. If the method does not override a method in the superclass, then the compiler will produce an error.
 
