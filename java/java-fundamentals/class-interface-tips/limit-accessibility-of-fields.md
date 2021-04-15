---
author: Russiee
type: normal
category: best-practice
links:
  - >-
    [www.securecoding.cert.org](https://www.securecoding.cert.org/confluence/display/java/OBJ01-J.+Limit+accessibility+of+fields){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Limit Accessibility of `Fields`


---

## Content

An incorrect assumption is that declaring a field or variable as `final` makes the object referenced *immutable*. 

Declaring variables with a `final` type *prevents* changes to the memory address to which the variable points to, but not changes to the *object itself*.

Consider this:

```java
public final Person p = 
     new Person("John");

```

While the `final` keyword *won't* allow something like:

```java
p = new Person("Jack");
//this will throw an error
```

Changes made to the state of the object are still possible:

```java
p.age = 30;
// p still references Person John
// which now is also 30 years old
```

If an object is mutable (i.e. allows changes to its state after *instantiation*), the best way to prevent unwanted modification to the object is to declare it `private`.

A `private` field won't be visible to other classes, so a public method called **getter** must exist in case you want to use it elsewhere.

This translates into:

```java
public class Employee{
  private Person p = 
     new Person("John");
}
```

Which isn't accessible from a second class (e.g. `Company`). In other words, `p` becomes *immutable* outside of its class.

The getter method looks like this:

```java
public class Employee{
  public Person getPerson(){
     return p;
  }
}
```


---

## Practice

Why won’t the following code snippet compile?

```java
public class Person {
  private String name;
  public Person(String name){
    this.name = name;
  }
}  
public class Company {
  Person p = new Person("Alex");
  System.out.println(p.name);
}
```

???

- Field name of Person is private and cannot be accessed from Company.
- this keyword is wrongly used.
- p is not instantiated correctly.
- p.name shouldn’t be a String.


---

## Revision

If a want an object to be immutable outside of its class, you should declare it ???.

- private
- final
- public
- static
