---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Boolean Indexing](https://numpy.org/doc/stable/user/basics.indexing.html#boolean-indexing){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Boolean Indexing

---

## Content

Use boolean conditions to filter arrays:

```python
# Student grades
grades = np.array([85, 90, 78, 92, 88, 75, 95])

# Find passing grades (>= 80)
passing = grades >= 80
print(passing)  # [True, True, False, True, True, False, True]

# Get only passing grades
passed = grades[passing]  # [85, 90, 92, 88, 95]
```

> 💡 Boolean indexing returns elements where the condition is True!

Combine conditions:

```python
# Temperature readings
temps = np.array([25, 28, 23, 30, 27, 32, 24])

# Find comfortable temperatures (between 24-28)
mask = (temps >= 24) & (temps <= 28)  # Use & for AND, | for OR
comfortable = temps[mask]  # [25, 28, 27, 24]

# Count hot days (>= 30)
hot_days = temps >= 30
hot_count = np.sum(hot_days)  # 2
```

> ⚠️ Use parentheses around each condition when combining them!

Filter 2D arrays:

```python
# Test scores (rows: students, columns: subjects)
scores = np.array([[85, 90, 88],    # Student 1
                  [92, 75, 85],     # Student 2
                  [78, 85, 90]])    # Student 3

# Find high scores (>= 90)
high_scores = scores >= 90
print(scores[high_scores])  # [90, 92, 90]

# Find students with all scores >= 85
good_students = np.all(scores >= 85, axis=1)
print(scores[good_students])  # [[85, 90, 88]]
``` 

---

## Practice

Get all numbers greater than 3:

```python
arr = np.array([1, 2, 3, 4, 5])
result = arr[arr ??? ???]
# [4, 5]
```

- `>`
- `3`
- `>=`
- `2`

---

## Revision

To combine conditions, use:

???

- `&`
- `and`
- `+`
- `|`
