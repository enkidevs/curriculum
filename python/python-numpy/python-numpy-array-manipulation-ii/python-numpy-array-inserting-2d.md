---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Insertion](https://numpy.org/doc/stable/reference/generated/numpy.insert.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Inserting Into Arrays

---

## Content

Insert elements at specific positions:

```python
# Student test scores
scores = np.array([85, 92, 78, 90])

# Insert makeup test score after second test
updated = np.insert(scores, 2, 88)
# array([85, 92, 88, 78, 90])

# Insert multiple scores
new_scores = np.array([95, 89])
positions = [1, 3]
all_scores = np.insert(scores, positions, new_scores)
# array([85, 95, 92, 89, 78, 90])
```

> 💡 `insert` places elements before the specified index!

Insert into 2D arrays:

```python
# Class grades (rows: students, columns: tests)
grades = np.array([[85, 90],     # Student 1
                  [92, 88],     # Student 2
                  [78, 85]])    # Student 3

# Insert midterm scores (new column)
midterms = np.array([87, 91, 82])
with_midterm = np.insert(grades, 1, midterms, axis=1)
# array([[85, 87, 90],
#        [92, 91, 88],
#        [78, 82, 85]])

# Add transfer student (new row)
new_student = np.array([95, 93])
updated_class = np.insert(grades, 1, new_student, axis=0)
# array([[85, 90],
#        [95, 93],
#        [92, 88],
#        [78, 85]])
```

> 💡 Use axis=1 for columns, axis=0 for rows!

---

## Practice

Insert a value into the array:

```python
arr = np.array([1, 2, 4])
new = np.???(arr, ???, 3)
# array([1, 2, 3, 4])
```

- `insert`
- `2`
- `add`
- `3`

---

## Revision

To insert a row in a 2D array:

```python
matrix = np.array([[1, 2], [5, 6]])
new = np.insert(matrix, 1, [3, 4], ???=0)
```

- `axis`
- `dim`
- `row`
- `pos`
