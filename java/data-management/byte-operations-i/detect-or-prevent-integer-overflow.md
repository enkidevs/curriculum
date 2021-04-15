---
author: fahimrahman
type: normal
category: caveats
tags:
  - fundamentals
  - integer-overflow
links:
  - >-
    [www.securecoding.cert.org](https://www.securecoding.cert.org/confluence/display/java/NUM00-J.+Detect+or+prevent+integer+overflow){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Detect or prevent integer overflow


---

## Content

It is vital that programs should not exceed the integer ranges provided by their primitive integer data types (such as, `byte` has a range of
−128 to 127) because:

- The built-in integer operators in Java do not indicate integer overflow or underflow.
- These operators silently wrap the result without indicating overflow, resulting in incorrect/unexpected computations.
- This can lead to overflow of many methods, such as `abs()` and `compareTo()` and result in program failures.

Few techniques for detecting integer overflow:

1. Precondition testing: Check the inputs to each arithmetic operator to ensure that overflow cannot occur - throw an `ArithmeticException` when the operation would overflow.
2. Upcasting: Cast the inputs to the next larger primitive integer type and perform the arithmetic in the larger size. Note: Not applicable for `long` as it is the largest integer type.
3. `BigInteger` class: Convert the inputs into objects of type `BigInteger` and perform all arithmetic using the class methods.


---

## Practice

If the `byte` type occupies 1 byte of data and has a range from *-128 to 127* (-(2^7) to 2^7–1), what is the range of `short` , which occupies 2 bytes of data?

???

- -2^15 to 2^15–1
- -2^13 to 2^13–1
- -2^18 to 2^18
- -2^8 to 2^8–1


---

## Revision

Which of the following primitives does not allow upcasting to prevent overflow?

???

- long
- int
- byte
- float
