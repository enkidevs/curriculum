---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Mathematical Functions](https://numpy.org/doc/stable/reference/routines.math.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Basic Math Operations

---

## Content

Perform calculations on arrays:

```python
# Sales data (units sold per day)
sales = np.array([120, 145, 135, 160, 180])

# Calculate percentage of target (200 units)
target = 200
performance = (sales / target) * 100
# array([60., 72.5, 67.5, 80., 90.])

# Calculate difference from average
avg_sales = np.mean(sales)  # 148
difference = sales - avg_sales
# array([-28., -3., -13., 12., 32.])
```

> 💡 Operations apply to all elements automatically!

---

## Practice

Multiply each element by 2:

```python
arr = np.array([1, 2, 3])
result = ??? * ???
# array([2, 4, 6])
```

- `arr`
- `2`
- `np.multiply`
- `np.times`

---

## Revision

Subtract 5 from each element:

???

- `arr - 5`
- `np.subtract(5, arr)`
- `arr.minus(5)`
- `np.minus(arr, 5)`
