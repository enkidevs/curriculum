---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Python coding playground
    # You're building a basic image editor!
    # Tasks:
    # - Create a thumbnail (reduce size by half)
    # - Adjust image brightness
    # - Add a border around the image
    # - Create a black & white version

    # Type your code here:
    import numpy as np

    # Sample 6x6 grayscale image (0=black, 255=white)
    image = np.array([
        [100, 120, 150, 140, 110, 100],
        [110, 130, 160, 150, 120, 110],
        [130, 140, 170, 160, 140, 130],
        [120, 130, 160, 150, 130, 120],
        [100, 110, 140, 130, 110, 100],
        [90,  100, 130, 120, 100, 90]
    ], dtype=np.uint8)

    # Your image editing code:
---

# Image Editor

---

## Content

> 👩‍💻 Your task is to create basic image editing functions!

To solve this, try using:

- Array slicing for thumbnails
- Broadcasting for adjustments
- Array operations for borders
- Comparison for black & white

Give it a try, and feel free to experiment!

> 💡 Remember that pixel values must stay between 0 and 255!

If you're stuck, try breaking it down:

1. Resize the image
2. Change brightness
3. Add border
4. Convert to B&W
