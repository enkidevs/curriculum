---
author: AlexBroadbent
type: normal
category: tip
tags:
  - java
  - comparable
  - interface
  - class
  - sort
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/8/docs/api/java/lang/Comparable.html){website}
notes: >-
  This may need to be shortened/simplified, this is a large topic but this
  article just kind of skims the surface of what the Comparable interface can
  do.


  The link could be to a more user-friendly website, such as java-examples.com.


  Static workout
---

# Implementing the `Comparable` interface to give objects a Natural Order


---

## Content

The `Comparable` interface imposes *natural ordering* on the objects of each class that implements it. It has one method, `compareTo`, which is referred to as its natural comparison method and also used to sort.

```java
public class MyClass 
  implements Comparable<MyClass> {
    protected int order;
    public MyClass(int order) {
      this.order = order;
    }

    public int compareTo(MyClass object) {
      return order - object.order;
    }
}
```

The `compareTo` method should return:

- a negative number - when the current is smaller than the comparison object
- a positive number - when the current is greater than the comparison object
- zero - when both objects are equal in terms of their natural order.

It is strongly recommended, but not strictly required that 

`(x.compareTo(y) == 0) == (x.equals(y))`

Generally speaking, any class that implements the Comparable interface and violates this condition should clearly indicate this fact.
