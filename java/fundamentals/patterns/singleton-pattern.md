---
author: pawel
type: normal
category: pattern
tags:
  - singleton
links:
  - >-
    [www.tutorialspoint.com](http://www.tutorialspoint.com/design_pattern/singleton_pattern.htm){website}
notes: ''
---

# Singleton Pattern


---

## Content

Singleton pattern is a design pattern involving a class which can be instantiated *exactly once*.

To be effective, it must provide a way to access its only instance globally.

```java
public class ClassicSingleton {
  private static ClassicSingleton
      instance = null;
  private ClassicSingleton() {
/*private constructor to ensure that
the method cannot be accessed other class*/
  }
  public static synchronized
     ClassicSingleton getInstance() {
        if (instance == null) {
          instance = new ClassicSingleton();
      }
      return instance;
  }
}
```

This version of the Singleton class is not the most efficient one, however it is thread-safe and it will do the job most of the time.

A reason to use a Singleton class is to log other classes in the application. Because a logger is heavily accessed, it makes sense to have a single instance to track the output.
