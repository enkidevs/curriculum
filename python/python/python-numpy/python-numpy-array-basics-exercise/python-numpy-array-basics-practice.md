---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Python coding playground
    # You're organizing image data for a photo gallery!
    # Tasks:
    # - Reshape images from 1D to 2D arrays
    # - Stack multiple images together
    # - Split image collections by category
    # - Combine image sets

    # Type your code here:
    import numpy as np

    # Sample image data (simplified as numbers for this exercise)
    image1 = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9])  # 3x3 image flattened
    image2 = np.array([9, 8, 7, 6, 5, 4, 3, 2, 1])  # 3x3 image flattened

    # Categories of images (0: landscape, 1: portrait)
    categories = np.array([0, 1, 0, 1, 0])

    # Your gallery organization code:
---

# Photo Gallery Organization

---

## Content

> 👩‍💻 Your task is to organize photo data using array transformations!

To solve this, try using:

- `reshape()` to convert 1D arrays to 2D images
- `vstack()` or `hstack()` to combine images
- `split()` to separate by category
- Array transformations for organization

Give it a try, and feel free to experiment!

> 💡 Remember that when reshaping, the total number of elements must stay the
> same!

If you're stuck, try breaking it down:

1. Convert flat arrays to square images
2. Combine similar images
3. Split by category
4. Stack collections together
