---
author: adamMontgomerie
type: normal
category: how-to
tags:
  - random
links:
  - >-
    [www.javapractices.com](http://www.javapractices.com/topic/TopicAction.do?Id=62){website}
---

# Generating random numbers


---

## Content

There are two ways to generate random numbers.

- The `Math.random` static method can be used to generate a random `double` between 0  (inclusive) and 1 (exclusive).

```java
// x is a double between  0 (inclusive)
// and 1 (exclusive)
double x = Math.random();
```

- The `Random` class can be used to generate various types of numbers in different ranges.

```java
// x is an integer between 5 
// and 10 (both inclusive)
int min = 5;
int max = 10;
Random rand = new Random();
int x = rand.nextInt((max - min) + 1) + min;
```

`Math.random` is appropriate when a `double` is needed, however it is better to use the `Random` class to generate random `int` values.
