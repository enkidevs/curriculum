---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Reshaping](https://numpy.org/doc/stable/reference/generated/numpy.reshape.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Reshaping Arrays

---

## Content

Reshape arrays to reorganize the data:

```python
# Convert 1D sensor readings into a 2D time series
readings = np.array([1, 2, 3, 4, 5, 6])  # 6 hourly readings
by_day = readings.reshape(2, 3)  # 2 days, 3 readings per day
# array([[1, 2, 3],
#        [4, 5, 6]])
```

> 💡 The total number of elements must stay the same when reshaping!

Common reshaping operations:

```python
# Flatten 2D image into 1D array
image = np.array([[1, 2],
                  [3, 4]])
flat = image.flatten()     # array([1, 2, 3, 4])

# Convert 1D array to column
data = np.array([1, 2, 3])
column = data.reshape(-1, 1)  # Use -1 to auto-calculate size
# array([[1],
#        [2],
#        [3]])

# Swap rows and columns (transpose)
matrix = np.array([[1, 2, 3],
                  [4, 5, 6]])
transposed = matrix.T
# array([[1, 4],
#        [2, 5],
#        [3, 6]])
```

> 💡 Use transpose (`.T`) to switch rows and columns quickly!

---

## Practice

Reshape a 1D array into a 2x2 matrix:

```python
arr = np.array([1, 2, 3, 4])
matrix = arr.???(2, ???)
```

- `reshape`
- `2`
- `shape`
- `4`

---

## Revision

To make a 2D array into a 1D array, use:

???

- `flatten()`
- `flat()`
- `reshape(1)`
- `1D()`
