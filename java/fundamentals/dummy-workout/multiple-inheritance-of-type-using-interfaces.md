---
author: adamMontgomerie

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

tags:

  - interfaces

  - inheritance

  - multiple-inheritance

links:

  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/IandI/multipleinheritance.html){website}

---
# Multiple inheritance of type using interfaces

---
## Content

A class cannot `extend` multiple classes. However, it is possible for a class to `implement` multiple interfaces. This is known as multiple inheritance of type. 
```
interface InterfaceA {
  void method1();
}
interface InterfaceB {
  void method2();
}
public class Implementer implements 
  InterfaceA, InterfaceB {
  public void method1();
  public void method2();
}
```
The class `Implementer` implements both `InterfaceA` and `InterfaceB`. This allows objects of type `Implementer` to be used with parameters and fields expecting either `InterfaceA` or `InterfaceB`.
 
