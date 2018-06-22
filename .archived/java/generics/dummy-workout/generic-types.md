---
author: abhavk

levels:

  - basic

  - medium

type: normal

category: must-know

links:

  - '[www.oracle.com](www.oracle.com){website}'

---
# Generic Types

---
## Content

Java allows classes to be declared with a generic type parameter.

The letters `E` (representing elements) and `T` (representing types) are used in generic class definitions.

For example, consider a case where we want to declare a bag that may contain a single object of any type. This can be done in the following way using generics: 

```java
public class Bag<E> {
  private E contents;
  
  public void add(E obj) {
    contents = obj;
  }
   
  public E extract() {
    return contents;
  }

}
```

A bag that contains objects of (a pre defined type) Apple can then be instantiated as follows: 

```java
Bag<Apple> bagOfApples = new Bag<Apple>();
```