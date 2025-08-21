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

# Advanced Math Operations II

---

## Content

Here are some examples of how to use NumPy to perform advanced math operations on 2D arrays.

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

Calculate the growth rates of the following 2D array:

```python
sales = np.array([[100, 120, 130],    # Product A
                  [45, 50, 55],       # Product B
                  [80, 85, 82]])      # Product C

growth = np.???(np.???(np.???(sales))) - 1
```

- `exp`
- `log`
- `diff`

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
