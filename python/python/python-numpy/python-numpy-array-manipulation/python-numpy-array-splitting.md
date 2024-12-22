---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Splitting](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Splitting Arrays

---

## Content

Split arrays into smaller pieces:

Split array evenly:

```python
arr = np.array([1, 2, 3, 4])
first, second = np.split(arr, 2)
# first = array([1, 2])
# second = array([3, 4])
```

> 💡 The number of splits must divide the array length evenly!

Split at specific positions:

```python
arr = np.array([1, 2, 3, 4, 5])
a, b, c = np.split(arr, [2, 4])
# a = array([1, 2])
# b = array([3, 4])
# c = array([5])
```

Split 2D array vertically:

```python
matrix = np.array([[1, 2], [3, 4]])
left, right = np.hsplit(matrix, 2)
# left = array([[1], [3]])
# right = array([[2], [4]])
```

---

## Practice

Split this array in half:

```python
arr = np.array([1, 2, 3, 4])
x, y = np.???(arr, ???)
```

- `split`
- `2`
- `divide`
- `[2]`

---

## Revision

To split an array at position 3, use:

???

- `np.split(arr, [3])`
- `np.split(arr, 3)`
- `arr.split(3)`
- `arr.divide(3)`
