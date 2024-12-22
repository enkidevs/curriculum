---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Index Tricks](https://numpy.org/doc/stable/user/basics.indexing.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Index Tricks

---

## Content

NumPy provides useful shortcuts for indexing:

Negative indices:

```python
arr = np.array([1, 2, 3, 4])
last = arr[-1]    # 4
last_two = arr[-2:]  # [3, 4]
```

> 💡 Negative indices count from the end of the array!

Reverse array:

```python
arr = np.array([1, 2, 3])
reversed = arr[::-1]  # [3, 2, 1]
```

Multiple dimensions:

```python
arr = np.array([[1, 2], [3, 4]])
diagonal = arr[range(2), range(2)]
# [1, 4]
```

---

## Practice

Get the last two elements:

```python
arr = np.array([1, 2, 3, 4])
result = arr[???]
# [3, 4]
```

- `-2:`
- `-2:-1`
- `2:`
- `-1:-2`

---

## Revision

To reverse an array:

```python
arr = np.array([1, 2, 3])
result = arr[???]
```

- `::-1`
- `-1:`
- `::-2`
- `:-1`
