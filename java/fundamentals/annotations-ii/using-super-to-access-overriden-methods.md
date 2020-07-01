---
author: adamMontgomerie
type: normal
category: tip
tags:
  - inheritance
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/IandI/super.html){website}
---

# Using `super` to access overriden methods


---

## Content

When a subclass declares a method with a signature that is the same as a method in its superclass, that superclass method is overridden.

However, we can still access this overridden method by using the `super` keyword.

```java
public class SuperClass {
  public void method() {
    System.out.println("superclass");
  }
}
public class SubClass extends SuperClass {
  public void method() {
    System.out.println("subclass");
  }
}
```

`SubClass.method()` overrides `SuperClass.method()`. If we still wish to access `SuperClass.method()` from `SubClass` then we can use `super` like this:

```java
public class SubClass extends SuperClass {
  public void method() {
    System.out.println("subclass");
  }
  public void superMethod() {
    super.method();  
  }
}
```

Calling `super.method()` allows us to use `SuperClass`' `method()`.
