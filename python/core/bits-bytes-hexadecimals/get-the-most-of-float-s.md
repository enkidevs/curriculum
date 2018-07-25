---
author: catalin

levels:

  - beginner

type: normal

category: feature

aspects:
  - workout
  - deep
standards:
  python.data-structures-uses.3: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#additional-methods-on-float){website}'

notes: abc

---

# Get the most of `float`s

---
## Content

Similar to the `int` data type, `float`s also have several additional methods useful in various scenarios.

For example, you can directly check if the float number is actually an integer with `is_integer()`:
```python
>>> (5.9).is_integer()
False
>>> (-9.0).is_integer()
True
```

Integer values might be preferred over floats in some cases and you can convert a `float` to a tuple matching a fraction with integer values:
```python
>>> (-5.5).as_integer_ratio()
(-11,2)
# -11 / 2 == -5.5
```

As `float`s' numbers representation in binary is not really human-friendly and tends to be lengthier with precision, the **hexadecimal** format is preferred. Such hexadecimal representations have the form:
```python
[sign]['0x']int['.' fraction]['p' exponent]
# e.g 0x1.8000000000000p+0 -> 1.5
# 1.5 in decimal is 1.8 in hex
# 0 - sign
# int - str of hex. digits of integer part
# fraction - same for fractional part
```

To convert a float number to a **hex** string you can use the `hex()` function.
```python
>>> (3.14).hex()
'0x1.91eb851eb851fp+1'

>>> float.hex(1.5)
'0x1.8000000000000p+0'
```

The reverse can be achieved with the `fromhex()` class method:
```python
>>> float.fromhex('0x1.91eb851eb851fp+1')
3.14

>>> float.fromhex('0x1.8000000000000p+0')
1.5
```

---
## Practice

Complete the following code snippet such that the outputted values hold:
```python

>>> ???.???()
0x1.8000000000000p+0

>>> ???.???(???)
1.5
```


* `(1.5)`
* `hex`
* `float`
* `fromhex`
* `0x1.8000000000000p+0`
* `from_hex`
* `int`
* `3.14`
* `1.5`
* `(3.14)`
* `to_hex`
* `as_integer_ratio`
* `is_integer`

---
## Revision

How would you convert `2.71` to its **hexadecimal** representation?

```python
>>> ???.???(???)

```


* `float`
* `hex`
* `2.71`
* `(2.71)`
* `from_hex`
* `to_hex`
* `fromhex`
* `int`
