---
author: catalin

levels:

  - basic

type: normal

category: must-know


links:

  - '[beginnersbook.com](http://beginnersbook.com/2014/09/java-autoboxing-and-unboxing-with-examples/){website}'

notes: 'https://insights.enki.com/#/contrib/others/55c833563f06ab320051aa89?search=kha'

---

# `Autoboxing` and `Unboxing`

---

## Content

_Java 5_ introduced a new concept of auto converting _primitive types_ into their corresponding _wrapper_ classes and vice-versa.

`Autoboxing` represents automatic conversion of _primitive type_ to the object of their corresponding _wrapper_ classes.

```
// the conversion is automatic
Integer num1 = 3;
Double num2 = 2.3;
```

`Unboxing` represents the reverse. It converts an object of a _wrapper_ class to the corresponding _primitive type_.

Conversion table :

```
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

_primitives_ and _objects_ should not be mixed when doing comparisons. Instead, compare objects with objects (using `equals()` method) and compare primitive with primitives (using logical operators such as “`==`”, “`<`” etc).

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
