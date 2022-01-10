---
author: catalin
type: normal
category: feature
links:
  - '[docs.python.org](https://docs.python.org/3.5/library/struct.html){website}'
notes: >-
  There should be an explanation of the output of the struct.pack example that
  is shown. It is not obvious to a new reader. Also a few more examples of
  packing and unpacking other data types should be shown. Should mention that is
  useful for reading and writing binary files, and converting between binary
  data and text data formats.
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

# Use struct to work with binary data


---

## Content

Python's `struct` module has routines for converting between binary and text data in both directions.

Import the module:

```python
import struct
```

This module uses certain format characters such as `I` = unsigned  int (in **C**) / integer (in **Python**).

Get a `bytes` object containing some values:

```python
>>> struct.pack('hhl', 3,13,42)
b'\x03\x00\r\x00*\x00\x00\x00'
#hhl = short,short,long
```

To unpack the buffer:

```python
>>> struct.unpack('hhl',\
... b'\x03\x00\r\x00*\x00\x00\x00')
(3, 13, 42)

```

Return the size of the struct:

```python
>>> struct.calcsize('hhl')
8
```


---

## Practice

Return the size of the `struct` given:

```python
>>> ???.???(‘hhl’)
8
```

- `struct`
- `calcsize`
- `size`
- `s`
- `get_size`
- `pack`
- `unpack`


---

## Revision

What method should be used in the following code snippet to get a `bytes` object from the given argument?

```python
>>> struct.???(‘hhl’, 3, 13, 42)
b'\x03\x00\r\x00*\x00\x00\x00'
```

- `pack`
- `unpack`
- `struct`
- `bytes`
- `calcsize`
