---
author: mihaiberq
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Default and `public` Modifiers


---

## Content

The **default** case is the one in which no keyword is present. A variable with no modifier is implicitly accessible by *all the classes* in the *package*.

This is what we have used until now:

```java
String model;

void start(){...}
```

The `public` modifier makes a variable, method or class visible to any other class, anywhere. However, if those external classes can be found outside of the package, that public class must be imported.

Because of the class inheritance, all `public` methods and variables are inherited by subclasses.

Every declaration of a class so far had the `public` keyword in it:

```java
public class Car{
  public Car(...){}
 ...
}

public class FamilyCar{
  public FamilyCar(...){}
 ...
}
```

A testing class could access the public fields and methods like this:

```java
public class Car{
  public String model;
  public void start(){...}
}

public class TestClass{
  public static void main(String[] args){
    Car car = new Car(...);
    car.model;
    car.start();
  }
}
```

One of the methods that should always be public is the `main()` method:

```java
public static void main(String[] args){}
```

Otherwise it couldn't be called by the Java interpreter.


---

## Practice

What do you have to do to use a public class from another package?

???

- Import that package.
- Nothing.
- Extend the class.
- Write a getter.


---

## Revision

Which is the *default* keyword modifier?

???

- no keyword
- default
- public
- protected
- modifier
