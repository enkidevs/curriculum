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

# Basic Array Operations

---

## Content

NumPy makes math operations super easy!

Basic math on entire arrays:

```python
prices = np.array([10, 20, 30])

# Subtract 5 from all prices
sale_prices = prices - 5     # array([5, 15, 25])

# Calculate 20% discount
discount = prices * 0.2      # array([2., 4., 6.])
final = prices - discount    # array([8., 16., 24.])
```

> 💡 NumPy operations work on the entire array at once!

---

## Practice

What's the output of this code?

```python
arr = np.array([1, 2, 3])
result = arr + 5
# ???
```

- `array([6, 7, 8])`
- `[6, 7, 8]`
- `15`
- `array([5, 5, 5])`

---

## Revision

What's the output of this code?

```python
arr = np.array([1, 2, 3])
result = arr * 2
# ???
```

- `array([2, 4, 6])`
- `[2, 4, 6]`
- `array([1, 2, 3, 2, 4, 6])`
- `array([2, 4, 6, 2, 4, 6])`
