---
author: adamMontgomerie
type: normal
category: tip
tags:
  - numbers
  - strings
links:
  - >-
    [docs.oracle.com](https://docs.oracle.com/javase/tutorial/java/data/converting.html){website}
---

# Converting numbers to strings


---

## Content

One way to convert a number to a string is to create an empty string and append a number to the end of it:

```java
int i = 5;
String s = "" + i;
```

A second method is to use the `String` class' `valueOf` method:

```java
int i = 5;
String s = String.valueOf(i);
```

A third method is to use the `toString` method from one of the `Number` subclasses:

```java
float f = 5.4;
String s = Float.toString(f);
```
