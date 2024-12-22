---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Insertion](https://numpy.org/doc/stable/reference/generated/numpy.insert.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Inserting Into Arrays

---

## Content

Insert elements at specific positions:

Insert at index:

```python
arr = np.array([1, 2, 4])
new = np.insert(arr, 2, 3)
# array([1, 2, 3, 4])
```

> 💡 Like append, insert creates a new array!

Insert multiple values:

```python
arr = np.array([1, 4])
new = np.insert(arr, 1, [2, 3])
# array([1, 2, 3, 4])
```

Insert into 2D arrays:

```python
matrix = np.array([[1, 2], [5, 6]])
new = np.insert(matrix, 1, [3, 4], axis=0)
# array([[1, 2],
#        [3, 4],
#        [5, 6]])
```

---

## Practice

Insert a value into the array:

```python
arr = np.array([1, 2, 4])
new = np.???(arr, ???, 3)
# array([1, 2, 3, 4])
```

- `insert`
- `2`
- `add`
- `3`

---

## Revision

To insert a row in a 2D array:

```python
matrix = np.array([[1, 2], [5, 6]])
new = np.insert(matrix, 1, [3, 4], ???=0)
```

- `axis`
- `dim`
- `row`
- `pos`
