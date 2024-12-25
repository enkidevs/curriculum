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

# Slicing 2D Arrays

When slicing 2D arrays, you can slice along both dimensions using the format `array[row_slice, column_slice]`.

```python
# 2D array of student grades (rows=students, columns=subjects)
grades = np.array([[85, 90, 88, 92],
                  [78, 85, 80, 88],
                  [92, 95, 93, 98],
                  [88, 82, 85, 90]])

# Get first two students' grades for all subjects
first_two = grades[0:2]      # [[85, 90, 88, 92],
                            #  [78, 85, 80, 88]]

# Get all students' grades for middle two subjects
middle_subjects = grades[:, 1:3]  # [[90, 88],
                                 #  [85, 80],
                                 #  [95, 93],
                                 #  [82, 85]]

# Get a 2x2 subset from the middle
subset = grades[1:3, 1:3]    # [[85, 80],
                            #  [95, 93]]
```

> 💡 The comma separates row and column slices. Use `:` to select all elements in that dimension.

---

## Practice

Given this 2D array of daily temperatures:
```python
temps = np.array([[25, 28, 23, 24],
                  [22, 20, 21, 23],
                  [26, 24, 25, 27]])
```

Complete:
```python
# Get temperatures for first three days
first_three_days = ???

# Get all afternoon temperatures (middle column)
afternoon_temps = ???
```

- `temps[0:3]`
- `temps[:, 1:3]`
- `temps[0:3, 1:3]`
- `temps[0:3, 0:3]`

---

## Revision

What will this slice return?

```python
data = np.array([[1, 2, 3],
                 [4, 5, 6],
                 [7, 8, 9]])
print(data[::2, 1:])
```

- `[[2, 3], [5, 6], [8, 9]]`
- `[[2, 3], [5, 6]]`
- `[[2, 3], [5, 6], [8, 9]]`
- `[[2, 3], [5, 6]]`
