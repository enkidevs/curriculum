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

Split arrays into multiple parts:

```python
# Split RGB image into color channels
image = np.array([[255, 0, 0],    # Red
                  [0, 255, 0],    # Green
                  [0, 0, 255]])   # Blue

r, g, b = np.vsplit(image, 3)     # Split vertically
# r = array([[255, 0, 0]])
# g = array([[0, 255, 0]])
# b = array([[0, 0, 255]])
```

> 💡 The number of splits must evenly divide the array!

Split horizontally (into rows):

```python
# Split RGB image into channels
image = np.array([[255, 0, 0],    # Red
                 [0, 255, 0],     # Green
                 [0, 0, 255]])    # Blue
r, g, b = np.vsplit(image, 3)
# r = array([[255], [0], [0]])
# g = array([[0], [255], [0]])
# b = array([[0], [0], [255]])
```

> 💡 The array must be evenly divisible by the split number!

Split vertically (into columns):

```python
arr = np.array([[1, 2, 3], [4, 5, 6]])
left, right = np.hsplit(arr, [2])
# left = array([[1, 2], [4, 5]])
# right = array([[3], [6]])
```

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
