# Singleton Pattern
author: pawel

levels:

  - basic

  - advanced

  - medium

type: normal

category: pattern

tags:

  - singleton

notes: ''

links:

  - >-
    [www.tutorialspoint.com](http://www.tutorialspoint.com/design_pattern/singleton_pattern.htm){website}

---
## Content

Singleton pattern is a design pattern involving a class which can be instantiated *exactly once*.

To be effective, it must provide a way to access its only instance globally. 


```java
public class ClassicSingleton {
  private static ClassicSingleton 
      instance = null;
  protected ClassicSingleton() {
 /*protected constructor to ensure that
  a single instance of the class exists */
  }
  public static ClassicSingleton
      getInstance() {
        if (instance == null) {
          instance = new ClassicSingleton();
      }
      return instance;
  }
}
```
A reason to use a Singleton class is to log other classes in the application. Because a logger is heavily accessed, it makes sense to have a single instance to track the output.