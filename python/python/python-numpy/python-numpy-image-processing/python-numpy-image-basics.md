---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Image Processing](https://numpy.org/doc/stable/user/absolute_beginners.html#arrays-as-images){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Image Basics

---

## Content

Images are just 2D or 3D arrays:

Grayscale image:

```python
# 4x4 grayscale image (0=black, 255=white)
image = np.array([
    [0,   85,  170, 255],
    [85,  170, 255, 170],
    [170, 255, 170, 85],
    [255, 170, 85,  0]
])
```

> 💡 Grayscale images are 2D arrays of intensity values!

Get image info:

```python
print(image.shape)     # (4, 4)
print(image.dtype)     # uint8
print(image.min())     # 0
print(image.max())     # 255
```

Flip image:

```python
flipped = np.flipud(image)  # Flip up-down
```

---

## Practice

A grayscale image pixel value of 0 represents:

???

- Black
- White
- Gray
- Transparent

---

## Revision

A grayscale image is stored as a:

???

- 2D array
- 1D array
- 3D array
- 4D array
