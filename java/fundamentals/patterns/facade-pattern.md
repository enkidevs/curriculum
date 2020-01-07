---
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

aspects: 

  - obscura

links:

  - '[More on the Facade Pattern](https://en.wikipedia.org/wiki/Facade_pattern){website}'


---

# Facade Pattern

---
## Content

Another pattern which is common for the object oriented development is *Facade*. The key idea is to hide the complexity of calculations and multiple method calls from inside the system in order to provide the end user with a clean interface which implements all the necessary functionality.

Suppose you have a system that can currently create and draw 2D points and lines and then there is a user that desires to be able to draw various shapes. One solution would be give him the current system so that the user would have to draw all the desired shapes manually using lines and points. Another would be to create a *facade* class that would allow user to declare shapes and output them on the screen by calling a single method which hides all the complexity of implementation.
```java
public class Circle extends Shape {
  //Implements circle shape
}

public class Triangle extends Shape {
  //Implements triangle shape
}

public class Polygon extends Shape {
  //Implements general polygon shape
}

public class DrawShape {
  public static void drawShape(Shape shp) {
    if(shp instanceof Circle) {
      //implements drawing of a circle
    } else if(shp instanceof Triangle) {
      //implements drawing of a triangle
    } else if(shp instanceof Polygon) {
      //implements drawing of a polygon
    } else {
      //does nothing
    }
  }
}
```

---
## Revision

What is the *Facade* pattern?

???


* It is a wrapper around the system that provides the end user with a clean desired functionality.
* It describes the whole inheritance structure of the program.
* It describes how a group of interfaces acting together.
