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

# Common Math Operations

---

## Content

Here are some common math functions that you can use on NumPy arrays:

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

# Calculate the square root
sqrt = np.sqrt(rates)
# array([0.3873, 0.2828, 0.4690, 0.1732])
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
