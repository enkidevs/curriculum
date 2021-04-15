---
author: adamMontgomerie
type: normal
category: must-know
tags:
  - generic-method
  - type-inference
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/generics/methods.html){website}
---

# Writing generic methods


---

## Content

In this example method:

```java
public void printArray(
  int[] input) {
  for (int value: input) {
    System.out.println("%d", value);
  }
}
```

Imagine that we also want similar methods that deal with arrays of **Strings**, **Doubles** or other types. We could write a new identical method for each type of array, but that would create a lot of repetitive code.

To avoid writing the same method over & over again with different types, we can instead write a generic method like this:

```java
public <E> void printArray(
  E[] input) {
  for (E element: input) {
    System.out.println("%s", element);
  }
}
```

Notice that we have replaced references to a specific type `int` with `E`; our generic type. This allows the method to accept any type of array. 

Also notice the `<E>` before the method's return type (in this case `void`); this is the method's type parameter, and is necessary for defining a generic method.

We can now use this method to print all of our project's arrays.
