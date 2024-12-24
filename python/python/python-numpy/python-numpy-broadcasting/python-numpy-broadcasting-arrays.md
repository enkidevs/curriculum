---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Array Broadcasting](https://numpy.org/doc/stable/user/basics.broadcasting.html#broadcastable-arrays){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Broadcasting Arrays

---

## Content

Broadcasting lets NumPy perform operations between arrays of different shapes:

```python
# Single value with array (broadcasting)
prices = np.array([10, 20, 30])
tax_rate = 0.08

# NumPy "broadcasts" 0.08 to match prices shape:
# [10, 20, 30] * [0.08, 0.08, 0.08]
tax_amounts = prices * tax_rate
# array([0.8, 1.6, 2.4])
```

> 💡 Broadcasting automatically repeats the smaller array to match the larger
> one!

Apply operations across arrays efficiently:

```python
# Sales data (units sold per day)
sales = np.array([120, 145, 135, 160, 180])

# Calculate revenue (price = $29.99)
# Broadcasting: [120, 145, 135, 160, 180] * [29.99, 29.99, 29.99, 29.99, 29.99]
revenue = sales * 29.99
# array([3598.8, 4348.55, 4048.65, 4798.4, 5398.2])

# Apply 10% discount
# Broadcasting: revenue * [0.9, 0.9, 0.9, 0.9, 0.9]
discounted = revenue * 0.9
# array([3238.92, 3913.69, 3643.78, 4318.56, 4858.38])
```

Common broadcasting patterns:

```python
# Scale values (convert kg to pounds)
weights_kg = np.array([70, 75, 82])
# Broadcasting: [70, 75, 82] * [2.20462, 2.20462, 2.20462]
weights_lb = weights_kg * 2.20462
# array([154.32, 165.35, 180.78])

# Add offset (convert Celsius to Fahrenheit)
temps_c = np.array([20, 25, 30])
# Broadcasting happens twice:
# 1. [20, 25, 30] * [1.8, 1.8, 1.8]
# 2. result + [32, 32, 32]
temps_f = (temps_c * 1.8) + 32
# array([68., 77., 86.])
```

> 💡 Without broadcasting, you'd need explicit loops to repeat values!

---

## Practice

Convert kilometers to miles:

```python
km = np.array([10, 20, 30])
miles = km * ???
```

- `0.621371`
- `1.60934`
- `1000`
- `0.001`

---

## Revision

Broadcasting is useful for:

???

- Avoiding loops
- Saving memory
- Sorting arrays
- Combining arrays
