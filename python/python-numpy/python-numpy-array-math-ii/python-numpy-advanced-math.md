---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Advanced Math](https://numpy.org/doc/stable/reference/routines.math.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Advanced Math Operations

---

## Content

NumPy lets us perform advanced math operations to analyze data.

```python
# Monthly investment returns (as decimals)
returns = np.array([0.05, 0.07, -0.02, 0.03])

# Calculate compound growth (1 + r)
factors = 1 + returns
# array([1.05, 1.07, 0.98, 1.03])

# Calculate cumulative return
cumulative = np.prod(factors) - 1  # 0.1331 (13.31%)

# Calculate log returns
log_returns = np.log(factors)
# array([0.0488, 0.0677, -0.0202, 0.0296])
```

> 💡 Log returns are often used in financial analysis!

Analyze 2D data:

```python
# Sales data (rows: products, columns: months)
sales = np.array([[100, 120, 130],    # Product A
                  [45, 50, 55],       # Product B
                  [80, 85, 82]])      # Product C

# Total sales per product
product_totals = np.sum(sales, axis=1)
# array([350, 150, 247])

# Monthly totals
monthly_totals = np.sum(sales, axis=0)
# array([225, 255, 267])

# Growth rates
growth = np.exp(np.diff(np.log(sales))) - 1
# array([[0.2, 0.0833],
#        [0.111, 0.1],
#        [0.0625, -0.0353]])
```

> 💡 Use `axis=0` for columns, `axis=1` for rows!

---

## Practice

Calculate the exponential:

```python
arr = np.array([0, 1])
result = np.???(arr)
# array([1., 2.71828])
```

- `exp`
- `exponential`
- `power`
- `e`

---

## Revision

To sum columns in a 2D array:

```python
arr = np.array([[1, 2], [3, 4]])
result = np.sum(arr, ???)
```

- `0`
- `1`
- `2`
- `axis=0`
