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

Array elements can be accessed using the `[position]` syntax.

```python
grades = np.array([85, 90, 92, 88, 78, 95])

# Get the first element
first_element = grades[0]  # 85
```

In a 2-dimensional array, we can access elements using the `[row, column]` syntax.

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

---

## Practice

Get the element at position (1,2):

```python
arr = np.array([[1, 2, 3],
                [4, 5, 6]])
x = arr[???, ???]  # 6
```

???

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

???

- `:`
- `*`
- `.`
- `all`
