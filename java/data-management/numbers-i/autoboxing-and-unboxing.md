---
author: catalin
type: normal
category: must-know
links:
  - >-
    [beginnersbook.com](http://beginnersbook.com/2014/09/java-autoboxing-and-unboxing-with-examples/){website}
notes: 'https://insights.enki.com/#/contrib/others/55c833563f06ab320051aa89?search=kha'
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# `Autoboxing` and `Unboxing`


---

## Content

*Java 5* introduced a new concept of auto converting *primitive types* into their corresponding *wrapper* classes and vice-versa.

`Autoboxing` represents automatic conversion of *primitive type*  to the object of their corresponding *wrapper* classes.

```java
// the conversion is automatic
Integer num1 = 3;
Double num2 = 2.3;
```

`Unboxing` represents the reverse. It converts an object of a *wrapper* class to the corresponding *primitive type*.

Conversion table :

```plain-text
  Primitive type | Wrapper class
        boolean  |  Boolean
           byte  |  Byte
           char  |  Character
          float  |  Float
            int  |  Integer
           long  |  Long
          short  |  Short
         double  |  Double
```

*primitives* and *objects* should not be mixed when doing comparisons. Instead, compare objects with objects (using `equals()` method) and compare primitive with primitives (using logical operators such as “`==`”, “`<`” etc).


---

## Revision

What is the wrapper class of primitive `int` ?

???

- Integer
- integer
- Int
- Long
- long


---

## Quiz

### What will be printed by the following code snippet?


```java
  int x = 5;
  Integer X = new Integer(5);
  Integer Y = new Integer(5);
  if(x == X) {
    System.out.print("int5");
  }
  if(X == Y) {
    System.out.print("integer5");
  }
```

 ???

- “int5”
- “integer5”
- “int5integer5”
- Nothing
