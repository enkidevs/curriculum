---
author: mihaiberq
type: normal
category: how-to
links:
  - >-
    [Exponentiation by
    squaring](https://en.wikipedia.org/wiki/Exponentiation_by_squaring){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Exponentiation By Squaring


---

## Content

The concept of **exponentiation by squaring** refers to a method to fast compute large powers of a number. Some other names for it are *square-and-multiply algorithm* or *binary exponentiation*.

The most basic way to exponentiate is multiplying the number by itself:

```plain-text
3^20 = 3*3* ... *3 (20 times)
```

This will have to do `O(n)` (i.e. *O(20)* ) operations to calculate the result.

Instead of multiplying the number itself, *exponentiation by squaring* works by halving the power each time:

```plain-text
3^20 = (3^10)^2 = [(3^5)^2]^2
     = {[3*(3^4)]^2}^2
     = ({3*[(3^2)^2]}^2)^2
# 4 operations to decompose
# 5 multiplications
#    and squarings to compute
```

This algorithm uses `O(log n)` squarings[1] **and** at most `O(log n)` multiplications. Together they would take at most `2*O(log n)`, which is still faster than `O(n)` multiplications.

The implementation using a *recursive algorithm* is as follows:

```plain-text
// where b is the base
// and x is the exponent
expBySqr(b,x)
  if x < 0 then
    return expBySqr(1/b, -x)
  else if x = 0 then
    return 1
  else if x = 1 then
    return b
  else if x % 2 = 0 then
    return expBySqr(b*b, x/2)
  else if x % 2 = 1 then
    return b * expBySqr(b*b, (x-1)/2)
```

It is worth noting that after each squaring, the new value would almost double the number of digits of the previous one.


---

## Practice

For small exponent values, squaring might need more operations than straight-forward approach.

`5^5` would require 4 multiplications, whereas, following the exponentation by squaring algorithm, the same computation would require a total of ??? operations (decompose+multiply).

- 2+3
- 3+3
- 3+2
- 3+1


---

## Revision

For an exponent of `350`, what's the upper-bound of the number of operations required to compute the result using the exponentation by squaring method?

???

- O(log 350)
- O(350^2)
- O(350)
- O(log log 350)


---

## Footnotes

[1:Improvement]
For an exponent of `20`, it takes *9 operations* to do the same what it would otherwise take *19 operations*.
