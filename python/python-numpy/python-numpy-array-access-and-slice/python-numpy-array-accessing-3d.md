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

# Accessing 3D Array Elements

---

## Content

One common use case for 3D arrays is to represent RGB images. Each pixel is represented by three values: red, green, and blue.

```python
# RGB image data (
image = np.array([[[255, 0, 0],     # Red pixel
                   [0, 255, 0]],     # Green pixel
                  [[0, 0, 255]]])     # Blue pixel

# Get one pixel's RGB values
pixel = image[0, 0]          # [255, 0, 0]

# Get red value of specific pixel
red = image[0, 0, 0]        # 255
```

> 💡 Each dimension adds another index: `array[depth, row, column]`

---

## Practice

Given this 3D array representing two RGB images:

```python
# Assume that RGB values are stored in the following order: [R, G, B]
images = np.array([[[255, 0, 0], [0, 255, 0]],
                  [[0, 0, 255], [255, 255, 255]]])

# Access the blue value of the second pixel in the first image
blue_value = ???

# Access all color values for the first pixel in the second image
pixel_values = ???
```

- `[0, 1, 2]`
- `[1, 0]`
- `[1, 0, 0]`
- `[0, 1]`

---

## Revision

```python
data_3d = np.array([[[1, 2], [3, 4]],
                    [[5, 6], [7, 8]]])
print(data_3d[1, 0, 1])
```

What is the output of this code?

???

- `6`
- `7`
- `8`
- `5`
