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

# Financial Returns

---

## Content

Calculate and analyze investment returns:

```python
# Stock price history (daily closing prices)
prices = np.array([
    150.25, 152.75, 151.50, 153.25, 155.00,  # Week 1
    154.50, 156.75, 153.25, 152.50, 157.25   # Week 2
])

# 1. Simple returns (percentage change)
simple_returns = np.diff(prices) / prices[:-1]
print(f"Daily returns: {simple_returns * 100:.2f}%")

# 2. Log returns (continuous compounding)
log_returns = np.log(prices[1:] / prices[:-1])
print(f"Average log return: {log_returns.mean():.2%}")

# 3. Cumulative returns
cumulative_simple = np.cumprod(1 + simple_returns) - 1
cumulative_log = np.exp(np.cumsum(log_returns)) - 1
```

> 💡 Log returns are better for longer time periods!

Return analysis:

```python
# Annualize returns (252 trading days)
trading_days = 252
annual_return = simple_returns.mean() * trading_days
annual_vol = simple_returns.std() * np.sqrt(trading_days)

# Calculate rolling returns
window = 5  # 5-day rolling return
rolling_returns = np.array([
    np.prod(1 + simple_returns[i:i+window]) - 1
    for i in range(len(simple_returns) - window + 1)
])
```

> 💡 Annualization helps compare different time periods!

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
