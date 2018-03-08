---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature


links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#bytes){website}'

{}

---
## Content
# `bytes` type

Python uses built-in **core types** for manipulating binary data. Such a type is the `bytes` object  - **immutable** sequences of single bytes.

Even though a `bytes` object behaves like a sequence of integers, some of its methods  work only with **ASCII** data. It is similar to  the string type in some ways.

Create a **zero-filled** bytes object of specified `length`:
```python
>>> c = bytes(2)
>>> c
b'\x00\x00'
```

Create a bytes object from a iterable of integers:
```python
>>> c = bytes(range(4))
>>> c
b'\x00\x01\x02\x03'
```
Create a bytes object from a **hexadecimal** string:
```python
>>> bytes.fromhex('2Ef0 F1f2')
b'.\xf0\xf1\xf2'

```

Convert a `bytes` object to a hexadecimal string:
```python
>>> (b'\xf0\xf1\xf2').hex()
'f0f1f2'
```

---
## Practice

Complete the output of the command run in the Python interactive shell:
```
>>> a = bytes(range(2))
>>> a
???'\???\???'
```


* `b`
* `x00`
* `x01`
* `a`
* `x02`   
* `x03`

---
## Revision

Bytes are ??? sequences of single bits.


* `immutable`
* `mutable`

