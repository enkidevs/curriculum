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

# Image Basics

---

## Content

Work with images as NumPy arrays:

```python
# Create a simple 8x8 grayscale image
# Representing a gradient pattern
gradient = np.linspace(0, 255, 64, dtype=np.uint8).reshape(8, 8)

# Basic image properties
print(f"Shape: {gradient.shape}")         # (8, 8)
print(f"Data type: {gradient.dtype}")     # uint8
print(f"Value range: {gradient.min()}-{gradient.max()}")  # 0-255

# Create a small RGB color image (3x3)
rgb_image = np.array([
    [[255, 0, 0], [0, 255, 0], [0, 0, 255]],     # Red, Green, Blue
    [[255, 255, 0], [255, 0, 255], [0, 255, 255]], # Yellow, Magenta, Cyan
    [[128, 128, 128], [0, 0, 0], [255, 255, 255]]  # Gray, Black, White
], dtype=np.uint8)
```

> 💡 RGB images are 3D arrays with shape (height, width, 3)!

Image operations:

```python
# Basic transformations
flipped_v = np.flipud(gradient)    # Flip vertically
flipped_h = np.fliplr(gradient)    # Flip horizontally
rotated = np.rot90(gradient)       # Rotate 90 degrees

# Extract color channels from RGB
red = rgb_image[:, :, 0]    # Red channel
green = rgb_image[:, :, 1]  # Green channel
blue = rgb_image[:, :, 2]   # Blue channel

# Convert RGB to grayscale (simple average)
grayscale = rgb_image.mean(axis=2).astype(np.uint8)
```

> 💡 Always preserve uint8 type for image display!

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
