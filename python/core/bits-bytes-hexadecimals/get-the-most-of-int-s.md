---
author: catalin

levels:

  - beginner

type: normal

category: feature

aspects:
  - workout
  - deep
links:

  - '[docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#additional-methods-on-integer-types){website}'
  - '[en.wikipedia.org](https://en.wikipedia.org/wiki/Endianness){website}'

notes: |
  This line of output from a snippet in the insight:

  11 # 555 in binary is 10000000000

  is incorrect. It should be:

  11 # 1024 in binary is 10000000000

standards:
  python.data-structures-uses.3: 10

---

# Converting `int`s to binary data

---
## Content

The **built-in** `int` types provides several methods for data manipulation at a binary level. Conventionally, for integer values representation, **bytes** (group of 8 bits) are used.

For example, you can get the bits required to store a specific number with `bit_length()`
```python
>>> n = 1024
>>> n.bit_length()
11
# 1024 is 10000000000 in binary
```

In addition, we can distinguish the following couple of methods:
- `.to_bytes(length, byteorder, *, signed=False)`[1] which return an array of **bytes** representing the integer value called on
- `.from_bytes(bytes, byteorder, *, signed=False)` which does the opposite - converts an array of bytes to an integer value

In both syntaxes defined above `byteorder` stands for the **byte order** or **endianness**[2], accepting the values `"big"` or `"little"`.

The `signed` argument (`False` by default) determines whether **two’s complement** is used to represent the integer. Keep in mind that having `signed` equal to `False` and calling `.to_bytes()` on a *negative* number will result in a `OverflowError`.

Note that you can round up a floating point numbers using the following expression:
```
rounded_up = -(-numerator // denominator)
```

Here's the former function in action:
```python
# converting 2048 with big endian
>>> (2048).to_bytes(2, byteorder='big')
b'\x08\x00'

# converting 2048 in one byte (8 bit)
>>> (1024).to_bytes(1, byteorder='big')
OverflowError: int too big to convert
# 10000000000 occupies more than 1 byte

# converting -777 with little endian
>>> (-25).to_bytes(-(-(-25).bit_length()
    // 8), byteorder="little", signed=True)
b'\xe7'
```

Similarly, the `.from_bytes()` method works in reverse:
```python
# converting to 2048, big endian
>>> int.from_bytes(b'\x08\x00',
      byteorder="big")
2048

# converting back to -777, little endian
>>> int.from_bytes(b'\xe7\xff\xff\xff\xff',
      byteorder="little", signed=True)
-25

# converting a byte-like object
>>> int.from_bytes([0, 2, 4],
      byteorder='big')
516
```

---
## Practice

Fill the following snippet such that it will first convert `1024` to bytes and then perform the reverse operation.
```python
>>> int.???(
(1024).???((1024).???, byteorder='big'),
???="big")
```


* `from_bytes`
* `to_bytes`
* `bit_length()`
* `byteorder`
* `25`
* `"little"`
* `signed`
* `True`
* `false`
* `length`
* `bytes`

---
## Revision

Complete the following snippet with missing `int` methods used for byte conversion:
```python
>>> (16).???(1, ???='big')
b'\x10'

>>> ???.???([0, 4], byteorder="little")
1024

```


* `to_bytes`
* `byteorder`
* `int`
* `from_bytes`
* `fromBytes`
* `from_byte`
* `from_byte_array`
* `1024`
* `toBytes`
* `to_byte`
* `to_byte_array`
* `orderbyte`

---
## Footnotes
[1:length]
When specified, the integer value will be represented in `length` bytes. If these aren't enough, an `OverflowError` will be thrown.

[2:endianness]
**Big-endian** and **little-endian** are terms that describe the order in which a sequence of bytes are stored in computer memory.

In **big endian**, you store the *most* significant `bit` in the **smallest** address, while in **little endian** you store the *least* significant one.

If you wish to learn more about this subject, bookmark this insight and check its "Learn more" links section.
