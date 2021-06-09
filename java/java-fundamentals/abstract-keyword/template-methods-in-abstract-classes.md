---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - design-patterns
  - inheritance
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=164){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Template methods in abstract classes


---

## Content

Template methods are methods in an abstract base class which define the general format of a method but leave the specific implementation to a subclass.

Using Template methods is a good way to eliminate code repetition. Rather than writing code which performs similar operations multiple times, a general abstract solution can be created, and then the differences can be implemented in several subclasses.

```java
public abstract class BaseClass {
  /*template method defines the general
  steps*/
  public final void templateMethod() {
    step1();
    step2();
  }
  /*but leaves the implementation of
  those steps to subclasses*/
  abstract void step1();
  abstract void step2();
}

public class SubClass extends BaseClass {
  /*the subclass can override the steps
  and provide specific implementations*/
  @Override
  void step1() {
    //do stuff
  }
  @Override
  void step2() {
    //do stuff  
  }
}
```


---

## Practice

Template methods are a good way to prevent

???.

- code repetition
- compilation issues
- spelling mistakes


---

## Revision

Complete the following Java code snippet implementing the use of a base class:

```java
public abstract class BigClass {
  abstract void render();
}

public class SmallerClass
  ??? BigClass {
    ???
    void render() {
      // render method code...
    }
}
```

- `extends`
- `@Override`
- `creates`
- `override`
- `implements`
- `@Implement`
- `@Create`
- `@Extends`
