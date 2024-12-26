---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Statistical Operations](https://numpy.org/doc/stable/reference/routines.statistics.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Statistical Operations

---

## Content

Analyze data with statistical operations:

```python
# Student test scores
scores = np.array([85, 92, 78, 95, 88])

# Basic statistics
average = np.mean(scores)     # 87.6 (class average)
highest = np.max(scores)      # 95 (highest score)
lowest = np.min(scores)       # 78 (lowest score)
spread = np.std(scores)       # 6.58 (standard deviation)
```

> 💡 Statistical functions give you quick insights about your data!

Analyze 2D arrays:

```python
# Multiple test scores (rows: students, columns: tests)
class_scores = np.array([[85, 90, 88],    # Student 1
                        [92, 88, 95],     # Student 2
                        [78, 85, 80]])    # Student 3

# Average by student (axis 1)
student_avgs = np.mean(class_scores, axis=1)
# array([87.67, 91.67, 81.])

# Average by test (axis 0)
test_avgs = np.mean(class_scores, axis=0)
# array([85., 87.67, 87.67])
```

> 💡 Use `axis` parameter to specify which direction to analyze!

---

## Practice

Find the average value:

```python
arr = np.array([2, 4, 6, 8])
result = arr.???()
# 5.0
```

- `mean`
- `average`
- `med`
- `sum`

---

## Revision

To find the largest value in an array:

???

- `array.max()`
- `array.maximum()`
- `array.largest()`
- `array.big()`
