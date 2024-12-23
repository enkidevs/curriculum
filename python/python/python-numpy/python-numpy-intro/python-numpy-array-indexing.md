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

# Array Indexing

---

## Content

Access array elements using indices:

Single element:

```python
arr = np.array([1, 2, 3, 4])
first = arr[0]     # 1
last = arr[-1]     # 4
```

> 💡 Indexing starts at 0, negative indices count from end!

Multiple elements:

```python
arr = np.array([1, 2, 3, 4, 5])
subset = arr[1:4]  # [2, 3, 4]
every_second = arr[::2]  # [1, 3, 5]
```

2D array indexing:

```python
matrix = np.array([[1, 2], [3, 4]])
element = matrix[0, 1]  # 2
row = matrix[1]         # [3, 4]
```

---

## Practice

Get elements from index 1 to 3:

```python
arr = np.array([1, 2, 3, 4, 5])
result = arr[???:???]
```

- `1`
- `4`
- `3`
- `2`

---

## Revision

To get the last element of an array:

???

- `arr[-1]`
- `arr[end]`
- `arr[last]`
- `arr[-0]`
