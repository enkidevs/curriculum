---
author: adamMontgomerie
type: normal
category: tip
tags:
  - abstract
  - static
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/IandI/abstract.html){website}
---

# `abstract` classes can have `static` members


---

## Content

An `abstract` class cannot be instantiated, so any instance methods that have been implemented cannot be called. 

However, it is possible to also declare `static` methods within an `abstract` class.  Because `static` methods belong to a class rather than an instance of that class, it is possible to call these `static` methods from an `abstract` class.

```java
abstract class AClass {
  abstract void method1();
  static int staticMethod(int a) {
    return a * 2;
  }
}
```

The `abstract` class above contains a `static` method. It can be called like this:

```java
int x = AClass.staticMethod(2);
```

An `abstract` class can also have `static` fields.
