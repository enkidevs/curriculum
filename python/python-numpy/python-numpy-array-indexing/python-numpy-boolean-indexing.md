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

Boolean indexing allows you to select elements based on conditions. It creates a mask of True/False values that filters the array.

```python
# Student grades array
grades = np.array([85, 90, 78, 92, 88, 75, 95])

# Create boolean mask for passing grades (>= 80)
passing_mask = grades >= 80  # [True, True, False, True, True, False, True]

# Use mask to get passing grades
passing_grades = grades[passing_mask]  # [85, 90, 92, 88, 95]

# Can also use condition directly
high_grades = grades[grades >= 90]  # [90, 92, 95]
```

Remember: The boolean mask must have the same shape as the array being indexed.

---
## Practice

Given this array of temperatures:
```python
temps = np.array([25, 28, 32, 30, 35, 27, 29])
```

Complete the following:
```python
# Get all temperatures above 30 degrees
hot_days = ???

# Get all temperatures between 25 and 30 (inclusive)
mild_days = ???
```

- `temps[temps > 30]`
- `temps[temps >= 30]`
- `temps[(temps >= 25) & (temps <= 30)]`
- `temps[temps > 25 & temps < 30]`
- `temps[(temps > 25) & (temps < 30)]`

---
## Revision

What will this code return?
```python
data = np.array([1, 5, 3, 8, 4, 2, 7])
print(data[data % 2 == 0])
```

???

- `[8, 4, 2]`
- `[1, 3, 7]`
- `[True, False, False, True, True, True, False]`
- `[2, 4, 8]`