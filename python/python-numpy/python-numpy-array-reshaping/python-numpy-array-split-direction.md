---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Splitting](https://numpy.org/doc/stable/reference/generated/numpy.split.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Splitting Arrays

---

## Content

Split arrays into smaller parts:

```python
# Split daily temperatures into morning/afternoon readings
temps = np.array([12, 15, 18, 21, 19, 17])  # 6 hourly readings
morning, afternoon = np.split(temps, 2)
# morning = array([12, 15, 18])
# afternoon = array([21, 19, 17])
```

> 💡 The array length must be evenly divisible by the number of splits!

Split 2D arrays:

```python
# Split image into top and bottom halves
image = np.array([[1, 2, 3],
                  [4, 5, 6],
                  [7, 8, 9],
                  [10, 11, 12]])

top, bottom = np.vsplit(image, 2)  # Split vertically
# top = array([[1, 2, 3],
#             [4, 5, 6]])
# bottom = array([[7, 8, 9],
#                [10, 11, 12]])

left, right = np.hsplit(image, 3)  # Split horizontally
# left = array([[1],
#              [4],
#              [7],
#              [10]])
# right = array([[3],
#               [6],
#               [9],
#               [12]])
```

> 💡 Use `vsplit` for rows (vertical split) and `hsplit` for columns (horizontal
> split)!

---

## Practice

Split an array into two equal columns:

```python
arr = np.array([[1, 2], [3, 4]])
left, right = np.???(arr, ???)
```

- `hsplit`
- `2`
- `vsplit`
- `1`

---

## Revision

To split an array into rows, use:

???

- `np.vsplit()`
- `np.hsplit()`
- `np.split()`
- `np.divide()`
