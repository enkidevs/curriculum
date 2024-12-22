---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Slicing](https://numpy.org/doc/stable/user/basics.indexing.html#slicing-and-striding){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Array Slicing

---

## Content

Slice arrays to get sections of data:

Basic slicing:

```python
arr = np.array([1, 2, 3, 4, 5])
subset = arr[1:4]  # [2, 3, 4]
```

> 💡 Slicing uses [start:stop] format, stop is not included!

Slice with step:

```python
arr = np.array([1, 2, 3, 4, 5])
every_second = arr[::2]  # [1, 3, 5]
```

Slice 2D arrays:

```python
arr = np.array([[1, 2, 3],
                [4, 5, 6]])
corner = arr[0:2, 1:3]
# array([[2, 3],
#        [5, 6]])
```

---

## Practice

Get every third element:

```python
arr = np.array([1, 2, 3, 4, 5, 6])
result = arr[???:???:???]
# [1, 4]
```

- `0`
- `6`
- `3`
- `1`
- `2`
- `4`

---

## Revision

To get the first three elements:

```python
arr = np.array([1, 2, 3, 4, 5])
result = arr[???:???]
```

- `0`
- `3`
- `1`
- `4`
