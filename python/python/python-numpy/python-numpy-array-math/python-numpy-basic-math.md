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

Common math functions:

```python
# Growth rates (as decimals)
rates = np.array([0.15, -0.08, 0.22, -0.03])

# Get absolute values (ignore negative)
abs_rates = np.abs(rates)
# array([0.15, 0.08, 0.22, 0.03])

# Convert to percentages
percentages = rates * 100
# array([15., -8., 22., -3.])

# Square the values
squared = np.power(rates, 2)
# array([0.0225, 0.0064, 0.0484, 0.0009])
```

> 💡 Use NumPy functions for consistent results across arrays!

---

## Practice

Calculate the square root:

```python
arr = np.array([16, 25, 36])
result = np.???(arr)
# array([4., 5., 6.])
```

- `sqrt`
- `root`
- `square`
- `pow`

---

## Revision

To calculate powers, use:

???

- `np.power(arr, 2)`
- `arr.power(2)`
- `np.pow(2, arr)`
- `arr ** 2`
