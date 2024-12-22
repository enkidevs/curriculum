---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Boolean Masking](https://numpy.org/doc/stable/user/basics.indexing.html#boolean-indexing){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Image Masks

---

## Content

Use boolean masks to modify specific pixels:

Create mask:

```python
# Mask for bright pixels
bright_mask = image > 200
print(bright_mask)  # Array of True/False
```

> 💡 Masks let you select pixels based on conditions!

Apply mask:

```python
# Set bright pixels to white
image_copy = image.copy()
image_copy[bright_mask] = 255
```

Combine masks:

```python
# Find medium brightness pixels
lower = image >= 100
upper = image <= 150
medium_mask = lower & upper
```

---

## Practice

Create a mask for dark pixels:

```python
dark = image ??? ???
```

- `<`
- `50`
- `>`
- `200`

---

## Revision

To modify pixels using a mask:

```python
mask = image > 200
image[???] = 255
```

- `mask`
- `where`
- `True`
- `filter`
