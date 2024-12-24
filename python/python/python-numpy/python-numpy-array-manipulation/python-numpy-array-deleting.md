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

# Deleting From Arrays

---

## Content

Remove elements from arrays:

```python
# Student test scores
scores = np.array([85, 92, 78, 90, 45])

# Remove outlier score
updated = np.delete(scores, 4)  # Remove index 4
# array([85, 92, 78, 90])

# Remove multiple scores
remove_indices = [0, 2]  # Remove first and third scores
selected = np.delete(scores, remove_indices)
# array([92, 90, 45])
```

> 💡 `delete` creates a new array - original stays unchanged!

Remove from 2D arrays:

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

Delete the right element from the array:

```python
arr = np.array([1, 2, 3, 4])
new = np.???(arr, ???)
# array([1, 3, 4])
```

- `delete`
- `1`
- `remove`
- `2`

---

## Revision

To delete a row from a 2D array:

```python
matrix = np.array([[1, 2], [3, 4]])
new = np.delete(matrix, 0, ???=0)
```

- `axis`
- `dim`
- `row`
- `index`
