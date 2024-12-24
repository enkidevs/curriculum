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

# Arithmetic Operations

---

## Content

NumPy makes math operations simple and fast:

```python
# Calculate discounted prices
prices = np.array([100, 200, 300])
discount = 0.2  # 20% off

# Apply discount to all prices at once
discounted = prices * (1 - discount)
# array([80., 160., 240.])

# Add tax (15%)
final = discounted * 1.15
# array([92., 184., 276.])
```

> 💡 Operations work on all elements at once - no loops needed!

Combine arrays:

```python
# Combine product costs
materials = np.array([10, 15, 20])
labor = np.array([5, 8, 12])
overhead = np.array([2, 3, 4])

# Calculate total cost
total_cost = materials + labor + overhead
# array([17, 26, 36])

# Calculate profit margin (%)
price = np.array([25, 40, 55])
margin = (price - total_cost) / price * 100
# array([32., 35., 34.55])
```

> 💡 Use arithmetic operations on arrays just like you would with numbers.

---

## Practice

Calculate the result:

```python
a = np.array([2, 4, 6])
b = np.array([1, 2, 3])
result = a - b
# ???
```

- `array([1, 2, 3])`
- `array([3, 6, 9])`
- `array([2, 4, 6])`
- `array([1, 4, 9])`

---

## Revision

To multiply each element by 3, use:

```python
arr = np.array([1, 2, 3])
result = ???
```

- `arr * 3`
- `arr.multiply(3)`
- `3 * (arr)`
- `arr.times(3)`
