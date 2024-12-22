---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Operations](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Combining Images

---

## Content

Combine multiple images:

Blend images:

```python
# Mix two images (50% each)
blend = (image1 * 0.5 + image2 * 0.5).astype(np.uint8)
```

> Convert back to uint8 after floating-point operations!

Stack images:

```python
# Place images side by side
combined = np.hstack([image1, image2])

# Stack vertically
stacked = np.vstack([image1, image2])
```

Create collage:

```python
# 2x2 grid of images
top = np.hstack([img1, img2])
bottom = np.hstack([img3, img4])
grid = np.vstack([top, bottom])
```

---

## Practice

To combine images horizontally:

```python
result = np.???(???)
```

- `hstack`
- `[img1, img2]`
- `vstack`
- `stack`

---

## Revision

When blending images, convert result to:

???

- `uint8`
- `float64`
- `int32`
- `bool`
