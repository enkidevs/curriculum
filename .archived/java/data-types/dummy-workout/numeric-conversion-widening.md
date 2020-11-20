---
author: tommarshall

levels:

  - beginner

type: normal

category: best practice

links:

  - >-
    [www.securecoding.cert.org](https://www.securecoding.cert.org/confluence/display/java/NUM13-J.+Avoid+loss+of+precision+when+converting+primitive+integers+to+floating-point){website}

---
# Numeric Conversion - Widening

---
## Content

Primitive types can be widened as well as narrowed. Here are the widening primitive conventions:
- *byte* to short, int, long, float, or double
- *short* to int, long, float, or double
- *char* to int, long, float, or double
- *int* to long, float, or double
- *long* to float or double
- *float* to double

An example of converting an integer value to a float value:

```java
public float intToFloat(int x) {
  float value = (float) x;
  return value;
}
```

---
## Practice

A `float` primitive can be widened to ???.

*`double` 
*`int` 
*`short` 
*`char` 
*`float`

---
## Revision

An `int` primitive can be widened to `int` , ???, `float` and `double`.

*`long` 
*`short` 
*`byte` 
*`char`