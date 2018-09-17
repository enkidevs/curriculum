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

standards:
  python.standard-library-data.1: 10

links:

  - '[pymotw.com](https://pymotw.com/2/decimal/){website}'
  - '[docs.python.org](https://docs.python.org/3.5/library/decimal.html){website}'

notes: Math modules workout

---

# Working with decimals

---
## Content

Python's `decimal` module provides implementation of fixed and floating point arithmetic based on the model people are familiar with, instead of the *IEEE* version implemented by computers.

Import the module:
```python
import decimal
```

The constructor can take integers, strings or tuples as arguments:
```python
d1 = decimal.Decimal(5) # 5
d2 = decimal.Decimal('3.14') # 3.14
t = (1, (1, 1), -4)
d3 = decimal.Decimal(t) # -0.0011
# sign, digits tuple, exponent
```
They support basic arithmetic operations:
```python
print(d1/d2)
# 1.592356687898089171974522293

```
Also, logarithms:
```python
print(d2.log10())
# 0.4969296480732149319752200246
```
To override the default behaviour settings of the decimal module, the context must be modified:
```python
print(decimal.getcontext())
# Context(prec=28, rounding= ...)
decimal.getcontext().prec = 2
print(decimal.getcontext())
# Context(prec=2, rounding= ...)
```

---
## Practice

Using the `decimal` module, print the value of  `d` ‘s logarithm (base 10):
```
import decimal
d = decimal.Decimal(“2.71”)
print(d.???())
```


* `log10`
* `log`
* `logarithm`
* `logarithm_10`

---
## Revision

Use the `decimal` module to assign the given value to the decimal variable `a` :
```
import decimal
a = ???.???(“6.42”)
```


* `decimal`
* `Decimal`
* `d`
* `dec`
* `Object`
