---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Deletion](https://numpy.org/doc/stable/reference/generated/numpy.delete.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deleting From Arrays

---

## Content

Remove elements from arrays:

Delete by index:

```python
arr = np.array([1, 2, 3, 4])
new = np.delete(arr, 1)
# array([1, 3, 4])
```

> 💡 Delete returns a new array without the specified elements!

Delete multiple elements:

```python
arr = np.array([1, 2, 3, 4, 5])
new = np.delete(arr, [1, 3])
# array([1, 3, 5])
```

Delete from 2D arrays:

```python
matrix = np.array([[1, 2], [3, 4], [5, 6]])
new = np.delete(matrix, 1, axis=0)
# array([[1, 2],
#        [5, 6]])
```

---

## Practice

Delete an element from the array:

```python
arr = np.array([1, 2, 3, 4])
new = np.???(arr, ???)
# array([1, 3, 4])
```

- `delete`
- `1`
- `remove`
- `2`

---

## Revision

To delete a row from a 2D array:

```python
matrix = np.array([[1, 2], [3, 4]])
new = np.delete(matrix, 0, ???=0)
```

- `axis`
- `dim`
- `row`
- `index`
