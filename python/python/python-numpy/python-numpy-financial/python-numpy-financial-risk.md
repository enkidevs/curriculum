---
author: enki-ai
type: normal
category: must-know
links:
  - >-
    [Risk Analysis](https://numpy.org/doc/stable/reference/routines.statistics.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Financial Risk

---

## Content

Analyze investment risk:

Value at Risk (VaR):

```python
# Calculate 95% VaR
returns = np.array([-0.02, 0.01, 0.03, -0.01])
var_95 = np.percentile(returns, 5)  # 95% VaR
```

> 💡 VaR shows potential loss at a confidence level!

Maximum drawdown:

```python
# Calculate maximum drawdown
prices = np.array([100, 95, 98, 92, 96])
peak = np.maximum.accumulate(prices)
drawdown = (peak - prices) / peak
max_drawdown = np.max(drawdown)
```

Beta calculation:

```python
# Market sensitivity
market_returns = np.array([0.01, -0.01, 0.02, -0.02])
stock_returns = np.array([0.02, -0.02, 0.03, -0.03])
beta = np.cov(stock_returns, market_returns)[0,1] / np.var(market_returns)
```

---

## Practice

Calculate maximum drawdown:

```python
peak = np.???.???(prices)
drawdown = (peak - prices) / ???
```

- `maximum`
- `accumulate`
- `peak`
- `max`
- `cummax`
- `prices`

---

## Revision

95% VaR is the:

???

- 5th percentile of returns
- 95th percentile of returns
- Mean of worst 5% returns
- Standard deviation of returns
