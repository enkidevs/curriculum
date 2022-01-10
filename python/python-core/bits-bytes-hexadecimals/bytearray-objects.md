---
author: catalin
type: normal
category: feature
links:
  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#bytearray-objects){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# bytearray objects


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

```python
>>> bytearray.???('2ef0f1f2')
bytearray(b'.\xf0\xf1\xf2')
```

- `fromhex`
- `hex`
- `fromhexad`
- `hexadecimal`


---

## Revision

Convert the bytearray object into a hexadecimal string:

```python
>>> ???(b'\xf0\xf1\xf2') \
    .???()
'f0f1f2'
```

- `bytearray`
- `hex`
- `barray`
- `fromhex`
- `tohex`
- `byte`
- `array`
 
