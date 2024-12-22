---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Splitting](https://numpy.org/doc/stable/reference/generated/numpy.split.html){website}
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

Split horizontally (into rows):

```python
arr = np.array([[1, 2], [3, 4], [5, 6]])
top, bottom = np.vsplit(arr, 2)
# top = array([[1, 2]])
# bottom = array([[3, 4], [5, 6]])
```

> 💡 The array must be evenly divisible by the split number!

Split vertically (into columns):

```python
arr = np.array([[1, 2, 3], [4, 5, 6]])
left, right = np.hsplit(arr, [2])
# left = array([[1, 2], [4, 5]])
# right = array([[3], [6]])
```

---

## Practice

Split an array into two equal columns:

```python
arr = np.array([[1, 2], [3, 4]])
left, right = np.???(arr, ???)
```

- `hsplit`
- `2`
- `vsplit`
- `1`

---

## Revision

To split an array into rows, use:

???

- `np.vsplit()`
- `np.hsplit()`
- `np.split()`
- `np.divide()`
