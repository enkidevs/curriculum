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

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#bytearray-objects){website}'

parent: bytes-type

---

# `bytearray` objects

---
## Content

The **mutable** counterpart of the `bytes` object is the `bytearray` object.

Create a `bytearray` object:
```python
# empty bytearray
b = bytearray()
# zero-filled of length 2
b = bytearray(2)
# from iterable of integers
b = bytearray(range(3))
 ```

Just like with the `bytes` object, you can create a `bytearray` object from a **hexadecimal** string:
```python
>>> bytearray.fromhex('2ef0f1f2')
bytearray(b'.\xf0\xf1\xf2')

```

To convert a `bytearray` to a **hexadecimal** string:
```python
>>> bytearray(b'\xf0\xf1\xf2').hex()
'f0f1f2'

```
Because `bytearray` is a **mutable sequence** it supports additional operations such as slicing (`[i:j]`), insertion `b.insert(i,x)` and many others.

---
## Practice

Create a bytearray object from the hexadecimal string:

```
>>> bytearray.???('2ef0f1f2')
bytearray(b'.\xf0\xf1\xf2')
```


* `fromhex`
* `hex`
* `fromhexad`
* `hexadecimal`

---
## Revision

Convert the bytearray object into a hexadecimal string:

```
>>> ???(b'\xf0\xf1\xf2') \
    .???()
'f0f1f2'
```

* `bytearray`
* `hex`
* `barray`
* `fromhex`
* `tohex`
* `byte`
* `array`
