---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Image Processing Exercise!
    # You'll be working with RGB image data.

    import numpy as np

    # 3D array representing a 4x4 RGB image
    # Each pixel has [R,G,B] values from 0-255
    image = np.array([
        [[255, 0, 0], [255, 0, 0], [0, 255, 0], [0, 255, 0]],    # Row 1
        [[255, 0, 0], [255, 0, 0], [0, 255, 0], [0, 255, 0]],    # Row 2
        [[0, 0, 255], [0, 0, 255], [255, 255, 0], [255, 255, 0]], # Row 3
        [[0, 0, 255], [0, 0, 255], [255, 255, 0], [255, 255, 0]]  # Row 4
    ])

    # Your tasks:
    # 1. Get the RGB values of the pixel at position (1,2)
    pixel_rgb = image[???, ???]

    # 2. Get all red values from the first row
    first_row_red = image[???, ???, ???]

    # 3. Extract the 2x2 top-left corner of the image
    top_left = image[???, ???]

    # 4. Get all blue values from the image
    all_blue = image[???, ???, ???]

    # 5. Extract the bottom-right pixel
    bottom_right = image[???, ???]
---

# Image Processing with NumPy

---

## Content

> 👩‍💻 Practice array access and slicing by manipulating RGB image data!

This exercise covers:

- Accessing individual pixels
- Extracting color channels
- Slicing image regions
- Working with 3D arrays

Example operations:

```python
# Get one pixel's RGB values
pixel = image[0, 0]          # First pixel
# array([255, 0, 0])         # Red pixel

# Get one color channel for a pixel
red = image[0, 0, 0]        # Red value (255)

# Get a region of the image
region = image[0:2, 0:2]    # 2x2 top-left corner

# Get all values for one color channel
blue_channel = image[:, :, 2]  # All blue values
```

> 💡 Remember:
>
> - 3D arrays use three indices: [row, column, color]
> - RGB values are in order: [red, green, blue]
> - Slicing works the same in all dimensions
> - Use : to select all elements in a dimension