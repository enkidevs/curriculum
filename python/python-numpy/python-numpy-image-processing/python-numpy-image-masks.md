---
author: enki-ai
type: normal
category: must-know
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

Use masks for selective image processing:

```python
# Create a sample grayscale image
image = np.random.randint(0, 255, (8, 8), dtype=np.uint8)

# 1. Create masks based on intensity
bright_mask = image > 200          # Find bright pixels
dark_mask = image < 50            # Find dark pixels
mid_mask = (image >= 100) & (image <= 150)  # Middle range

# Apply masks to modify image
result = image.copy()
result[bright_mask] = 255  # Set bright areas to white
result[dark_mask] = 0      # Set dark areas to black
```

> 💡 Masks are boolean arrays matching the image shape!

Advanced masking:

```python
# 2. Create geometric masks
h, w = image.shape
y, x = np.ogrid[:h, :w]

# Circular mask
center_y, center_x = h//2, w//2
radius = min(h, w)//3
circle_mask = (x - center_x)**2 + (y - center_y)**2 <= radius**2

# Gradient mask
gradient_mask = np.linspace(0, 1, w)
gradient_mask = np.tile(gradient_mask, (h, 1))

# Combine masks
combined_mask = circle_mask & (gradient_mask > 0.5)
result[combined_mask] = image[combined_mask] * 1.5  # Brighten selected area
```

> 💡 Complex masks can be created by combining simpler ones!

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
