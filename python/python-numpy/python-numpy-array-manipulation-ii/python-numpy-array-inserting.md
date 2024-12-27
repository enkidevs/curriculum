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

To add a value into an array:

```python
arr = np.array([1, 2, 4])
new = np.???(???, ???, ???)
# array([1, 2, 3, 4])
```

- `insert`
- `arr`
- `2`
- `3`
- `add`
- `1`