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

# Comparison Operations

---

## Content

Compare arrays to find patterns:

```python
# Test scores from two classes
class_a = np.array([85, 92, 78, 95, 88])
class_b = np.array([88, 95, 80, 92, 85])

# Find matching scores
same_scores = class_a == class_b
# array([False, False, False, False, False])

# Find where class_a did better
better = class_a > class_b
# array([False, False, False, True, True])
```

> 💡 Comparisons return boolean arrays that you can use for filtering!

Compare with thresholds:

```python
scores = np.array([85, 92, 78, 95, 88])

# Check different grade levels
A_grade = scores >= 90  # array([False, True, False, True, False])
failing = scores < 80   # array([False, False, True, False, False])
```

> 💡 Use comparison results with boolean indexing to filter arrays!

---

## Practice

What's the result?

```python
a = np.array([1, 2, 3])
result = a <= 2
# ???
```

- `array([True, True, False])`
- `array([True, True, True])`
- `array([False, False, True])`
- `True`

---

## Revision

To check if elements are not equal, use:

```python
a = np.array([1, 2, 3])
b = np.array([1, 1, 1])
result = ???
```

- `a != b`
- `a <> b`
- `a not b`
- `a isnt b`
