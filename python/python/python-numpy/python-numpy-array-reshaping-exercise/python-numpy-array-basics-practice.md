---
author: enki-ai
type: normal
category: coding
setupCode:
  startingPoint: |
    # Welcome to the Photo Gallery Exercise!
    # You're building a photo organization system.

    import numpy as np

    # Sample photo data (0-255 brightness values)
    photo1 = np.array([10, 20, 30, 40, 50, 60])  # 3x2 photo, flattened
    photo2 = np.array([15, 25, 35, 45, 55, 65])  # 3x2 photo, flattened

    # Photo categories (0: landscape, 1: portrait)
    categories = np.array([0, 1, 0, 1])

    # Your tasks:
    # 1. Reshape the flattened photos into 3x2 arrays
    # 2. Stack multiple photos into an album
    # 3. Split the album by category
    # 4. Make safe copies for editing

    # Your code here:
    # 1. Reshape photos
    photo1_2d = photo1.reshape(???, ???)  # Make it 3x2
    photo2_2d = photo2.reshape(???, ???)  # Make it 3x2

    # 2. Stack photos vertically
    album = np.???(???)  # Stack the photos

    # 3. Split album horizontally
    left, right = np.???(album, ???)  # Split into two parts

    # 4. Create editable copies
    edit_copy = album.???()  # Make independent copy
---

# Photo Gallery Organization

---

## Content

> 👩‍💻 Practice organizing photos using NumPy arrays!

This exercise covers:

- Reshaping flattened photos
- Stacking photos into albums
- Splitting albums into sections
- Creating safe copies for editing

Example operations:

```python
# Reshape a flattened 2x3 photo
flat_photo = np.array([1, 2, 3, 4, 5, 6])
photo_2d = flat_photo.reshape(2, 3)
# array([[1, 2, 3],
#        [4, 5, 6]])

# Stack two photos vertically
album = np.vstack([photo1_2d, photo2_2d])

# Split album horizontally
left, right = np.hsplit(album, 2)
```

> 💡 Remember:
>
> - Check array shapes before reshaping
> - Make copies when editing photos
> - Use appropriate stack/split operations

Extra challenges:

- Add a third dimension for RGB colors
- Create a photo slideshow (3D array)
- Split photos into thumbnails
