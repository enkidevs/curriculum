---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Data Types](https://numpy.org/doc/stable/user/basics.types.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# NumPy Numeric Types

---

## Content

NumPy provides more precise numeric types than Python:

Integer types:

```python
arr = np.array([1, 2, 3], dtype=np.int32)
print(arr.dtype)  # int32
```

> 💡 The number in int32 means it uses 32 bits of memory!

Float types:

```python
arr = np.array([1.0, 2.0, 3.0])
print(arr.dtype)  # float64
```

Complex numbers:

```python
arr = np.array([1+2j, 3+4j])
print(arr.dtype)  # complex128
```

---

## Practice

Create an array of 32-bit integers:

```python
arr = np.array([1, 2, 3], dtype=???)
```

- `np.int32`
- `int32`
- `numpy.int32`
- `int`

---

## Revision

What's the default type for decimal numbers in NumPy?

???

- `float64`
- `float32`
- `decimal`
- `double`
