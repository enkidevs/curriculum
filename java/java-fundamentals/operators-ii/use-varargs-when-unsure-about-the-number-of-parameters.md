---
author: adamMontgomerie
type: normal
category: tip
tags:
  - parameters
  - arguments
  - varargs
  - arrays
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/javaOO/arguments.html#varargs){website}
---

# Use *varargs* when unsure about the number of parameters


---

## Content

Sometimes, it may be necessary to write a method that can take a variable amount of parameters. A simple example of this could be a method which takes prices and calculates a total cost.

One way to achieve this could be to create an array of prices and then use the array as a parameter for the calculation method. However, we can avoid having to create an array by using varargs.

Varargs are arguments which can accept a variable number of values as a comma separated list. For example:

```java
public int calculate(int... price) {
  int sum = 0;
  for (int item : price) {
      sum += item;
  }
  return sum;
}
```

Here, the price parameter can accept any number of `int`s. This is indicated by the ellipses notation `...`. The `calculate` method can be called like this:

```java
int total1 = calculate(2, 54);
int total2 = calculate(5, 10, 27, 19);
```
