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

# Combining Images

---

## Content

Combine and blend multiple images:

```python
# Create two sample patterns
pattern1 = np.zeros((8, 8), dtype=np.uint8)
pattern1[::2, ::2] = 255  # Checkerboard
pattern2 = np.zeros((8, 8), dtype=np.uint8)
pattern2[4:, 4:] = 255    # Corner block

# 1. Basic image combining
# Stack horizontally
horizontal = np.hstack([pattern1, pattern2])  # Side by side
# Stack vertically
vertical = np.vstack([pattern1, pattern2])    # Top and bottom

# Create 2x2 image grid
grid = np.block([
    [pattern1, pattern2],
    [pattern2, pattern1]
])
```

> 💡 Use np.block for complex image arrangements!

Image blending:

```python
# 2. Alpha blending
alpha = 0.7  # Blend factor (0.0 to 1.0)
blended = (pattern1 * alpha + pattern2 * (1 - alpha)).astype(np.uint8)

# Gradient blend
h, w = pattern1.shape
gradient = np.linspace(0, 1, w)  # Left-to-right gradient
gradient = np.tile(gradient, (h, 1))  # Repeat for each row

gradient_blend = (pattern1 * gradient + 
                 pattern2 * (1 - gradient)).astype(np.uint8)
```

> 💡 Always convert back to uint8 after floating-point operations!

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
