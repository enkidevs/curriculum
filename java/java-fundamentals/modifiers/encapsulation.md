---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [Encapsulation](https://www.tutorialspoint.com/java/java_encapsulation.htm){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Encapsulation


---

## Content

The third *Object-Oriented Programming* principle is **encapsulation**. It refers to the process of wrapping the data and the methods using that data together. Encapsulation means keeping the *variables* in a class private, and having methods in that particular class for accessing them. 

In other words, the enclosed object is given the rights to choose for itself what format of data it accepts and how it processes it. This way, the role of the object becomes clear to other objects and class interdependence is reduced.

The generic name for methods returning the value of private fields is **getters**, while for the one changing their value is **setters**.

We can make changes to the `Car` class to achieve encapsulation:

```java
public class Car{
  private String model;
  private int noDoors;

  public Car(...){
   ...
  }

  public String getModel(){
     return model;
  }
  public int getNoDoors(){
     return noDoors;
  }

  public void setModel(String newModel){
    model = newModel;
  }
  public void setNoDoors(int newNoDoors){
    noDoors = newNoDoors;
  }
```

The variables can then be accessed like so:

```java
public class Test{
  public static void main(String[] args){
    Car car = new Car("NormalCar",4);
    car.setNoDoors(3);
    car.setModel("EncapCar");
    System.out.println(car.getModel()+" "
     + car.getNoDoors());
  }
}
```

And the output:

```plain-text
EncapCar 3
```

This way of working with data has its benefits as you can decide whether or not a new value fits the model:

```java
public void setNoDoors(int newNoDoors){
 if(newNoDoors > 7){
   System.out.println("Invalid number"
       + " of doors");
 }else{
   noDoors = newNoDoors;
 }
}
```


---

## Practice

To achieve encapsulation, fields in a class should be declared ???.

- private
- public
- static
- final


---

## Revision

Methods that return or change the value of a class' variables are called ???.

- getters and setters
- returners and changers
- getters and changers
- returners and setters
