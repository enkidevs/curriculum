---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - nested-classes
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/javaOO/nested.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using inner classes


---

## Content

Nesting a class within another class is possible. A non-static nested class is called an inner class. Inner classes are defined in the same way as other classes, but within the definition of an outer class:

```java
class OuterClass {
    ...
    class InnerClass {
        ...
    }
}
```

An instance of an inner class can only exist within an instance of its outer class. An inner class has access to all of its outer class' fields and methods.

Advantages of using an inner class:

- *Increased encapsulation*: allows an outer class to declare its members private while still having them be accessible by an inner class.
- *Logical class grouping*: classes that are only used by one other class can be embedded within the class that uses them.
- *Increased readability*: it is easier to understand how an inner class is to be used since it appears within the class that will use it.


---

## Practice

Which of the advantages of using inner classes is this statement describing: ‘It’s easier to understand how an inner class is to be used since it appears inside the class using it.’ 

???

- Increased readability
- Increased encapsulation
- Logical class grouping


---

## Revision

An instance of an ??? can only exist within an instance of its outer class. An advantage of using an inner class is ???.

- inner class
- increased encapsulation
- reduced compilation times
- parent class
- class
- reduced readability
