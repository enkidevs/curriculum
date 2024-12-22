---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Joining](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Joining Arrays

---

## Content

Join arrays in different ways:

Concatenate arrays:

```python
a = np.array([1, 2])
b = np.array([3, 4])
joined = np.concatenate([a, b])
# array([1, 2, 3, 4])
```

> 💡 Arrays must have the same dimensions to join!

Join 2D arrays vertically:

```python
x = np.array([[1, 2], [3, 4]])
y = np.array([[5, 6]])
vertical = np.vstack([x, y])
# array([[1, 2],
#        [3, 4],
#        [5, 6]])
```

Join arrays side by side:

```python
a = np.array([[1], [2]])
b = np.array([[3], [4]])
horizontal = np.hstack([a, b])
# array([[1, 3],
#        [2, 4]])
```

---

## Practice

Join these arrays:

```python
x = np.array([1, 2])
y = np.array([3, 4])
result = np.???(???)
# array([1, 2, 3, 4])
```

- `concatenate`
- `[x, y]`
- `join`
- `merge`

---

## Revision

To join arrays vertically, use:

???

- `np.vstack()`
- `np.hstack()`
- `np.stack()`
- `np.join()`
