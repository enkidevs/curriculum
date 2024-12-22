---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Indexing](https://numpy.org/doc/stable/user/basics.indexing.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Accessing Array Elements

---

## Content

Access elements in multi-dimensional arrays:

Single element access:

```python
arr = np.array([[1, 2, 3],
                [4, 5, 6]])
element = arr[0, 1]  # 2
```

> 💡 Use commas to separate dimensions when indexing!

Access rows:

```python
arr = np.array([[1, 2, 3],
                [4, 5, 6]])
first_row = arr[0]  # [1, 2, 3]
```

Access columns:

```python
arr = np.array([[1, 2],
                [3, 4]])
first_col = arr[:, 0]  # [1, 3]
```

---

## Practice

Get the element at position (1,2):

```python
arr = np.array([[1, 2, 3],
                [4, 5, 6]])
x = arr[???, ???]  # 6
```

- `1`
- `2`
- `0`
- `3`

---

## Revision

To get a column from a 2D array:

```python
arr = np.array([[1, 2],
                [3, 4]])
col = arr[???, 1]  # [2, 4]
```

- `:`
- `*`
- `.`
- `all`
