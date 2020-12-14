---
author: adamMontgomerie
type: normal
category: pattern
tags:
  - design-patterns
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=21){website}
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=40){website}
---

# Static factory methods


---

## Content

Factory methods are static methods which return an instance of a class. Several advantages of this are:

- able to return a subtype of the return type.
- able to return an object with an implementation class that is unknown to the caller.
- do not necessarily need to create a new object each time they are called; objects can be cached and recycled.

```java
public class Animal{
  //factory method
  public static Animal getInstance(){
    return new Animal();
  }
  //private constructor
  private Animal(){}
}
```

In the above example, the constructor is private to guarantee that instances of `Animal` can only be created using the `getInstance()` factory method.
