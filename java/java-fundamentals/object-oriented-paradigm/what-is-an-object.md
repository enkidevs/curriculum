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

# What Is an Object?


---

## Content

An **object** is the representation of a blueprint. In other words, an *object* is created from a *class*. In Java, the `new` keyword is used to create an object. 

This is how the `Car` constructor looks like:

```java
public Car(String newModel, String
     newNoPlate, String newColor,
                  int newNoDoors) {
     model = newModel;
     noPlate = newNoPlate;
     color = newColor;
     noDoors = newNoDoors;
}
```

And this is how you create a `Car` object:

```java
Car myCar = new Car("AwsomeCar",
            "RA-325F1", "red", 2);
```

There are three steps for creating a new object:

- `Declaration`: a variable declaration with a type and a name.
- `Instantiation`: the `new` keyword is used.
- `Initialization`: constructor method is called.

To start a `Car`, you have to call the `start()` method. To start the `myCar` object, the method must be called on it:

```java
myCar.start();
```

This ensures only `myCar` starts, and not the other `Car` object that exists in the program.

In case we want to check what model `myCar` is, we can access its fields like this:

```java
System.out.println(myCar.model);

// AwsomeCar
```


---

## Practice

What is the keyword used when instantiating objects?

???

- `new`
- `build`
- `new*`
- `static`


---

## Revision

The `initalization` part of creating an object refers to

???

- the constructor method being called
- the new keyword being used
- the variable being declared
