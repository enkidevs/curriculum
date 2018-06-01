---
author: adamMontgomerie

levels:

  - medium

type: normal

category: tip

tags:

  - constructor

  - intitializer

links:

  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/javaOO/initial.html){website}

---
# Using initializer blocks to minimize code repetition in constructors

---
## Content

A class can have multiple constructors. Sometimes these constructors will perform similar operations. 

Rather than repeating the same code in each constructor, we can use an initializer block. The code in an initializer block is copied into each constructor by the compiler.
```
public class Person {
  private String name;
  private int legs;
  private int arms;
  {
    legs = 2;
    arms = 2;
  }
  public Person() {}
  public Person(String name) {
    this.name = name;    
  }
}
```
There are two constructors for `Person`. In both cases, we want to set `legs` and `arms` to `2`. Rather than setting the same value twice, we have added an initializer block (marked by `{ }`).