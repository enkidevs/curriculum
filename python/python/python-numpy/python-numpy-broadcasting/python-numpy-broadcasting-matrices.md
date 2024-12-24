---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Matrix Broadcasting](https://numpy.org/doc/stable/user/basics.broadcasting.html#broadcasting-arrays){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Broadcasting Matrices

---

## Content

Broadcasting works with 2D arrays (matrices):

```python
# Student test scores (rows: students, columns: tests)
scores = np.array([[85, 90, 88],    # Student 1
                   [92, 85, 95],    # Student 2
                   [78, 82, 80]])   # Student 3

# Add bonus points to all scores
bonus = 5
adjusted = scores + bonus
# Broadcasting: adds 5 to each element
# array([[90, 95, 93],
#        [97, 90, 100],
#        [83, 87, 85]])
```

> 💡 A single value is broadcast to all elements in the matrix!

Broadcasting with rows and columns:

```python
# Add different bonus per test
test_bonus = np.array([2, 5, 3])  # One value per column
# Broadcasting: repeats row vector for each student
scores_bonus = scores + test_bonus
# array([[87, 95, 91],
#        [94, 90, 98],
#        [80, 87, 83]])

# Apply student-specific multiplier
student_multiplier = np.array([[1.1],   # Student 1
                              [1.0],    # Student 2
                              [1.2]])   # Student 3
# Broadcasting: repeats column vector for each test
weighted = scores * student_multiplier
# array([[93.5, 99.0, 96.8],
#        [92.0, 85.0, 95.0],
#        [93.6, 98.4, 96.0]])
```

> 💡 Row vectors broadcast across rows, column vectors across columns!

---

## Practice

What's the result?

```python
m = np.array([[1, 2], [3, 4]])
v = np.array([10, 20])
r = m + v
# ???
```

- `[[11, 22], [13, 24]]`
- `[[11, 12], [23, 24]]`
- `Error`
- `[11, 22]`

---

## Revision

A row vector is broadcast to:

???

- Each row of the matrix
- Each column of the matrix
- The first row only
- The diagonal only
