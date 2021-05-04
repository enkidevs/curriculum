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

# Polymorphism


---

## Content

**Polymorphism** is a principle in object-oriented programming that refers to the ability of *child classes* to define their own behavior, while also sharing some functionalities with the *parent class*.

In other words, it is the ability of an object to take different forms.

To demonstrate a polymorphic feature, let `FamilyCar` extend the `Car` class. Because a `FamilyCar` object might have the same `noDoors` as a normal car, but more seats, it makes sense to include this field:

```java
public FamilyCar extends Car {
  int noSeats;

  public FamilyCar(... int newNoSeats) {
    super(...);
    noSeats = newNoSeats;
  }

  void start() {
    System.out.println("The " + noSeats
     + " seat car starts!");
  }
}
```

At the same time, we can have a `SportsCar`. For this particular class, it would help to know if the engine is turbo charged or not:

```java
public SportsCar extends Car {
  boolean turboCharged;

  public SportsCar(... boolean charged) {
    super(...);
    turboCharged = charged;
  }

  void start() {
    if (turboCharged == true) {
      System.out.println("The turbocharged"
       + " car starts!");
    }
  }
}

```

In both cases, a new field has been added on top of the existing ones and `start()` method has been overridden to display these fields.

Here is a test program that creates three `Car` objects:

```java
public class TestCar {
  public static void main(String[] args) {
    Car car, fCar, sCar;
    car = new Car("awsomeCar","XC603",
         "blue",4);
    fCar = new FamilyCar("familyCar",
         "324AB","grey",4, 7);
    sCar = new SportsCar("sportsCar",
         "RAG12", "red", 2, true);
    car.start(); 
    fCar.start(); 
    sCar.start();
  }
}
```

With the output:

```bash
The car starts!
The 7 seat car starts!
The turbocharged car starts!
```

JVM calls the appropiate method for each of the variables, and not the generic type `start()` method.


---

## Practice

What is the output of the following snippet?

```java
FamilyCar fCar = new FamilyCar(
   "newFamilyCar","31G3G",
   "beige", 4, 5);
fCar.start();
// ???
```

- The 5 seat car starts!
- The car starts!
- The turbocharged car starts!
- The 5 door car starts!


---

## Revision

Polymorphism refers to the ability of an object to ???

- have multiple forms.
- inherit the parent's properties.
- extend the parent's forms.


---

## Quiz

### What will this output?


```java
class Main {
  private final String name;

  Main(String name) {
    this.name = name;
  }

  private String name() {
    return name;
  }

  private void say() {
    new Main("Stinky") {
      void printName() {
        System.out.println(name());
      }
    }.printName();
  }

  public static void main(String[] args) {
    new Main("Lessy").say();
  }
}
```

 ???

- Lessy
- Stinky
- Error: name() has private access
- Error: cannot find symbol name()
