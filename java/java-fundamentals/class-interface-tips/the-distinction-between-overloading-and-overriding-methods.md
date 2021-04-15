---
author: adamMontgomerie
type: normal
category: tip
tags:
  - inheritance
  - overloading
  - overriding
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=119){website}
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=223){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The distinction between overloading and overriding methods


---

## Content

In Java, methods can be both overloaded and overridden.

- Overloading refers to creating two or more methods with the same names but a different number or type of parameters. For example:

```java
void addPerson(String name, int age){}
void addPerson(String name){} 

```

- Overriding refers to redefining a method that has been inherited from a superclass. The new method should have the same name, return type, as well as the same number and type of parameters. However definition of the method will be different. For example:

```java
public class Parent{
  int method(int parameter){
    return parameter * 2;
  }
}
public class Child extends Parent{
  @Override 
  int method(int parameter){
    return parameter * 3;
  }
}

```

Note: it is good practice to explicitly declare overridden methods using `@Override`.


---

## Practice

What’s the name of the process where a method is redefined after being taken from a parent class?

???

- Overriding
- Overloading
- Inheriting


---

## Revision

What is the following code snippet an example of?

```java
void newField(String name);
void newField(String name, String country);
```

???

- Overloading
- Overriding
- Overcomplicating
- Overwriting
