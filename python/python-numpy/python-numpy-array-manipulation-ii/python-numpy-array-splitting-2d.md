---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Splitting](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Splitting Arrays

---

## Content

When dealing with 2D arrays, you can split them into smaller arrays along a
specific axis. Here are some practical examples:

```python
# Student grades for different subjects
grades = np.array([
    [85, 92, 78, 90],  # Math scores
    [88, 95, 82, 87],  # Science scores
    [79, 85, 91, 88]   # History scores
])

# Split horizontally (by subjects)
math, science, history = np.split(grades, 3, axis=0)
# math:    array([[85, 92, 78, 90]])
# science: array([[88, 95, 82, 87]])
# history: array([[79, 85, 91, 88]])

# Split vertically (by quarters)
q1, q2, q3, q4 = np.split(grades, 4, axis=1)
# q1: array([[85], [88], [79]])  # First quarter
# q2: array([[92], [95], [85]])  # Second quarter
# q3: array([[78], [82], [91]])  # Third quarter
# q4: array([[90], [87], [88]])  # Fourth quarter

# Using array_split for uneven splits
first_half, second_half, extra = np.array_split(grades, 3, axis=1)
# Handles uneven divisions automatically!
```

> 💡 Use `axis=0` for horizontal splitting (rows) and `axis=1` for vertical
> splitting (columns).

---

## Practice

Split this 2D array into two equal parts horizontally (by rows):

```python
data = np.array([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [10, 11, 12]
])
top_half, bottom_half = np.???(data, ???, axis=???)
```

- `split`
- `2`
- `0`
- `divide`
- `1`
- `[2]`

---

## Revision

To split a 2D array vertically into three equal columns, use:

```python
data = np.array([[1, 2, 3], [4, 5, 6]])
col1, col2, col3 = ???
```

- `np.split(data, 3, axis=1)`
- `np.split(data, 3, axis=0)`
- `np.split(data, [3])`
- `data.split(3, axis=1)`
