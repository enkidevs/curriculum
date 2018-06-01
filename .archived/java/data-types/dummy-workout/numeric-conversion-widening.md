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

- _byte_ to short, int, long, float, or double
- _short_ to int, long, float, or double
- _char_ to int, long, float, or double
- _int_ to long, float, or double
- _long_ to float or double
- _float_ to double

An example of converting an integer value to a float value:

```java
public float intToFloat(int x) {
  float value = (float) x;
  return value;
}
```

---

## Practice

A `float` primitive can be widened to:

`???`

_`double`
_`int`
_`short`
_`char` \*`float`

---

## Revision

An `int` primitive can be widened to `int` , `???`, `float` and `double`.

_`long`
_`short`
_`byte`
_`char`
