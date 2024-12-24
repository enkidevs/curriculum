---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Indexing](https://numpy.org/doc/stable/user/basics.indexing.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Accessing Array Elements

---

## Content

Access elements in multi-dimensional arrays:

```python
# Student grades for two tests
grades = np.array([[85, 90],    # Student 1
                   [92, 88],    # Student 2
                   [78, 95]])   # Student 3

# Get one student's grades
first_student = grades[0]     # [85, 90]

# Get specific grade (row 1, column 0)
math_grade = grades[1, 0]     # 92

# Get all grades for first test
first_test = grades[:, 0]     # [85, 92, 78]
```

> 💡 Use commas to separate dimensions: `array[row, column]`

Access elements in 3D arrays:

```python
# RGB image data (2x2 pixels)
image = np.array([[[255, 0, 0],     # Red pixel
                   [0, 255, 0]],     # Green pixel
                  [[0, 0, 255],      # Blue pixel
                   [255, 255, 0]]])  # Yellow pixel

# Get one pixel's RGB values
pixel = image[0, 0]          # [255, 0, 0]

# Get red value of specific pixel
red = image[0, 0, 0]        # 255
```

> 💡 Each dimension adds another index: `array[depth, row, column]`

---

## Practice

Get the element at position (1,2):

```python
arr = np.array([[1, 2, 3],
                [4, 5, 6]])
x = arr[???, ???]  # 6
```

- `1`
- `2`
- `0`
- `3`

---

## Revision

To get a column from a 2D array:

```python
arr = np.array([[1, 2],
                [3, 4]])
col = arr[???, 1]  # [2, 4]
```

- `:`
- `*`
- `.`
- `all`