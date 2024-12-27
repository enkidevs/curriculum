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

# Rounding Methods

---

## Content

Besides `floor` and `ceil`, you can also use `round` to round to a specific
number of decimal places.

```python
# Product prices with tax
prices = np.array([19.99, 45.25, 27.50, 89.99])
tax = 0.08  # 8% tax

# Calculate total with tax
totals = prices * (1 + tax)
# array([21.5892, 48.87, 29.7, 97.1892])

# Round to nearest cent
final = np.round(totals, decimals=2)
# array([21.59, 48.87, 29.70, 97.19])
```

> 💡 Use `decimals` parameter to control decimal places!

---

## Practice

Round these prices to one decimal place:

```python
prices = np.array([19.987, 45.255])
result = np.???(prices, ???=1)
# array([20.0, 45.3])
```

- `round`
- `decimals`
- `floor`
- `precision`

---

## Revision

Complete the code to round these tax calculations to two decimal places:

```python
prices = np.array([10.99, 24.50])
tax = 0.06  # 6% tax
totals = prices * (1 + tax)
final = np.???(totals, ???=???)
# array([11.65, 25.97])
```

- `round`
- `decimals`
- `2`
- `floor`
- `precision`
- `0`
