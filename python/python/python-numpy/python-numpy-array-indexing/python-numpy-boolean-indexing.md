---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Boolean Indexing](https://numpy.org/doc/stable/user/basics.indexing.html#boolean-indexing){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Boolean Indexing

---

## Content

Use boolean arrays to filter data:

Filter with conditions:

```python
arr = np.array([1, 2, 3, 4, 5])
mask = arr > 2
result = arr[mask]  # [3, 4, 5]
```

> 💡 Boolean indexing returns elements where the condition is True!

Multiple conditions:

```python
arr = np.array([1, 2, 3, 4, 5])
mask = (arr > 2) & (arr < 5)
result = arr[mask]  # [3, 4]
```

Filter 2D arrays:

```python
arr = np.array([[1, 2], [3, 4]])
mask = arr > 2
result = arr[mask]  # [3, 4]
```

---

## Practice

Get all numbers greater than 3:

```python
arr = np.array([1, 2, 3, 4, 5])
result = arr[arr ??? ???]
# [4, 5]
```

- `>`
- `3`
- `>=`
- `2`

---

## Revision

To combine conditions, use:

???

- `&`
- `and`
- `+`
- `|`
