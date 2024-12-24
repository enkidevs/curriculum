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

# Image Transforms

---

## Content

Apply geometric transformations to images:

```python
# Create a sample pattern image (8x8 checkerboard)
pattern = np.zeros((8, 8), dtype=np.uint8)
pattern[::2, ::2] = 255  # White squares
pattern[1::2, 1::2] = 255

# 1. Basic transformations
flipped_v = np.flipud(pattern)        # Flip vertically
flipped_h = np.fliplr(pattern)        # Flip horizontally
rotated_90 = np.rot90(pattern)        # Rotate 90° clockwise
rotated_180 = np.rot90(pattern, k=2)  # Rotate 180°
```

> 💡 Rotations use k parameter for number of 90° turns!

Advanced transforms:

```python
# 2. Scaling and cropping
# Scale up by repeating pixels
scaled_2x = np.repeat(np.repeat(pattern, 2, axis=0), 2, axis=1)

# Crop center region
h, w = pattern.shape
crop_size = min(h, w) // 2
start_y = h//2 - crop_size//2
start_x = w//2 - crop_size//2
cropped = pattern[start_y:start_y+crop_size, 
                 start_x:start_x+crop_size]

# 3. Create affine transformation
# Translate pattern diagonally
shifted = np.roll(np.roll(pattern, 2, axis=0), 2, axis=1)

# Create diagonal gradient
y, x = np.ogrid[:h, :w]
gradient = (x + y).astype(float) / (w + h)
transformed = (pattern * gradient).astype(np.uint8)
```

> 💡 Complex transforms can be combined for creative effects!

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
