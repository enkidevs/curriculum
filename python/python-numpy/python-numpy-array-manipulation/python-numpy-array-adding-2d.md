---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Adding](https://numpy.org/doc/stable/reference/generated/numpy.append.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Adding to 2D Arrays

---

## Content

Here's how to add to 2D arrays, either by adding columns or rows:

```python
# Class grades (rows: students, columns: tests)
class_grades = np.array([[85, 90],     # Student 1
                        [92, 88],      # Student 2
                        [78, 85]])     # Student 3

# Add new test scores (column)
new_test_column = np.array([[92],
                     [95],
                     [88]])
updated_columns = np.append(class_grades, new_test_column, axis=1)
# array([[85, 90, 92],
#        [92, 88, 95],
#        [78, 85, 88]])

# Add new test scores (row)
new_test_row = np.array([[92, 95, 88]])
updated_rows = np.append(class_grades, new_test_row, axis=0)
# array([[85, 90],
#        [92, 88],
#        [78, 85],
#        [92, 95]])
```

> 💡 Use `axis=1` to add columns, `axis=0` to add rows!

Keep in mind that dimensions must match:
- If you're adding a row, make sure the new row has the same number of columns as the original array.
- If you're adding a column, make sure the new column has the same number of rows as the original array.

---

## Practice

Add a new test score to the following 2D array:

```python
# Class grades (rows: students, columns: tests)
class_grades = np.array([[85, 90],     # Student 1
                        [92, 88],      # Student 2
                        [78, 85]])     # Student 3
new_test_column = np.array([[92],
                    [95],
                    [88]])   
updated = np.???(???, ???, ???)
```

- `append`
- `class_grades`
- `new_test_column`
- `axis=1`
- `axis=0`
- `join`
- `add`

---

## Revision

Add a new test score row to the following 2D array:

```python
# Class grades (rows: students, columns: tests)
class_grades = np.array([[85, 90],     # Student 1
                        [92, 88],      # Student 2
                        [78, 85]])     # Student 3
new_test_row = np.array([[92, 95, 88]])
updated = np.???(???, ???, ???)
```

- `append`
- `class_grades`
- `new_test_row`
- `axis=0`
- `axis=1`
- `join`
- `add`
