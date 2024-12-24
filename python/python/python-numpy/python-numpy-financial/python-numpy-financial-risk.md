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

# Financial Risk

---

## Content

Measure and analyze investment risk:

```python
# Daily stock returns
returns = np.array([
    0.015, -0.012, 0.008, -0.009, 0.014,  # Week 1
    -0.007, 0.012, -0.011, 0.009, 0.016   # Week 2
])

# 1. Volatility (standard deviation of returns)
volatility = np.std(returns, ddof=1)  # Sample std dev
annualized_vol = volatility * np.sqrt(252)  # Annualized
print(f"Annual volatility: {annualized_vol:.2%}")

# 2. Value at Risk (VaR)
confidence_level = 0.95
var_95 = np.percentile(returns, (1 - confidence_level) * 100)
print(f"95% VaR: {-var_95:.2%}")  # Potential loss
```

> 💡 VaR shows maximum likely loss at a confidence level!

Advanced risk metrics:

```python
# 3. Maximum drawdown
prices = 100 * np.cumprod(1 + returns)  # Convert returns to prices
peak = np.maximum.accumulate(prices)
drawdown = (peak - prices) / peak
max_drawdown = np.max(drawdown)
print(f"Maximum drawdown: {max_drawdown:.2%}")

# 4. Downside risk (semi-variance)
negative_returns = returns[returns < 0]
downside_risk = np.std(negative_returns, ddof=1)

# 5. Risk-adjusted return (Sharpe ratio)
risk_free_rate = 0.02 / 252  # Daily risk-free rate
excess_returns = returns - risk_free_rate
sharpe = np.mean(excess_returns) / np.std(excess_returns, ddof=1)
annualized_sharpe = sharpe * np.sqrt(252)
```

> 💡 Consider multiple risk metrics for a complete analysis!

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
