---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Slicing](https://numpy.org/doc/stable/user/basics.indexing.html#slicing-and-striding){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Array Slicing

---

## Content

Slice arrays to select ranges of elements:

```python
# Daily temperatures for a week
temps = np.array([25, 28, 23, 24, 27, 26, 22])

# Get workday temperatures (first 5 days)
workdays = temps[0:5]     # [25, 28, 23, 24, 27]

# Get weekend temperatures (last 2 days)
weekend = temps[-2:]      # [26, 22]

# Get every other day
alternate = temps[::2]    # [25, 23, 27, 22]
```

> 💡 Slice syntax: `array[start:stop:step]`, stop index not included!

Slice 2D arrays:

```python
# Student grades (rows: students, columns: tests)
grades = np.array([[85, 90, 88],    # Student 1
                  [92, 88, 95],     # Student 2
                  [78, 85, 80]])    # Student 3

# Get first two students' grades
top_students = grades[0:2]     # [[85, 90, 88],
                              #  [92, 88, 95]]

# Get all students' first two test scores
first_tests = grades[:, 0:2]   # [[85, 90],
                              #  [92, 88],
                              #  [78, 85]]
```

> 💡 Use `:` to select all elements in that dimension

---

## Practice

Get every third element:

```python
arr = np.array([1, 2, 3, 4, 5, 6])
result = arr[???:???:???]
# [1, 4]
```

- `0`
- `6`
- `3`
- `1`
- `2`
- `4`

---

## Revision

To get the first three elements:

```python
arr = np.array([1, 2, 3, 4, 5])
result = arr[???:???]
```

- `0`
- `3`
- `1`
- `4`
