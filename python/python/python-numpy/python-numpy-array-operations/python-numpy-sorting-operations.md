---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Sorting Arrays](https://numpy.org/doc/stable/reference/generated/numpy.sort.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Sorting Arrays

---

## Content

Sort arrays in different ways:

Sort in ascending order:

```python
# Student test scores
scores = np.array([85, 92, 78, 95, 88])

# Get sorted scores (creates new array)
ranked = np.sort(scores)
# array([78, 85, 88, 92, 95])

# Sort in descending order
top_down = np.sort(scores)[::-1]
# array([95, 92, 88, 85, 78])
```

> 💡 `np.sort()` returns a new sorted array, original stays unchanged!

Find ranking positions:

```python
# Get positions that would sort array
rank = np.argsort(scores)
# array([2, 0, 4, 1, 3])  # Positions for ascending order

# Use positions to get student ranks
student_ids = np.array(['A', 'B', 'C', 'D', 'E'])
ranked_students = student_ids[rank]
# array(['C', 'A', 'E', 'B', 'D'])
```

> 💡 Use `argsort()` to find out where elements would be in sorted order!

---

## Practice

Sort this array:

```python
arr = np.array([5, 2, 8, 1])
result = ???(arr)
# array([1, 2, 5, 8])
```

- `np.sort`
- `sort`
- `sorted`
- `order`

---

## Revision

To modify the original array when sorting:

```python
arr = np.array([3, 1, 2])
???
```

- `arr.sort()`
- `np.sort(arr)`
- `sorted(arr)`
- `arr.order()`
