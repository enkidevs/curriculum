---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [How interfaces impact the
    code](http://stackoverflow.com/questions/504904/is-there-more-to-an-interface-than-having-the-correct-methods){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Java Interfaces


---

## Content

As the name says, **interfaces** in Java are a way to present *objects* to the world.  

The difference between *interfaces* and *classes* is that, while a class has to provide *implementation* for all the methods inside, an interface can only *declare* a method and pass the task of defining the behavior to the **other classes** that implement that interface.

For example, this is a class:

```java
public class Car {
  private String model;

  public void start() {
    System.out.println(model + " starts!");
  }
}
```

This is an interface:

```java
public interface Car {
  public void start();
  public void stop(int speed);
}
```

...and a class implementing it:

```java
public class FamilyCar implements Car {
  private String model;

  public FamilyCar(String newModel) {
    model = newModel
  }

  public void start() {
    System.out.println(model + " starts!");
  }

  public void stop(int speed) {
    if (speed < 30) {
      System.out.println(model +  
        "stops gently!");
    }
  }  
}
```

A common interface used in Java is the `List` one. Because a list is mostly conceptual and it can be *implemented* in many ways (`ArrayList`, `LinkedList` etc), it makes sense for it to be an interface.

We know **what** a list is supposed to do, and this is the type of data passed with an interface. **How** the list does it, depends on the list type: either using arrays or nodes.

An *interface* ensures the classes implementing it *provide* the methods for them to be considered `Cars`, but at the same time they are not restricted to **inherit** everything **extending** a `Car` class would mean.

Because an interface comes only with a model, a single class can implement as many interfaces as needed, unlike being able to extend a single class.

```java
public class AmphibiousCar implements
                    Car, Boat {
  public void start() {
   ...
  }
}
```

Even though both `Car` and `Boat` interfaces would have the `start()` method, it wouldn't do anything anyway, so there is no problem in choosing the right one to use in each case. This is the advantage **interfaces** have over *super classes*.


---

## Practice

Which of the following lines of code is not valid?

```java
1. public class FamilyCar extends Car {}
2. public class FamilyCar implements Car {}
3. public class AmphibiousCar implements
                           Car, Boat {}
4. public class AmphibiousCar extends Car,
                           Boat {}
```

???

- 4
- 1
- 2
- 3


---

## Revision

Complete the following snippet to make it runnable:

```java
public ??? Car {
  public void start();
}

public class FamilyCar implements Car {
   ...
}
```

- `interface`
- `//nothing`
- `class`
- `System.out.println("The car starts!");`
