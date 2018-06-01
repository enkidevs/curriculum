---
author: tommarshall

levels:

  - basic

  - medium

type: normal

category: tip




---

# Careful Numeric Data Conversions

---

## Content

Converting a numeric type to a narrower type must be done with care or you could end up with **lost** and/or **misinterpreted data**.

Here are the numeric data types and what types they can be converted to:

- _short_ -> byte, char
- _char_ -> byte, short
- _int_ -> byte, short, char
- _long_ -> byte, short, char, int
- _float_ -> byte, short, char, int, long
- _double_ -> byte, short, char, int, long, float

Here is an example of a safe, checked conversion narrowing an `int` to a `byte`:

```java
public static void convert(int i) {
  // check i's value
  if ((i < Byte.MIN_VALUE) ||
      (i > Byte.MAX_VALUE)) {
      throw new ArithmeticException("Value
      not in Byte range!");
  }

  byte b = (byte) i;
  // byte b's value is now equal to int i
  // b can be used as a byte
}
```

---

## Quiz

### Can you identify how type conversion works in the following example?

What is the output of the following snippet?

```java
public class Main {
  public static void main(String[] args) {
      char x = 'a';
      int i = 1;
      System.out.print(true  ? x : 1);
      System.out.print(false ? i : x);
  }
}
```

???

- a97
- aa
- true
- false
