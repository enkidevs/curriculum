---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Financial Functions](https://numpy.org/doc/stable/reference/routines.financial.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Financial Basics

---

## Content

Work with financial data:

Price changes:

```python
# Calculate daily returns
prices = np.array([100, 102, 101, 103, 102])
returns = np.diff(prices) / prices[:-1]
print(returns)  # [0.02, -0.01, 0.02, -0.01]
```

> 💡 Returns show percentage changes in value!

Moving averages:

```python
# 3-day moving average
window = 3
weights = np.ones(window) / window
ma = np.convolve(prices, weights, mode='valid')
```

Compound growth:

```python
# Calculate compound growth
initial = 1000
rate = 0.05  # 5% annual growth
years = np.array([1, 2, 3, 4, 5])
value = initial * (1 + rate) ** years
```

---

## Practice

Calculate percentage changes:

```python
prices = np.array([10, 11, 10.5])
changes = np.???(prices) / prices[???]
```

- `diff`
- `:-1`
- `changes`
- `1:`

---

## Revision

For a 5-day moving average, use weights:

```python
w = np.???(???) / ???
```

- `ones`
- `5`
- `5`
- `zeros`
- `mean`
- `3`
