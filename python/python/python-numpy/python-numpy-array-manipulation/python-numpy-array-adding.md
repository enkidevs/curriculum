---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Adding](https://numpy.org/doc/stable/reference/generated/numpy.append.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Adding to Arrays

---

## Content

Add elements to arrays in different ways:

Append elements:

```python
arr = np.array([1, 2, 3])
new = np.append(arr, 4)
# array([1, 2, 3, 4])
```

> 💡 `append` creates a new array - it doesn't modify the original!

Add multiple elements:

```python
arr = np.array([1, 2])
new = np.append(arr, [3, 4])
# array([1, 2, 3, 4])
```

Add to 2D arrays:

```python
matrix = np.array([[1, 2], [3, 4]])
row = np.array([[5, 6]])
new = np.append(matrix, row, axis=0)
# array([[1, 2],
#        [3, 4],
#        [5, 6]])
```

---

## Practice

Add a new element to the array:

```python
arr = np.array([1, 2, 3])
new = np.???(arr, ???)
# array([1, 2, 3, 4])
```

- `append`
- `4`
- `add`
- `push`

---

## Revision

To add a row to a 2D array, use:

```python
matrix = np.array([[1, 2]])
new = np.append(matrix, [[3, 4]], ???=0)
```

- `axis`
- `dim`
- `row`
- `direction`
