---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Logical Operations](https://numpy.org/doc/stable/reference/routines.logic.html#logical-operations){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Logical Operations

---

## Content

Combine conditions with logical operations:

```python
# Student test scores
scores = np.array([85, 92, 78, 95, 88])

# Check which scores are both:
# - Above 80 (passing)
# - Below 90 (not excellent)
good_scores = (scores > 80) & (scores < 90)
# array([True, False, False, False, True])

# Count how many good scores
print(np.sum(good_scores))
```

> 💡 Use parentheses around each condition when combining them!

More logical operations:

```python
# Check if score is very low OR very high
extreme = (scores < 80) | (scores > 90)
# array([False, True, True, True, False])

# Flip True/False values
not_extreme = ~extreme
# array([True, False, False, False, True])

# Check if ALL scores are passing
all_passed = np.all(scores >= 75)  # True

# Check if ANY score is perfect
any_perfect = np.any(scores == 100)  # False
```

> 💡 Use `&` for AND, `|` for OR, and `~` for NOT with arrays!

---

## Practice

Complete the code to perform an OR operation:

```python
x = np.array([True, False])
y = np.array([False, True])
result = x ??? y
```

- `|`
- `&`
- `or`
- `and`

---

## Revision

To negate all values in a boolean array, use:

???

- `~array`
- `-array`
- `!array`
- `not array`
