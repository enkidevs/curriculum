---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Image Processing Exercise!
    # You're enhancing a grayscale photograph.

    import numpy as np

    # Create a sample photograph (8x8 grayscale)
    photo = np.array([
        [150, 160, 170, 180, 170, 160, 150, 140],  # Sky
        [140, 150, 160, 170, 160, 150, 140, 130],
        [130, 140, 150, 160, 150, 140, 130, 120],
        [120, 130, 140, 150, 140, 130, 120, 110],  # Mountains
        [100, 110, 120, 130, 120, 110, 100, 90],
        [80, 90, 100, 110, 100, 90, 80, 70],
        [60, 70, 80, 90, 80, 70, 60, 50],         # Ground
        [40, 50, 60, 70, 60, 50, 40, 30]
    ], dtype=np.uint8)

    # Your tasks:
    # 1. Apply image filters
    # Create a blurred version (3x3 average filter)
    blurred = ???  # Hint: Use convolution with np.ones((3,3))/9

    # Create a sharpened version
    sharp_kernel = np.array([
        [0, -1, 0],
        [-1, 5, -1],
        [0, -1, 0]
    ])
    sharpened = ???

    # 2. Create and apply masks
    # Mask for bright sky (top third, values > 150)
    sky_mask = ???
    # Mask for dark ground (bottom third, values < 70)
    ground_mask = ???

    # 3. Apply transformations
    # Rotate image 180 degrees
    rotated = ???
    # Create a 2x2 tiled pattern
    tiled = ???

    # 4. Combine original and processed versions
    # Blend original with sharpened (70% original, 30% sharp)
    final = ???

    # 5. Add a border
    # Create 10x10 output with 1-pixel black border
    bordered = ???
---

# Image Enhancement

---

## Content

> 👩‍💻 Practice image processing with a landscape photo!

This exercise covers all image processing concepts:

- Image filtering (blur, sharpen)
- Masking (sky, ground)
- Transformations (rotate, tile)
- Image combining (blend, border)

Example operations:

```python
# Apply convolution filter
def apply_filter(image, kernel):
    result = np.zeros_like(image)
    k_size = kernel.shape[0] // 2
    for i in range(k_size, image.shape[0] - k_size):
        for j in range(k_size, image.shape[1] - k_size):
            window = image[i-k_size:i+k_size+1, j-k_size:j+k_size+1]
            result[i, j] = np.sum(window * kernel)
    return np.clip(result, 0, 255).astype(np.uint8)

# Create and apply mask
mask = (image > threshold) & (image < upper)
result[mask] = new_value

# Transform and combine
transformed = np.rot90(image, k=2)
combined = np.hstack([image, transformed])
```

> 💡 Remember:
>
> - Clip values to 0-255
> - Use uint8 dtype
> - Consider edge pixels
> - Preserve image dimensions
