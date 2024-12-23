---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Attributes](https://numpy.org/doc/stable/reference/arrays.ndarray.html#array-attributes){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Array Attributes

---

## Content

NumPy arrays have useful attributes:

Get array shape:

```python
arr = np.array([[1, 2, 3], [4, 5, 6]])
print(arr.shape)  # (2, 3)
```

> 💡 Shape tells you dimensions and size!

Check data type:

```python
arr = np.array([1, 2, 3])
print(arr.dtype)  # int64
```

Count elements:

```python
arr = np.array([[1, 2], [3, 4]])
print(arr.size)    # 4 elements
print(arr.ndim)    # 2 dimensions
```

---

## Practice

Get the number of dimensions:

```python
arr = np.array([[1, 2], [3, 4]])
dims = arr.???
```

- `ndim`
- `dimensions`
- `shape`
- `size`

---

## Revision

To find total number of elements:

???

- `array.size`
- `array.length`
- `array.count`
- `array.elements`
