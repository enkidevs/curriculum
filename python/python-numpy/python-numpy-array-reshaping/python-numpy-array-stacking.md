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

Stack arrays to combine them:

```python
# Stack temperature readings from two days
morning = np.array([12, 14, 16])    # Morning temps
evening = np.array([18, 16, 15])    # Evening temps

# Stack vertically (one above the other)
daily = np.vstack([morning, evening])
# array([[12, 14, 16],    # Morning readings
#        [18, 16, 15]])   # Evening readings
```

> 💡 Arrays must have compatible shapes for stacking!

Different ways to stack:

```python
# Stack side by side (horizontally)
left = np.array([[1],
                 [2]])
right = np.array([[3],
                  [4]])
combined = np.hstack([left, right])
# array([[1, 3],
#        [2, 4]])

# Stack as new dimension
red = np.array([[255, 0],     # Red channel
                [128, 255]])
blue = np.array([[0, 255],    # Blue channel
                 [255, 0]])
rgb = np.stack([red, blue])   # Creates 3D array
# array([[[255,   0],    # Red layer
#         [128, 255]],
#        [[  0, 255],    # Blue layer
#         [255,   0]]])
```

> 💡 `vstack` adds rows, `hstack` adds columns, and `stack` adds a new
> dimension!

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
