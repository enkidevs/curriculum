---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Returns Analysis](https://numpy.org/doc/stable/reference/routines.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Financial Returns

---

## Content

Analyze investment returns:

Simple returns:

```python
# Calculate simple returns
prices = np.array([100, 105, 98, 103])
simple_returns = (prices[1:] - prices[:-1]) / prices[:-1]
```

> 💡 Simple returns are good for short periods!

Log returns:

```python
# Calculate logarithmic returns
log_returns = np.log(prices[1:] / prices[:-1])
# More suitable for longer periods
```

Cumulative returns:

```python
# Calculate cumulative returns
cumulative = np.cumprod(1 + simple_returns) - 1
print(f"Total return: {cumulative[-1]:.2%}")
```

---

## Practice

Calculate log returns:

```python
prices = np.array([10, 11, 10.5])
returns = np.???(prices[1:] ??? prices[:-1])
```

- `log`
- `/`
- `-`
- `ln`

---

## Revision

For cumulative returns, use:

???

- `np.cumprod(1 + returns) - 1`
- `np.cumsum(returns)`
- `np.prod(returns)`
- `np.sum(returns)`
