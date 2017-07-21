# Facade Pattern
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

links:

  - '[More on the Facade Pattern](https://en.wikipedia.org/wiki/Facade_pattern)'

---
## Content

Another pattern which is common for the object oriented development is *Facade*. The key idea is to hide the complexity of calculations and multiple method calls from inside the system in order to provide the end user with a clean interface which implements all the necessary functionality.

Suppose the user desires to input a set of 2D points and get various information about the shape. Then we could write a class that implements all the desired functionality from scratch which could lead to duplication of code. Instead we could make use of different packages and classes

```
public class FacadeShape {

  private Distance d = new Distance();

  public double getPerimeter(int[] vert) {
    //use d.getDistance() over all points
    //to get perimeter
    return p;
  }

  public double getArea(int[] vert) {
    //use d.getDistance() over all points
    //to get perimeter
    return a;
  }
}
```

---
## Revision

What is the *Facade* pattern?

???

* It is a wrapper around the system that provides the end user with a clean desired functionality.
* It is a front part of the building.
* It describes how a group of interfaces act together.
