# Get the most of `int`s
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

notes: |
  This line of output from a snippet in the insight:

  11 # 555 in binary is 10000000000

  is incorrect. It should be:

  11 # 1024 in binary is 10000000000

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#additional-methods-on-integer-types){website}

---
## Content

The basic `int` type has a few more additional methods:

Find the necessary number of **bits** to represent the `int` in binary (no sign and no leading zeros):
```python
>>> n = 1024
>>> n.bit_length()
11
```
1024 in binary is 10000000000, i.e. requires 11 bits to represent in binary.

Get an array of bytes representing your `int`. Here, **endianness** aka byteorder (whether *big* or *little*) and **signed** or **unsigned** representation (`True` for **two's complement**) are taken into consideration:
```python
# to_byes(length, byteorder, *, \
#  signed= False)
>>> n.to_bytes(2, byteorder='big')
b'\x04\x00'
>>> n.to_bytes(10, byteorder='little', \
signed=True)
b'\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00'

```
The reverse process can be achieved with the classmethod `int.from_bytes`:
```python
int.from_bytes(b'\x04\x00', byteorder='big')
1024
```

---
## Practice

Complete the code snippet to change the variable `e` into bytes:

```python 
e = 4096
e.???(2, byteorder='big') 
# b'\x10\x00'

```

*`to_bytes` 
*`tobytes` 
*`toBytes` 
*`to-bytes`

---
## Revision

Complete the code snippet to get the number of bits required to represent `e`

```python
e = 4096
e.???() 
# 13
```
*`bit_length` 
*`length` 
*`num_bits`