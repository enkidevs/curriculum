---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature
aspects:
  - workout
  - deep
standards:
  python.data-structures-uses.3: 10
  python.native-types-operations.11: 10

links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#bytes){website}'


---

# `bytes` type

---
## Content

Python features a built-in `bytes` type for manipulating binary data, which represents an **immutable** sequence of individual bytes. This is useful for working with binary data that must be stored accurately and without compression, such as a compiled program, a digital signal, or for working with bytes in cryptographic algorithms.


`bytes()` can produce a binary sequence from other datatypes, here are some examples below.

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
