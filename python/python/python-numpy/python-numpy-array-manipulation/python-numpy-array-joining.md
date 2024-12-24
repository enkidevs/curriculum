---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Joining](https://numpy.org/doc/stable/reference/routines.array-manipulation.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Joining Arrays

---

## Content

Join arrays together:

```python
# Morning and afternoon class scores
morning = np.array([85, 92, 78])
afternoon = np.array([88, 95, 82])

# Combine all scores
all_scores = np.concatenate([morning, afternoon])
# array([85, 92, 78, 88, 95, 82])

# Join side by side (as columns)
comparison = np.column_stack([morning, afternoon])
# array([[85, 88],
#        [92, 95],
#        [78, 82]])
```

> 💡 `concatenate` joins arrays end-to-end, `column_stack` places them side by
> side!

Join 2D arrays:

```python
# First semester grades
sem1 = np.array([[85, 92],    # Student 1
                 [78, 85],    # Student 2
                 [90, 88]])   # Student 3

# Second semester grades
sem2 = np.array([[88, 95],    # Student 1
                 [82, 89],    # Student 2
                 [93, 91]])   # Student 3

# Join horizontally (add columns)
year = np.concatenate([sem1, sem2], axis=1)
# array([[85, 92, 88, 95],
#        [78, 85, 82, 89],
#        [90, 88, 93, 91]])
```

---

## Practice

Join these arrays:

```python
x = np.array([1, 2])
y = np.array([3, 4])
result = np.???(???)
# array([1, 2, 3, 4])
```

- `concatenate`
- `[x, y]`
- `join`
- `merge`

---

## Revision

To join arrays by taking each element side by side, use:

```python
morning = np.array([85, 92, 78])
afternoon = np.array([88, 95, 82])
np.???([morning, afternoon])
# array([[85, 88],
#        [92, 95],
#        [78, 82]])
```

- `column_stack`
- `concatenate`
- `stack`
- `cstack`
