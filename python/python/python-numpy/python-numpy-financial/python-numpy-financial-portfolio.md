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

# Portfolio Analysis

---

## Content

Analyze investment portfolios:

```python
# Portfolio of 3 stocks
prices = np.array([
    [100, 101, 99, 102, 98],   # Stock A
    [45, 47, 46, 48, 47],      # Stock B
    [75, 76, 73, 77, 76]       # Stock C
])

# 1. Calculate daily returns
returns = np.diff(prices, axis=1) / prices[:, :-1]

# 2. Portfolio weights (must sum to 1)
weights = np.array([0.4, 0.3, 0.3])  # 40%, 30%, 30%

# 3. Calculate portfolio returns
port_returns = np.sum(returns * weights.reshape(-1, 1), axis=0)
print(f"Average portfolio return: {port_returns.mean():.2%}")
```

> 💡 Portfolio diversification reduces risk!

Risk analysis:

```python
# Calculate portfolio risk
# 1. Covariance matrix of returns
cov_matrix = np.cov(returns)

# 2. Portfolio variance
port_var = weights @ cov_matrix @ weights
port_std = np.sqrt(port_var)  # Portfolio volatility
print(f"Portfolio volatility: {port_std:.2%}")

# 3. Generate random portfolios for optimization
n_portfolios = 1000
random_weights = np.random.random((n_portfolios, 3))
# Normalize to sum to 1
random_weights /= random_weights.sum(axis=1, keepdims=True)
```

> 💡 Use matrix operations for efficient portfolio calculations!

---

## Practice

Calculate portfolio return:

```python
w = np.array([0.5, 0.5])
r = np.array([[1, 2], [3, 4]])
ret = np.???(r * w, ???=1)
```

- `sum`
- `axis`
- `mean`
- `dim`

---

## Revision

Portfolio weights should:

???

- Sum to 1
- Be equal
- Be positive
- Be less than 1
