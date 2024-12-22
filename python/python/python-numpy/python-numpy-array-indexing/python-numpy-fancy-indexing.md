---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Fancy Indexing](https://numpy.org/doc/stable/user/basics.indexing.html#fancy-indexing){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Fancy Indexing

---

## Content

Use arrays of indices to access elements:

Select specific elements:

```python
arr = np.array([10, 20, 30, 40])
indices = [0, 2]
result = arr[indices]  # [10, 30]
```

> 💡 Fancy indexing lets you pick elements in any order!

Reorder elements:

```python
arr = np.array([1, 2, 3, 4])
order = [3, 1, 2, 0]
result = arr[order]  # [4, 2, 3, 1]
```

Select from 2D arrays:

```python
arr = np.array([[1, 2], [3, 4], [5, 6]])
rows = [0, 2]
cols = [1, 0]
result = arr[rows, cols]  # [2, 5]
```

---

## Practice

Get elements at positions 1 and 3:

```python
arr = np.array([10, 20, 30, 40])
result = arr[???]
# [20, 40]
```

- `[1, 3]`
- `[2, 4]`
- `[0, 2]`
- `[1:3]`

---

## Revision

To reorder array elements:

```python
arr = np.array([1, 2, 3])
result = arr[???]  # [3, 1, 2]
```

- `[2, 0, 1]`
- `[3, 1, 2]`
- `[-1, -3, -2]`
- `[1, 2, 0]`
