---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Image Filtering](https://numpy.org/doc/stable/user/absolute_beginners.html#array-operations){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Image Filters

---

## Content

Apply simple filters to images:

Brighten image:

```python
# Add brightness (clip to valid range)
bright = np.clip(image + 50, 0, 255)
```

> 💡 np.clip prevents values from going outside valid range!

Increase contrast:

```python
# Multiply values (scale back to 0-255)
contrast = np.clip(image * 1.5, 0, 255)
```

Blur image:

```python
# Average each pixel with neighbors
kernel = np.ones((3,3)) / 9  # 3x3 average
blurred = np.zeros_like(image)
for i in range(1, image.shape[0]-1):
    for j in range(1, image.shape[1]-1):
        window = image[i-1:i+2, j-1:j+2]
        blurred[i,j] = np.sum(window * kernel)
```

---

## Practice

To prevent pixel values from exceeding 255, use:

```python
bright = np.???(image + 50, ???, ???)
```

- `clip`
- `0`
- `255`
- `max`
- `min`
- `100`

---

## Revision

A 3x3 averaging kernel has values of:

???

- 1/9
- 1
- 1/3
- 0
