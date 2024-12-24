---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Rounding Functions](https://numpy.org/doc/stable/reference/routines.math.html#rounding){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Rounding Numbers

---

## Content

NumPy offers various rounding functions:

Round to nearest integer:

```python
arr = np.array([1.2, 2.7, 3.5])
rounded = np.round(arr)
# array([1., 3., 4.])
```

> 💡 .5 values are rounded to nearest even number!

Floor (round down):

```python
arr = np.array([1.7, 2.2, 3.9])
floor = np.floor(arr)
# array([1., 2., 3.])
```

Ceiling (round up):

```python
arr = np.array([1.1, 2.8, 3.2])
ceil = np.ceil(arr)
# array([2., 3., 4.])
```

Round financial calculations:

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

Different rounding methods:

```python
# Sales targets (in thousands)
targets = np.array([12.6, 15.2, 18.8, 20.1])

# Round down (floor)
min_targets = np.floor(targets)
# array([12., 15., 18., 20.])

# Round up (ceiling)
max_targets = np.ceil(targets)
# array([13., 16., 19., 21.])

# Round to nearest thousand
nearest = np.round(targets)
# array([13., 15., 19., 20.])
```

> 💡 `round` uses "round half to even" rule for .5 values!

---

## Practice

Round these numbers down:

```python
arr = np.array([1.9, 2.1])
result = np.???(arr)
# array([1., 2.])
```

- `floor`
- `round`
- `down`
- `ceil`

---

## Revision

To round up to nearest integer:

???

- `np.ceil(arr)`
- `np.ceiling(arr)`
- `np.up(arr)`
- `np.round_up(arr)`
