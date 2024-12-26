---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Financial Statistics](https://numpy.org/doc/stable/reference/routines.statistics.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Financial Statistics

---

## Content

Analyze financial data statistically:

```python
# Monthly stock returns
returns = np.array([
    0.025, -0.015, 0.032, -0.008, 0.021, 0.018,  # First 6 months
    -0.012, 0.028, -0.007, 0.035, -0.014, 0.024  # Last 6 months
])

# 1. Basic statistics
mean_return = np.mean(returns)
median_return = np.median(returns)
std_return = np.std(returns, ddof=1)

# 2. Distribution analysis
skewness = np.mean(((returns - mean_return) / std_return) ** 3)
kurtosis = np.mean(((returns - mean_return) / std_return) ** 4) - 3
print(f"Skewness: {skewness:.2f}")  # Positive = right-tailed
print(f"Kurtosis: {kurtosis:.2f}")  # Positive = heavy-tailed
```

> 💡 Skewness and kurtosis help assess return distributions!

Performance metrics:

```python
# 3. Risk-adjusted metrics
risk_free = 0.02 / 12  # Monthly risk-free rate
excess = returns - risk_free

# Sharpe Ratio (annualized)
sharpe = np.sqrt(12) * np.mean(excess) / np.std(excess, ddof=1)

# Sortino Ratio (using downside deviation)
downside = returns[returns < risk_free] - risk_free
sortino = np.sqrt(12) * np.mean(excess) / np.std(downside, ddof=1)

# Information Ratio
benchmark = np.array([0.018, -0.012, 0.025, -0.005, 0.019, 0.015,
                     -0.008, 0.022, -0.004, 0.029, -0.011, 0.020])
tracking_error = np.std(returns - benchmark, ddof=1)
info_ratio = np.sqrt(12) * np.mean(returns - benchmark) / tracking_error
```

> 💡 Compare different metrics for comprehensive analysis!

---

## Practice

Calculate annualized volatility:

```python
daily_std = np.std(returns)
annual = daily_std * np.???(???)
```

- `sqrt`
- `252`
- `pow`
- `365`

---

## Revision

The Sharpe ratio uses:

???

- Standard deviation in denominator
- Mean return in denominator
- Sum of returns
- Product of returns
