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

# Inheritance


---

## Content

The most representative principle of *Object-Oriented Programming* is **inheritance**. It states that classes can be derived from other classes, with the *child classes* inheriting fields and methods from the *parent classes*.

Formally, a parent class is called a **superclass**, and a child class a **subclass**. 

Let's take the `Car` class as example. While it is a generic type, in an app we might be looking for something more specific, like `FamilyCar` and `SportsCar`. Each of those subclasses would have all the fields and methods of a `Car` object, on top of which they have their own properties.

If, for a family car, the number of seats would be important as well, the  `FamilyCar` class declaration would look like this:

```java
public FamilyCar extends Car {
  /* implicit fields obtained by extension
     String model;
     String noPlate;
     String color;
     int noDoors;  */
  int noSeats;
  // Constructor function

  public FamilyCar(String model, String
     noPlate, String color,
           int noDoors, int newNoSeats) {
    super(model,noPlate,color,noDoors);
    noSeats = newNoSeats;
  }

  /* inherited methods:
     void start(){}
     void drive(){}
     void handBreak(){}
  */
}
```

The two keywords here are `extends` and `super()`. The first tells the JVM that the new class should inherit `Car` properties. The second calls the `Car` constructor to initialize inherited fields.

The `super()` method has to be the *first statement* in the constructor, or otherwise an error is thrown.

The `SportsCar` class would look almost the same, but here it makes sense to know if the engine is turbocharged or not:

```java
public SportsCar extends Car {

  boolean turboCharged;
  public SportsCar(String model, String
     noPlate, String color,
           int noDoors, boolean turbo) {
    super(model,noPlate,color,noDoors);
    turboCharged = turbo;
  }
}

```

We can then declare variables as such:

```java
Car car = new Car("genericCar","5332V",
       "grey",4);
FamilyCar fCar = new FamilyCar("familyCar",
    "1059S", "beige", 4, 7);
SportsCar sCar = new SportsCar("sportsCar",
    "BH93A","red", 2, true);      
```

Because of inheritance, we would be able to call the `start()` method for all objects, even though we haven't explicitly declared them:

```java
car.start();
fCar.start();
sCar.start();
```

And the output:

```plain-text
The car starts!
The car starts!
The car starts!
```

Or access their inherited fields:

```java
System.out.println(fCar.noDoors);
System.out.println(sCar.noDoors);

// 4
// 2
```

**Keep in mind** that whenever you expect a *superclass*, a *subclass* is valid input as well:

```java
void test(Car car){
  car.start();
}

test(fCar); //valid
test(sCar); //valid
```

**Note**: A class can **extend a single** superclass.


---

## Practice

Where should the `super()` method be called in the constructor?

???

- As the first statement.
- As the last statement.
- Anywhere.
- It is not supposed to be called in the constructor.


---

## Revision

What method should the child class call to use the parent's constructor?

???

- super()
- parent()
- extends()
- build()
