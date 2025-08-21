---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Deletion](https://numpy.org/doc/stable/reference/generated/numpy.delete.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Deleting From Arrays

---

## Content

We can remove elements from arrays using the `delete` function.

```python
# Student test scores
scores = np.array([85, 92, 78, 90, 45])

# Remove outlier score
updated = np.delete(scores, 4)  # Remove index 4
# array([85, 92, 78, 90])

# Remove multiple scores
remove_indices = [0, 2]  # Remove first and third scores
selected = np.delete(scores, remove_indices)
# array([92, 90, 45])
```

> 💡 `delete` creates a new array - original stays unchanged!

---

## Practice

Remove the right element from the array:

```python
arr = np.array([1, 2, 3, 4])
new = np.???(arr, ???)
# array([1, 3, 4])
```

- `delete`
- `1`
- `remove`
- `2`

---

## Revision

To delete the 4th row from an array, use the ??? function with the ??? parameter set to ???.

- `delete`
- `index`
- `3`
- `axis`
- `4`
- `dim`
- `row`
- `remove`

