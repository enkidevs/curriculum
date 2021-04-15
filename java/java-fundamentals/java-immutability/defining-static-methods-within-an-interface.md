---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - java-8
  - interfaces
  - static-methods
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/IandI/defaultmethods.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Defining `static` methods within an `interface`


---

## Content

As of Java 8, it is possible to add implementations of `static` methods to interfaces. This allows utility methods to be included in a relevant interface rather than a separate utility class.

```java
public interface AnInterface {
  void method1();
  void method2();
  static int staticMethod(int a, int b) {
    return a * b;
  }
}
```

Classes which implement this interface do not need an implementation of `staticMethod`. In fact, since it is `static`, it cannot be overridden.

To call a static method, the interface should be used rather than the class which implements that interface. For example:

```java
int x = AnInterface.staticMethod(5, 10);
```


---

## Practice

Complete the following code such that the `EnkiInterface` interface will have a static method returning an `int`:

```java
public ??? EnkiInterface {
 ??? ??? myStaticMethod(){
   return 5;
 }
}
```

- `interface` 
- `static` 
- `int` 
- `long` 
- `Interface` 
- `Class` 
- `long` 
- `void`


---

## Revision

Can `static` methods inside an interface be overridden?

???

- `No` 
- `Yes`
