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

Stacking combines arrays in different ways:

> 💡 Arrays must have compatible shapes for stacking!

Stack arrays vertically (along rows):

```python
# Combine RGB channels into an image
red = np.array([255, 0, 0])      # Red channel
green = np.array([0, 255, 0])    # Green channel
blue = np.array([0, 0, 255])     # Blue channel

rgb = np.vstack([red, green, blue])
# array([[255,   0,   0],
#        [  0, 255,   0],
#        [  0,   0, 255]])
```

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
