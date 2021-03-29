---
author: mihaiberq
type: normal
category: must-know
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Java Primitives


---

## Content

In Java, **primitives** are the most basic data types. To be able to use a variable, it must be declared first, like this:

```java
int myIntVariable = 3;
```

This line tells the program that a field name `myIntVariable` exists, is of type `int` and has an initial value of `3`. As you might have guessed already, `int` is a primitive type.

By type of data held, the other existing primitives are:

Numerical

- `byte`, which stores numbers in the range of -128 and 127, or 2 to the power of 8, is the smallest numerical data type.
- `short`, which is the second smallest, can store numbers up to 5 digits long.
- `long`: unlike `int` which can hold values up to 10 digits long, `long` values can be as long as 19 digits.
- `float` and `double`, which both store floating point numbers.

Characters

- `char`: stores Unicode characters (or numerical values associated with letters, signs or numbers)

Booleans

- `boolean`: accepts `true` or `false` values.

When initialized, if they aren't given any values, each primitive type will default to:


| Data Type | Default Value | Bits |
|----------:|--------------:|------|
|    byte   |       0       | 2^8  |
|   short   |       0       | 2^16 |
|    int    |       0       | 2^32 |
|    long   |       0L      | 2^64 |
|   float   |     0.00f     | 2^64 |
|   double  |     0.00d     | 2^64 |
|  boolean  |     false     | 2    |
|    char   |    '\u0000'   | 2^16 |


For Java to make the distinction between values of different type, a suffix is needed: `L` for `long`, `f` for `float` and `d` for double. They should be declared as:

```java
long myLong = 37512L;
double myDouble = 3.75d;
float myFloat = 3.75f;
// if none of the suffixes is
// specified, the values are seen as
// either int(for long) or
// double(for float)
```


---

## Revision

The default type of `5.30` is ???

- double
- float
- int
- long
