---
author: adamMontgomerie
levels:
  - basic
  - beginner
type: normal
category: best-practice
tags:
  - inheritance
  - oop-concepts
links:
  - >-
    [What Is
    Inheritance?](https://docs.oracle.com/javase/tutorial/java/concepts/inheritance.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Using Inheritance to Reduce Code Repetition


---

## Content

The properties and behaviour of one class can be *inherited* by another class. This allows us to limit code repetition, as repeated behaviour only needs to be defined in one class, and can then be inherited by others.

All animals have certain behaviour in common, for example, therefore we can define an `Animal` class which implements this common behaviour. 

Any further animal classes we write can then extend `Animal` and inherit the common behaviour.

```java
public class Animal {
  public void eat() {
    //implement eat method
  }
  public void reproduce() {
    //implement reproduce method
  }
}
public class Dog extends Animal {
  public void bark() {
    //implement bark method
  }
}
```


---

## Practice

Which keyword is used when inheriting another classes methods? 

???

- `extends`
- `inherit`
- `controls`
- `inherits`


---

## Revision

What’s the main advantage of using class inheritance in your code? 

???

- `It prevents code repetition.`
- `It reduces compilation time.`
- `It increases your codes readability.`
