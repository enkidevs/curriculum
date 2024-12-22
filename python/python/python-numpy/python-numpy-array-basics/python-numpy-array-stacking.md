---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Stacking](https://numpy.org/doc/stable/reference/generated/numpy.stack.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Stacking Arrays

---

## Content

Stack arrays to combine them into a larger array:

Stack vertically (add rows):

```python
a = np.array([1, 2])
b = np.array([3, 4])
vertical = np.vstack([a, b])
# array([[1, 2],
#        [3, 4]])
```

> 💡 Arrays must have the same shape to be stacked!

Stack horizontally (add columns):

```python
a = np.array([1, 2])
b = np.array([3, 4])
horizontal = np.hstack([a, b])
# array([1, 2, 3, 4])
```

---

## Practice

Stack these arrays vertically:

```python
x = np.array([1, 2])
y = np.array([3, 4])
result = np.???(???)
```

- `vstack`
- `[x, y]`
- `hstack`
- `stack`

---

## Revision

To add columns to an array, use:

???

- `np.hstack()`
- `np.vstack()`
- `np.stack()`
- `np.append()`
