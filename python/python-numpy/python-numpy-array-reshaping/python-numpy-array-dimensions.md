---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [The Basics of NumPy](https://numpy.org/doc/stable/user/quickstart.html#the-basics){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Multi-dimensional Arrays

---

## Content

NumPy arrays can have multiple dimensions, perfect for real-world data:

```python
# 1D array: Temperature readings over time
temps = np.array([22, 24, 23, 25])  # 4 temperatures

# 2D array: Grayscale image (brightness values)
image = np.array([[50, 20, 10],     # Each row is one line
                  [30, 40, 50],     # of the image
                  [60, 70, 80]])    # (3x3 pixels)

# 3D array: Color image (RGB values)
color_img = np.array([[[255, 0, 0],    # Red pixel
                      [0, 255, 0]],    # Green pixel
                     [[0, 0, 255],     # Blue pixel
                      [255, 255, 0]]])  # Yellow pixel
```

Check array properties:

```python
# Shape tells you size in each dimension
print(temps.shape)      # (4,)      - 4 elements
print(image.shape)      # (3, 3)    - 3x3 grid
print(color_img.shape)  # (2, 2, 3) - 2x2 pixels, 3 colors
```

Access elements:

```python
# Get first temperature
first_temp = temps[0]           # 22

# Get pixel from grayscale image
pixel = image[1, 2]            # 50

# Get color values of one pixel
colors = color_img[0, 1]       # [0, 255, 0]
```

> 💡 Each dimension adds a new set of square brackets in the array!

---

## Practice

What's the value of `x`?

```python
arr = np.array([[1, 2], [3, 4]])
x = arr[0, 1]
# ???
```

- `2`
- `1`
- `3`
- `4`

---

## Revision

A 2D NumPy array is also called a:

???

- `matrix`
- `grid`
- `table`
- `sheet`
