# Get the most of `float`s
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

links:

  - >-
    [docs.python.org](https://docs.python.org/3.5/library/stdtypes.html#additional-methods-on-float){website}

---
## Content

Python's `float` data type has several more interesting methods.

Check if your `float` contains an integer value:
```python
>>> (5.9).is_integer()
False
>>> (-9.0).is_integer()
True
```

Get a pair of integers whose ratio is equal to your `float`:
```python
>>> (-5.5).as_integer_ratio()
(-11,2)
```

Get a string equal to the **hexadecimal** representation of your `float`:
```python
>>> (3.14).hex()
'0x1.91eb851eb851fp+1'
```

The reverse can be achieved with classmethod `float.fromhex`:
```python
>>> float.fromhex('0x1.91eb851eb851fp+1')
3.14
```

---
## Practice

Complete the code snippet to get a hexadecimal string equivalent to your float:

```python
(12.71).???()
# '0x1.96b851eb851ecp+3'
```
*`hex` 
*`hexadecimal` 
*`convert.hex` 
*`hex.convert` 
*`tohex`

---
## Revision

Complete the code snippet to get a pair of integers with a ratio equal to your float value:

```python
(-5.5).???() 
# (-11,2) 
```

*`as_integer_ratio` 
*`as_int_ratio` 
*`asIntRatio`