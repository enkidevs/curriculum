---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Image Transforms](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Image Transforms

---

## Content

Transform images using array operations:

Rotate image:

```python
# Rotate 90 degrees clockwise
rotated = np.rot90(image, k=1)
```

> 💡 k=1 means rotate once, k=2 twice, etc.!

Resize image:

```python
# Double size (repeat pixels)
h, w = image.shape
big = np.repeat(np.repeat(image, 2, axis=0), 2, axis=1)
```

Crop image:

```python
# Get center region
h, w = image.shape
y1, y2 = h//4, 3*h//4  # middle half
x1, x2 = w//4, 3*w//4
cropped = image[y1:y2, x1:x2]
```

---

## Practice

To rotate an image 180 degrees:

```python
rotated = np.rot90(image, k=???)
```

- `2`
- `180`
- `1`
- `90`

---

## Revision

To crop the left half of an image:

```python
h, w = image.shape
cropped = image[:, ???]
```

- `:w//2`
- `w//2:`
- `h//2`
- `0`
