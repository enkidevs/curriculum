---
author: catalin

levels:

  - basic

  - beginner

type: normal

category: feature

inAlgoPool: false

aspects:
  - introduction
  - workout

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/fractions.html){website}'

notes: Math modules workout

standards:
  python.standard-library-data.1: 10

---

# Python's `fractions`

---
## Content

Support for rational number arithmetic can be achieved using Python's  `fractions` module.

Import the module:
```python
import fractions
```
The `Fraction` constructor can take either a pair of integers, a rational number or a string:
```python
a = fractions.Fraction(16,-10)
print(a) # -8/5
b = fractions.Fraction('3/7')
print(b) # 3/7
```
The `Fraction` class inherits all operations available in the abstract `numbers.Rational`  class.

In addition, the `fractions` module provides a way to calculate the greatest common divisor of two integers:
```python
print(fractions.gcd(25,75))
#  25
```

Keep in mind that with the release of Python 3.5, this method is deprecated and `math.gcd()` should be used.

---
## Practice

Create a fraction, using the `fractions` module:
```
a = ???.???(5,-2)
print(a) #-5/2
```


* `fractions`
* `Fraction`
* `frac`
* `f`
* `new`
* `new_fraction`

---
## Revision

To calculate the greatest common divisor of ints in Python 3.5, what method from what module should be used?

```
???.???(30, 90)
```


* `math`
* `gcd`
* `fractions`
* `greatest_common_divisor`
* `cmath`
* `g`
