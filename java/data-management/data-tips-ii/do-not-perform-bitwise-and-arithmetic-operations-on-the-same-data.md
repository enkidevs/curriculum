---
author: fahimrahman
type: normal
category: best-practice
tags:
  - numeric-operations
links:
  - >-
    [www.securecoding.cert.org](https://www.securecoding.cert.org/confluence/display/java/NUM01-J.+Do+not+perform+bitwise+and+arithmetic+operations+on+the+same+data){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Do not perform bitwise and arithmetic operations on the same data


---

## Content

Arithmetic operators are operated on numeric variables, whereas bitwise operators (`<<`, `>>`, `&`, etc.) are operated on bit collections exclusively.

Although performing both types of operations on the same data may compile, it often results in confusion and reduces code readability. 

Example of a non-compliant code:

```java
int a = 7;
a += (a << 3) + 3; //left shift
//^ adding 8a + 3 to a 
//Intention: a = 9a + 3
```

A better implementation would be:

```java
int a = 7;
a = 9 * a + 3;
```

Similarly a right shift operation might be used instead of division in a misguided attempt to optimize performance:

```java
int a = -20;
a >>= 2;     // a = -5
```

But perhaps a better implementation is:

```java
int a = -20;
a /= 4;     // a = -5
```


---

## Revision

What is the arithmetic equivalent of `a >> 3`  ?

???

- a/8
- a/4
- 8a
- 4a
- 3a
- a/3
