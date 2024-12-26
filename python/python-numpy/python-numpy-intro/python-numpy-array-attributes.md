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

NumPy arrays have useful attributes that tell us about their structure:

Get array shape (rows, columns):

```python
# Shape is a tuple of (rows, columns)
arr = np.array([[1, 2, 3],   # 2 rows
                [4, 5, 6]])   # 3 columns
print(arr.shape)  # (2, 3)

# For 1D arrays, shape is just (length,)
nums = np.array([1, 2, 3])
print(nums.shape)  # (3,)
```

Count elements and dimensions:

```python
arr = np.array([[1, 2], [3, 4]])
print(arr.size)    # 4 (total elements)
print(arr.ndim)    # 2 (number of dimensions)
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
