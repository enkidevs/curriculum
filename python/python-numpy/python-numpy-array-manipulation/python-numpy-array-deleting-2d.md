---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Deletion](https://numpy.org/doc/stable/reference/generated/numpy.delete.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deleting From 2D Arrays

---

## Content

Here's how to remove elements from 2D arrays:

```python
# Class grades (rows: students, columns: tests)
grades = np.array([[85, 90, 75],    # Student 1
                  [92, 88, 95],     # Student 2
                  [78, 85, 80]])    # Student 3

# Remove a test column (axis=1)
remove_test = np.delete(grades, 1, axis=1)
# array([[85, 75],
#        [92, 95],
#        [78, 80]])

# Remove a student row (axis=0)
remove_student = np.delete(grades, 0, axis=0)
# array([[92, 88, 95],
#        [78, 85, 80]])
```

> 💡 Specify axis to remove rows (0) or columns (1)!

---

## Practice

Remove the 2nd column from the array:

```python
matrix = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
new = np.???(matrix, ???, ???)
# array([[1, 3],
#        [4, 6],
#        [7, 9]])
```

- `delete`
- `1`
- `axis=1`
- `0`
- `axis=0`

---

## Revision

To delete the 3rd row from a 2D array:

```python
matrix = np.array([[1, 2], [3, 4], [5, 6], [7, 8]])
new = np.delete(matrix, ???, ???=???)
# array([[1, 2],
#        [3, 4],
#        [7, 8]])
```

- `2`
- `axis`
- `0`
- `dim`
- `row`
- `3`
- `index`
