---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Operations](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Data Grouping

---

## Content

Group and segment data:

Split by condition:

```python
# Split data into groups
data = np.array([1, 2, 3, 10, 20, 30])
low = data[data < 10]    # [1, 2, 3]
high = data[data >= 10]  # [10, 20, 30]
```

> 💡 Boolean masks are great for grouping data!

Group by indices:

```python
# Group using index arrays
indices = np.array([0, 0, 1, 1, 2, 2])
for i in range(3):
    group = data[indices == i]
    print(f"Group {i}:", group)
```

Unique values:

```python
# Find unique categories
categories = np.array(['A', 'B', 'A', 'C'])
unique = np.unique(categories)  # ['A', 'B', 'C']
counts = np.bincount(indices)   # Count occurrences
```

---

## Practice

Group values above threshold:

```python
data = np.array([1, 5, 2, 6])
high = data[data ??? ???]
```

- `>`
- `5`
- `>=`
- `4`

---

## Revision

To find unique values in array:

???

- `np.unique(arr)`
- `arr.unique()`
- `np.distinct(arr)`
- `arr.distinct()`
