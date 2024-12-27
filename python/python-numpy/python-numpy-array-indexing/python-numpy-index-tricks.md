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

# Index Tricks

---

## Content

NumPy provides useful shortcuts for indexing:

```python
# Test scores for a class
scores = np.array([85, 92, 78, 95, 88, 90])

# Get last three scores
recent = scores[-3:]      # [95, 88, 90]

# Get scores in reverse order
reverse = scores[::-1]    # [90, 88, 95, 78, 92, 85]

# Get every second score
alternate = scores[::2]   # [85, 78, 88]
```

> 💡 Remember: negative indices count from the end: -1 is last element!

---

## Practice

Get every third element from the end:

```python
arr = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
result = arr[???]
# [10, 7, 4, 1]
```

- `::-3`
- `-3::-3`
- `-3::-2`
- `-3::-1`

---

## Revision

To reverse an array:

```python
arr = np.array([1, 2, 3])
result = arr[???]
```

- `::-1`
- `-1:`
- `::-2`
- `:-1`
