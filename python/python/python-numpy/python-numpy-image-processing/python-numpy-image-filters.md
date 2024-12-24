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

# Image Filters

---

## Content

Apply image filters and transformations:

```python
# Create a sample image with noise
image = np.random.randint(100, 200, (8, 8), dtype=np.uint8)
noise = np.random.normal(0, 20, (8, 8))
noisy = np.clip(image + noise, 0, 255).astype(np.uint8)

# 1. Basic intensity adjustments
brightened = np.clip(noisy + 50, 0, 255)    # Increase brightness
darkened = np.clip(noisy - 30, 0, 255)      # Decrease brightness
contrast = np.clip((noisy - 128) * 1.5 + 128, 0, 255).astype(np.uint8)
```

> 💡 Always clip values to stay in valid range (0-255)!

Convolution filters:

```python
# 2. Common kernels for filtering
blur_kernel = np.ones((3, 3)) / 9.0  # Box blur
sharpen_kernel = np.array([          # Sharpen
    [0, -1, 0],
    [-1, 5, -1],
    [0, -1, 0]
])
edge_kernel = np.array([             # Edge detection
    [-1, -1, -1],
    [-1, 8, -1],
    [-1, -1, -1]
])

# Apply convolution (simple implementation)
def apply_filter(image, kernel):
    result = np.zeros_like(image)
    k_size = kernel.shape[0] // 2
    
    for i in range(k_size, image.shape[0] - k_size):
        for j in range(k_size, image.shape[1] - k_size):
            window = image[i-k_size:i+k_size+1, j-k_size:j+k_size+1]
            result[i, j] = np.sum(window * kernel)
    
    return np.clip(result, 0, 255).astype(np.uint8)
```

> 💡 Convolution kernels can detect edges, blur, or sharpen!

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
