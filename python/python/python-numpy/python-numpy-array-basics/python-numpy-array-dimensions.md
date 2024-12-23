---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Multi-dimensional Arrays](https://numpy.org/doc/stable/user/quickstart.html#the-basics){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Multi-dimensional Arrays

---

## Content

NumPy arrays can have multiple dimensions, making them perfect for representing
real-world data like:

- Images (2D arrays of pixels)
- Time series data (1D arrays of values)
- RGB colors (3D arrays)

Create a 2D array (matrix):

```python
matrix = np.array([[1, 2], [3, 4]])
# array([[1, 2],
#        [3, 4]])
```

> Each inner list becomes a row in the matrix!

Access elements using row, column:

```python
first_row = matrix[0]    # [1, 2]
element = matrix[1, 0]   # 3
```

Check dimensions:

```python
dimensions = matrix.ndim  # 2
```

---

## Practice

What's the value of `x`?

```python
arr = np.array([[1, 2], [3, 4]])
x = arr[0, 1]
# ???
```

- `2`
- `1`
- `3`
- `4`

---

## Revision

A 2D NumPy array is also called a:

???

- `matrix`
- `grid`
- `table`
- `sheet`
