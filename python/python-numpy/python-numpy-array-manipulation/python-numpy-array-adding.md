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

# Adding to Arrays

---

## Content

Add elements to arrays:

```python
# Student grades throughout semester
grades = np.array([85, 92, 78, 90])

# Add a new test score
updated = np.append(grades, 88)
# array([85, 92, 78, 90, 88])

# Add multiple scores
more_scores = np.array([95, 89])
all_grades = np.append(grades, more_scores)
# array([85, 92, 78, 90, 95, 89])
```

> 💡 `append` creates a new array - original stays unchanged!

---

## Practice

Add a new element to the array:

```python
arr = np.array([1, 2, 3])
new = np.???(arr, ???)
# array([1, 2, 3, 4])
```

- `append`
- `4`
- `add`
- `push`

---

## Revision

To add a row to a 2D array, use:

```python
matrix = np.array([[1, 2]])
new = np.append(matrix, [[3, 4]], ???=0)
```

- `axis`
- `dim`
- `row`
- `direction`
