---
author: pawel
type: normal
category: caveats
tags:
  - class-hierarchy
notes: ''
---

# Sibling Classes


---

## Content

Sibling classes cannot be assigned to each other, even with an explicit cast. 
Because of that property, code below would cause a compile error.

```java
class Parent {}
class Child1 extends Parent {}
class Child2 extends Parent {}

Parent p = new Parent();
Child1 c1 = new Child1();
Child2 c2 = new Child2();

c1 = c2; // Compile error
```

To avoid such problems you can explicitly cast given class, however `ClassCastException` will be thrown at run-time.
