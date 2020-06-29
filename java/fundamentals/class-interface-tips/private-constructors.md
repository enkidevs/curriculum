---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - design-patterns
  - factory-method
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=40){website}
  - >-
    [sourcemaking.com](https://sourcemaking.com/design_patterns/factory_method){website}
---

# Private constructors


---

## Content

Making a constructor private prevents external callers from instantiating a class. 

One case where this is appropriate is when a class has only static members. Creating an object of this type of class serves no purpose, so making the constructor private will prevent callers from doing so.

Another use for private constructors is when  a class provides a method which returns an instance of itself. An example of this type of method is a Factory method[1].

```java
public class Game {
  //factory method
  public static Game getInstance() {
    return new Game();
  }

  //private constructor
  private Game() {}
}
```

In this example, the constructor is private, so the only way to create an instance of `Game` is to use the method `Game.getInstance()`.


---

## Footnotes

[1:factory methods]
A factory method replaces the standard constructor, dealing with object creation without having to specify the exact class of the object that will be created. 

More information on this pattern can be found in the links appended at the bottom of the insight.
