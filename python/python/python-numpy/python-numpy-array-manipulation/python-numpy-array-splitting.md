---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Splitting](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Splitting Arrays

---

## Content

Split arrays into parts:

```python
# Full year test scores
scores = np.array([85, 92, 78, 88, 95, 82])

# Split into semesters
sem1, sem2 = np.array_split(scores, 2)
# sem1: array([85, 92, 78])
# sem2: array([88, 95, 82])

# Split into quarters
q1, q2, q3, q4 = np.array_split(scores, 4)
# q1: array([85, 92])
# q2: array([78, 88])
# q3: array([95])
# q4: array([82])
```

> 💡 `array_split` handles arrays that don't divide evenly!


> 💡 Use `hsplit` for columns, `vsplit` for rows!

---

## Practice

Split this array in half:

```python
arr = np.array([1, 2, 3, 4])
x, y = np.???(arr, ???)
```

- `split`
- `2`
- `divide`
- `[2]`

---

## Revision

To split an array at position 3, use:

???

- `np.split(arr, [3])`
- `np.split(arr, 3)`
- `arr.split(3)`
- `arr.divide(3)`
