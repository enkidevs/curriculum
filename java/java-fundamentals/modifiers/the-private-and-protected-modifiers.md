---
author: mihaiberq
type: normal
category: must-know
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

# The `private` and `protected` Modifiers


---

## Content

The `private` access modifier makes variables and methods available within their class only. Having a `private` class or interface makes no sense (as they couldn't be used), so they do not accept this modifier. 

The `private` modifier is the most restrictive one. It should be used as it helps with **encapsulation** of the data and prevents it from being modified unwittingly. Encapsulation is another principle of OOP and we will talk about it in a bit.

If the variables are private, getters and setters are required to access them. These are functions that help move data from one class to another:

```java
public class Car{
  private String model;
  private int noDoors;

  public String getModel(){
    return model;
  }

  public void setModel(String newModel){
    model = newModel;
  }
}
```

A *getter* is a function that returns the value of the field, while a *setter* is a function that updates the value of a field. Other classes wouldn't be able to access the data without these methods.

The `protected` access modifier makes variables, methods and constructors accessible only by the *subclasses* in other packages and by every class within its package.

Again, classes and interfaces cannot be *protected*. Because it applies to inheritance (that means only class extension), methods and fields in an interface cannot be *protected* either.

Consider this example:

```java
public class Car{
  protected void start(){
    //implementation
  }
}

public class FamilyCar{
  public void start(){
    //implementation
  }
}
```

If the `start()` method was declared private, it wouldn't be accessible from any other class other than `Car`. Making it *protected*, we can ensure its availability for subclasses.


---

## Practice

Complete the following snippet to make the method usable only in its initial class:

```java
??? class Car{
  private int noDoors;
  ??? void start(){...}
}


public class TestClass{
 public static void main(String[] args){
  Car car = new Car(...);
  car.start(); // error
 }
}
```

- `public`
- `private`
- `protected`


---

## Revision

A ??? field can only be accessed by the subclasses.

- protected
- private
- public
- static
