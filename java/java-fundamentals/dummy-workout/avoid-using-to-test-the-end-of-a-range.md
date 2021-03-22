---
author: pawel

levels:
  - basic
  - advanced
  - medium

type: normal

category: best-practice

tags:
  - best-practice

notes: As always - hope it's not to basic

---
# Avoid using `!=` to test the end of a range

---
## Content

Consider the loop:

```java
for (i = 1; i != nyear; i++) 
  {  ...  }

```

This is considered bad practice. The program might find itself in an infinite loop if value of `nyear` is negative for some reason.

Another reason not to use `!=` is the roundoff errors when dealing with floating points. For example for the loop below:

```java
for (rate = 2; rate != 5; rate = rate + 0.1)
  { ...  }

```

The number 0.1 is exactly representable in the decimal system, but the computer represents floating-point number in binary. 

Use `<` instead:

```java
for (rate = 2; rate < 5; rate = rate + 0.1)
  { ... }

```
 
