---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Sorting Arrays](https://numpy.org/doc/stable/reference/generated/numpy.sort.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Sorting Arrays

---

## Content

Sort arrays in different ways:

Sort in ascending order:

```python
arr = np.array([3, 1, 4, 2])
sorted = np.sort(arr)
# array([1, 2, 3, 4])
```

> 💡 Original array remains unchanged with `np.sort()`!

Sort in place:

```python
arr = np.array([3, 1, 4, 2])
arr.sort()
# array([1, 2, 3, 4])
```

Find sorted positions:

```python
arr = np.array([3, 1, 4, 2])
indices = arr.argsort()
# array([1, 3, 0, 2])
```

---

## Practice

Sort this array:

```python
arr = np.array([5, 2, 8, 1])
result = ???(arr)
# array([1, 2, 5, 8])
```

- `np.sort`
- `sort`
- `sorted`
- `order`

---

## Revision

To modify the original array when sorting:

```python
arr = np.array([3, 1, 2])
???
```

- `arr.sort()`
- `np.sort(arr)`
- `sorted(arr)`
- `arr.order()`
