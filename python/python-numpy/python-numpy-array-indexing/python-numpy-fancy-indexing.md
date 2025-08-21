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

# Fancy Indexing

---

## Content

Use arrays of indices to select elements:

```python
# Student grades for different subjects
grades = np.array([85, 92, 77, 95, 88, 90])
#                 Math Sci Eng Art Hist Phys

# Get specific subjects (Math, Art, Phys)
subjects = [0, 3, 5]
selected = grades[subjects]  # [85, 95, 90]
```

> 💡 Fancy indexing lets you pick elements in any order!

Select from 2D arrays:

```python
# Test scores for 4 students, 3 tests each
results = np.array([[85, 90, 88],    # Student 1
                   [92, 88, 95],     # Student 2
                   [78, 85, 80],     # Student 3
                   [95, 92, 85]])    # Student 4

# Get specific scores (student 1/test 2, student 3/test 1)
students = [0, 2]
tests = [1, 0]
selected = results[students, tests]  # [90, 78]
```

> 💡 Use arrays of indices to select multiple elements efficiently!

---

## Practice

Get the 2nd and 4th elements:

```python
arr = np.array([10, 20, 30, 40])
result = arr[???]
# [20, 40]
```

- `[1, 3]`
- `[2, 4]`
- `[0, 2]`
- `[1:3]`

---

## Revision

To reorder array elements:

```python
arr = np.array([1, 2, 3])
result = arr[???]  # [3, 1, 2]
```

- `[2, 0, 1]`
- `[3, 1, 2]`
- `[-1, -3, -2]`
- `[1, 2, 0]`
