---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

inAlgoPool: false


links:

  - '[Why OOP makes sense](https://www.quora.com/What-is-the-difference-between-procedural-and-object-oriented-programming){website}'


---

# What Is a Class?

---

## Content

In Java, a **class** is a blueprint after which things with similar characteristics can be modeled. An example of a class is:

```
public class Car {
  String model;
  String noPlate;
  String color;
  int noDoors;

  void start() {
    System.out.println("The car starts!");
  }
  void drive() {}
  void handBreak() {}
}
```

_Variables_ declared _within_ a class, but _outside_ any method are called **instance variables**. They store a specific value for every copy of the blueprint and each copy has access to all the variables.

A **class** can have any number of variables or methods, and of any type. It is, however, considered best practice to add only relevant fields or functions. By convention, every class name should start with a _capital letter_.

### Constructor method

The matrix which transforms the blueprint into _something_ is called a **constructor method**. Every class should have a constructor. If one is not defined, the Java compiler will initialize the variables to their default value.

A constructor method should look like this:

```
public class Car {

  // fields

  public Car(String newModel, String
     newNoPlate, String newColor,
                  int newNoDoors) {
     model = newModel;
     noPlate = newNoPlate;
     color = newColor;
     noDoors = newNoDoors;
  }
}
```

A _constructor_ gives initial values to the _instance variables_, so the general blueprint can become an actual `Car` representation.

In other words, calling a constructor **initializes an object**.

---

## Revision

The method that creates a new object is called

???

- constructor
- instantiator
- class
- newObject
