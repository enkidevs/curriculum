---
author: adamMontgomerie
type: normal
category: tip
tags:
  - math
  - utility-classes
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/data/beyondmath.html){website}
---

# Trigonometry using the `Math` class


---

## Content

The `Math` class contains various methods for performing trigonometric functions. For example, it is possible to convert a value in degrees to radians:

```java
double degrees = 45;
double radians = Math.toRadians(degrees);
```

Then find the sine of this value:

```java
System.out.format(
  "The sine of %.1f degrees is %.4f%n",
  degrees, 
  Math.sin(radians)
);
```
