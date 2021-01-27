---
author: pawel
levels:
  - basic
  - advanced
  - medium
type: normal
category: must-know
tags:
  - number-evaluation
  - IEEE-754-standard
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Types of numbers


---

## Content

Unlike many other programming languages, JavaScript doesn't differentiate between types of numbers, such as integers or floating-points.

Instead, numbers are always stored as *double precision floating point numbers*, following the international `IEEE 754` standard.

This format stores numbers in 64 bits, where the fraction is stored in bits 0 to 51, the exponent in bits 52 to 62, and the sign in bit 63.

JavaScript also has multiple helpful constants accessible through the `Number` object:

- `Number.MIN_VALUE` = **5e-324** (the smallest possible value above 0)
- `Number.MAX_VALUE` = **1.7976931348623157e+308**
- `Number.NaN` = **NaN**
- `Number.POSITIVE_INFINITY`


---

## Practice

Unlike other languages, JavaScript doesn't differentiate between ???.

- types of numbers.
- data types.
- data structures.


---

## Revision

Unlike other languages, Javascript stores numbers as ???

- double precision floating point
- single precision floating point
- long long
- bigInt


---

## Quiz

### is the following statement true?


console.log(Number.MIN_VALUE > 0)

- true
- false
- TypeError
- RangeError
 
