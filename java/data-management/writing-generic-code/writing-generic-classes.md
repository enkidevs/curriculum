---
author: adamMontgomerie
type: normal
category: tip
tags:
  - generics
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/generics/types.html){website}
---

# Writing generic classes


---

## Content

The following class can accept and return any type of object. It cannot, however, accept primitive types.

```java
public class Box {
  private Object object;
  public void set(Object object) {
    this.object = object;
  }
  public Object get() { 
    return object;
  }
}
```

If we want to create a class that can accept and return *any* type, we need to replace references in our code to `Object` with a generic type variable `T`.

```java
public class Box<T> {
  private T t;
  public void set(T t) { 
    this.t = t;
  }
  public T get() {
    return t;
  }
}
```

In a generic class, the `<>` following the class name is the type parameter. This is how you would instantiate an object of `Box` class that can accept and return any type:

```java
//a new box for holding integers:
Box<Integer> box1 = new Box<Integer>();
//can be declared like this in Java 7+:
Box<Integer> box2 = new Box<>();
```
