---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - abstract
  - inheritance
  - interface
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/IandI/abstract.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The `abstract` keyword


---

## Content

An `abstract` method is a method that is declared without an implementation.

```java
abstract int calculate(int a);
```

Rather than being defined with braces `{}`, the method is left without an implementation.

A class which contains `abstract` methods must itself be declared as `abstract`. An `abstract` class cannot be instantiated, but it can be extended. Subclasses of an `abstract` class usually provide implementations of `abstract` methods. For example:

```java
abstract class SuperClass {
  abstract int calculate(int a);
}
class SubClass extends SuperClass {
  public int calculate(int a) {
    return a * a;
  }
}
```

Here, `SubClass` extends `Superclass` and provides an implementation of the `abstract` method, `calculate`.

It is worth noting that methods in an interface are implicitly `abstract`, so it is not necessary to explicitly declare them as such.


---

## Practice

Which of the following is a properly declared abstract method? 

```java
abstract String optionX[String s]; 
abstract String optionY{String s);   
abstract String optionZ(String s);
```

???

- `optionZ`
- `optionX`
- `optionY`


---

## Revision

Which of the following is a properly declared abstract method?

```java
abstract float optionA(float e);    
abstract float optionB(float e) {};
abstract float optionC(float e) {
  e++;
}
```

???

- `optionA`
- `optionB`
- `optionC`
